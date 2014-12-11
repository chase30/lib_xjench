<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>封面图片</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
 </head>
 <body style="overflow-y: hidden" scroll="no">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="dedeArchivesController.do?save">
			<input id="id" name="id" type="hidden" value="${dedeArchivesPage.id }">
			<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							typeid:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="typeid" name="typeid" 
							   value="${dedeArchivesPage.typeid}" datatype="n">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							时间顺序:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="sortrank" name="sortrank" 
							   value="${dedeArchivesPage.sortrank}" datatype="n">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							所属模型:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="channel" name="channel" 
							   value="${dedeArchivesPage.channel}" datatype="n">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							封面标题:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="title" name="title" 
							   value="${dedeArchivesPage.title}" datatype="*">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							封面路径:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="litpic" name="litpic" 
							   value="${dedeArchivesPage.litpic}" datatype="*">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
			</table>
		</t:formvalid>
 </body>