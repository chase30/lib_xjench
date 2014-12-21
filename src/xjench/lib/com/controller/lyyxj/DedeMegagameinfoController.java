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

import xjench.lib.com.entity.lyyxj.DedeMegagameinfoEntity;
import xjench.lib.com.service.lyyxj.DedeMegagameinfoServiceI;

/**   
 * @Title: Controller
 * @Description: 大赛通知
 * @author zhangdaihao
 * @date 2014-12-20 22:11:04
 * @version V1.0   
 *
 */
@Scope("prototype")
@Controller
@RequestMapping("/dedeMegagameinfoController")
public class DedeMegagameinfoController extends BaseController {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(DedeMegagameinfoController.class);

	@Autowired
	private DedeMegagameinfoServiceI dedeMegagameinfoService;
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
	 * 大赛通知列表 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "dedeMegagameinfo")
	public ModelAndView dedeMegagameinfo(HttpServletRequest request) {
		return new ModelAndView("xjench/lib/com/lyyxj/dedeMegagameinfoList");
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
	public void datagrid(DedeMegagameinfoEntity dedeMegagameinfo,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(DedeMegagameinfoEntity.class, dataGrid);
		//查询条件组装器
		org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, dedeMegagameinfo, request.getParameterMap());
		this.dedeMegagameinfoService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}

	/**
	 * 删除大赛通知
	 * 
	 * @return
	 */
	@RequestMapping(params = "del")
	@ResponseBody
	public AjaxJson del(DedeMegagameinfoEntity dedeMegagameinfo, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		dedeMegagameinfo = systemService.getEntity(DedeMegagameinfoEntity.class, dedeMegagameinfo.getId());
		message = "大赛通知删除成功";
		dedeMegagameinfoService.delete(dedeMegagameinfo);
		systemService.addLog(message, Globals.Log_Type_DEL, Globals.Log_Leavel_INFO);
		
		j.setMsg(message);
		return j;
	}


	/**
	 * 添加大赛通知
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(params = "save")
	@ResponseBody
	public AjaxJson save(DedeMegagameinfoEntity dedeMegagameinfo, HttpServletRequest request) {
		AjaxJson j = new AjaxJson();
		if (StringUtil.isNotEmpty(dedeMegagameinfo.getId())) {
			message = "大赛通知更新成功";
			DedeMegagameinfoEntity t = dedeMegagameinfoService.get(DedeMegagameinfoEntity.class, dedeMegagameinfo.getId());
			try {
				MyBeanUtils.copyBeanNotNull2Bean(dedeMegagameinfo, t);
				dedeMegagameinfoService.saveOrUpdate(t);
				systemService.addLog(message, Globals.Log_Type_UPDATE, Globals.Log_Leavel_INFO);
			} catch (Exception e) {
				e.printStackTrace();
				message = "大赛通知更新失败";
			}
		} else {
			message = "大赛通知添加成功";
			dedeMegagameinfoService.save(dedeMegagameinfo);
			systemService.addLog(message, Globals.Log_Type_INSERT, Globals.Log_Leavel_INFO);
		}
		j.setMsg(message);
		return j;
	}

	/**
	 * 大赛通知列表页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "addorupdate")
	public ModelAndView addorupdate(DedeMegagameinfoEntity dedeMegagameinfo, HttpServletRequest req) {
		if (StringUtil.isNotEmpty(dedeMegagameinfo.getId())) {
			dedeMegagameinfo = dedeMegagameinfoService.getEntity(DedeMegagameinfoEntity.class, dedeMegagameinfo.getId());
			req.setAttribute("dedeMegagameinfoPage", dedeMegagameinfo);
		}
		return new ModelAndView("xjench/lib/com/lyyxj/dedeMegagameinfo");
	}
}
