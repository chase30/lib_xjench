<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="dedeUploadsList" title="图片" actionUrl="dedeUploadsController.do?datagrid" idField="id" fit="true">
   <t:dgCol title="编号" field="id" hidden="false"></t:dgCol>
   <t:dgCol title="aid" field="aid" ></t:dgCol>
   <t:dgCol title="arcid" field="arcid" ></t:dgCol>
   <t:dgCol title="title" field="title" ></t:dgCol>
   <t:dgCol title="url" field="url" ></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="dedeUploadsController.do?del&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="dedeUploadsController.do?addorupdate" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="dedeUploadsController.do?addorupdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="dedeUploadsController.do?addorupdate" funname="detail"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>