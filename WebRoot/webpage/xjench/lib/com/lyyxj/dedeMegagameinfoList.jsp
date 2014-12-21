<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="dedeMegagameinfoList" title="大赛通知" actionUrl="dedeMegagameinfoController.do?datagrid" idField="id" fit="true">
   <t:dgCol title="编号" field="id" hidden="false"></t:dgCol>
   <t:dgCol title="名字" field="name" ></t:dgCol>
   <t:dgCol title="视频链接" field="videosrc" ></t:dgCol>
   <t:dgCol title="封面图链接" field="img" imageSize="90,90"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="dedeMegagameinfoController.do?del&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="dedeMegagameinfoController.do?addorupdate" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="dedeMegagameinfoController.do?addorupdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="dedeMegagameinfoController.do?addorupdate" funname="detail"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>