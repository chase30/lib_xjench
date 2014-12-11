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

import xjench.lib.com.entity.lyyxj.DedeUploadsEntity;
import xjench.lib.com.service.lyyxj.DedeUploadsServiceI;

/**   
 * @Title: Controller
 * @Description: 图片
 * @author zhangdaihao
 * @date 2014-12-11 18:34:53
 * @version V1.0   
 *
 */
@Scope("prototype")
@Controller
@RequestMapping("/dedeUploadsController")
public class DedeUploadsController extends BaseController {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(DedeUploadsController.class);

	@Autowired
	private DedeUploadsServiceI dedeUploadsService;
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
	 * 图片列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "dedeUploads")
	public ModelAndView dedeUploads(HttpServletRequest request) {
		return new ModelAndView("xjench/lib/com/lyyxj/dedeUploadsList");
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
	public void datagrid(DedeUploadsEntity dedeUploads,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(DedeUploadsEntity.class, dataGrid);
		//查询条件组装器
		org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, dedeUploads, request.getParameterMap());
		this.dedeUploadsService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	/**
	 * 删除图片
	 * 
	 * @return
	 */
	@RequestMapping(params = "del")
	@ResponseBody
	public AjaxJson del(DedeUploadsEntity dedeUploads, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		dedeUploads = systemService.getEntity(DedeUploadsEntity.class, dedeUploads.getAid());
		message = "图片删除成功";
		dedeUploadsService.delete(dedeUploads);
		systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		
		j.setMsg(message);
		return j;
	}


	/**
	 * 添加图片
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "save")
	@ResponseBody
	public AjaxJson save(DedeUploadsEntity dedeUploads, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		if (StringUtil.isNotEmpty(dedeUploads.getAid())) {
			message = "图片更新成功";
			DedeUploadsEntity t = dedeUploadsService.get(DedeUploadsEntity.class, dedeUploads.getAid());
			try {
				MyBeanUtils.copyBeanNotNull2Bean(dedeUploads, t);
				dedeUploadsService.saveOrUpdate(t);
				systemService.addLog(message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
			} catch (Exception e) {
				e.printStackTrace();
				message = "图片更新失败";
			}
		} else {
			message = "图片添加成功";
			dedeUploadsService.save(dedeUploads);
			systemService.addLog(message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		}
		j.setMsg(message);
		return j;
	}

	/**
	 * 图片列表页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "addorupdate")
	public ModelAndView addorupdate(DedeUploadsEntity dedeUploads, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(dedeUploads.getAid())) {
			dedeUploads = dedeUploadsService.getEntity(DedeUploadsEntity.class, dedeUploads.getAid());
			req.setAttribute("dedeUploadsPage", dedeUploads);
		}
		return new ModelAndView("xjench/lib/com/lyyxj/dedeUploads");
	}
}
