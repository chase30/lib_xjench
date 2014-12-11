package xjench.lib.com.controller.lyyxj;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.json.AjaxJson;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.core.constant.Globals;
import org.jeecgframework.core.util.StringUtil;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.jeecgframework.web.system.pojo.base.TSDepart;
import org.jeecgframework.web.system.service.SystemService;
import org.jeecgframework.core.util.MyBeanUtils;

import xjench.lib.com.entity.lyyxj.DedeAddonarticleEntity;
import xjench.lib.com.service.lyyxj.DedeAddonarticleServiceI;

/**   
 * @Title: Controller
 * @Description: 视频集合
 * @author zhangdaihao
 * @date 2014-12-11 18:39:10
 * @version V1.0   
 *
 */
@Scope("prototype")
@Controller
@RequestMapping("/dedeAddonarticleController")
public class DedeAddonarticleController extends BaseController {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(DedeAddonarticleController.class);

	@Autowired
	private DedeAddonarticleServiceI dedeAddonarticleService;
	@Autowired
	private SystemService systemService;
	private String message;
	
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}


	/**
	 * 视频集合列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "dedeAddonarticle")
	public ModelAndView dedeAddonarticle(HttpServletRequest request) {
		return new ModelAndView("xjench/lib/com/lyyxj/dedeAddonarticleList");
	}

	/**
	 * easyui AJAX请求数据
	 * 
	 * @param request
	 * @param response
	 * @param dataGrid
	 * @param user
	 */

	@RequestMapping(params = "datagrid")
	public void datagrid(DedeAddonarticleEntity dedeAddonarticle,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(DedeAddonarticleEntity.class, dataGrid);
		//查询条件组装器
		org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, dedeAddonarticle, request.getParameterMap());
		this.dedeAddonarticleService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	/**
	 * 删除视频集合
	 * 
	 * @return
	 */
	@RequestMapping(params = "del")
	@ResponseBody
	public AjaxJson del(DedeAddonarticleEntity dedeAddonarticle, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		dedeAddonarticle = systemService.getEntity(DedeAddonarticleEntity.class, dedeAddonarticle.getId());
		message = "视频集合删除成功";
		dedeAddonarticleService.delete(dedeAddonarticle);
		systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		
		j.setMsg(message);
		return j;
	}


	/**
	 * 添加视频集合
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "save")
	@ResponseBody
	public AjaxJson save(DedeAddonarticleEntity dedeAddonarticle, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		if (StringUtil.isNotEmpty(dedeAddonarticle.getId())) {
			message = "视频集合更新成功";
			DedeAddonarticleEntity t = dedeAddonarticleService.get(DedeAddonarticleEntity.class, dedeAddonarticle.getId());
			try {
				MyBeanUtils.copyBeanNotNull2Bean(dedeAddonarticle, t);
				dedeAddonarticleService.saveOrUpdate(t);
				systemService.addLog(message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
			} catch (Exception e) {
				e.printStackTrace();
				message = "视频集合更新失败";
			}
		} else {
			message = "视频集合添加成功";
			dedeAddonarticleService.save(dedeAddonarticle);
			systemService.addLog(message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		}
		j.setMsg(message);
		return j;
	}

	/**
	 * 视频集合列表页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "addorupdate")
	public ModelAndView addorupdate(DedeAddonarticleEntity dedeAddonarticle, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(dedeAddonarticle.getId())) {
			dedeAddonarticle = dedeAddonarticleService.getEntity(DedeAddonarticleEntity.class, dedeAddonarticle.getId());
			req.setAttribute("dedeAddonarticlePage", dedeAddonarticle);
		}
		return new ModelAndView("xjench/lib/com/lyyxj/dedeAddonarticle");
	}
}
