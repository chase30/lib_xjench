<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>图片</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
 </head>
 <body style="overflow-y: hidden" scroll="no">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="dedeUploadsController.do?save">
			<input id="id" name="id" type="hidden" value="${dedeUploadsPage.id }">
			<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							aid:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="aid" name="aid" 
							   value="${dedeUploadsPage.aid}" datatype="n">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							arcid:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="arcid" name="arcid" 
							   value="${dedeUploadsPage.arcid}" datatype="n">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							title:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="title" name="title" 
							   value="${dedeUploadsPage.title}" datatype="*">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							url:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="url" name="url" 
							   value="${dedeUploadsPage.url}" datatype="*">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
			</table>
		</t:formvalid>
 </body>