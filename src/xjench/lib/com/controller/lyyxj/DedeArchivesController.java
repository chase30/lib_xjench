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

import xjench.lib.com.entity.lyyxj.DedeArchivesEntity;
import xjench.lib.com.service.lyyxj.DedeArchivesServiceI;

/**   
 * @Title: Controller
 * @Description: 封面图片
 * @author zhangdaihao
 * @date 2014-12-11 18:27:43
 * @version V1.0   
 *
 */
@Scope("prototype")
@Controller
@RequestMapping("/dedeArchivesController")
public class DedeArchivesController extends BaseController {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(DedeArchivesController.class);

	@Autowired
	private DedeArchivesServiceI dedeArchivesService;
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
	 * 封面图片列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "dedeArchives")
	public ModelAndView dedeArchives(HttpServletRequest request) {
		return new ModelAndView("xjench/lib/com/lyyxj/dedeArchivesList");
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
	public void datagrid(DedeArchivesEntity dedeArchives,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(DedeArchivesEntity.class, dataGrid);
		//查询条件组装器
		org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, dedeArchives, request.getParameterMap());
		this.dedeArchivesService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	/**
	 * 删除封面图片
	 * 
	 * @return
	 */
	@RequestMapping(params = "del")
	@ResponseBody
	public AjaxJson del(DedeArchivesEntity dedeArchives, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		dedeArchives = systemService.getEntity(DedeArchivesEntity.class, dedeArchives.getId());
		message = "封面图片删除成功";
		dedeArchivesService.delete(dedeArchives);
		systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		
		j.setMsg(message);
		return j;
	}


	/**
	 * 添加封面图片
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "save")
	@ResponseBody
	public AjaxJson save(DedeArchivesEntity dedeArchives, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		if (StringUtil.isNotEmpty(dedeArchives.getId())) {
			message = "封面图片更新成功";
			DedeArchivesEntity t = dedeArchivesService.get(DedeArchivesEntity.class, dedeArchives.getId());
			try {
				MyBeanUtils.copyBeanNotNull2Bean(dedeArchives, t);
				dedeArchivesService.saveOrUpdate(t);
				systemService.addLog(message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
			} catch (Exception e) {
				e.printStackTrace();
				message = "封面图片更新失败";
			}
		} else {
			message = "封面图片添加成功";
			dedeArchivesService.save(dedeArchives);
			systemService.addLog(message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		}
		j.setMsg(message);
		return j;
	}

	/**
	 * 封面图片列表页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "addorupdate")
	public ModelAndView addorupdate(DedeArchivesEntity dedeArchives, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(dedeArchives.getId())) {
			dedeArchives = dedeArchivesService.getEntity(DedeArchivesEntity.class, dedeArchives.getId());
			req.setAttribute("dedeArchivesPage", dedeArchives);
		}
		return new ModelAndView("xjench/lib/com/lyyxj/dedeArchives");
	}
}
