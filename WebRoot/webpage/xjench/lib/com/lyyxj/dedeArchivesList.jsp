<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="dedeArchivesList" title="封面图片" actionUrl="dedeArchivesController.do?datagrid" idField="id" fit="true">
   <t:dgCol title="编号" field="id" hidden="false"></t:dgCol>
   <t:dgCol title="typeid" field="typeid" ></t:dgCol>
   <t:dgCol title="时间顺序" field="sortrank" ></t:dgCol>
   <t:dgCol title="所属模型" field="channel" ></t:dgCol>
   <t:dgCol title="封面标题" field="title" ></t:dgCol>
   <t:dgCol title="封面路径" field="litpic" ></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="dedeArchivesController.do?del&id={id}" />
   <t:dgToolBar title="录入" icon="icon-add" url="dedeArchivesController.do?addorupdate" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="dedeArchivesController.do?addorupdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="dedeArchivesController.do?addorupdate" funname="detail"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>