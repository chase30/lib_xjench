<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>视频集合</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
 </head>
 <body style="overflow-y: hidden" scroll="no">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="dedeAddonarticleController.do?save">
			<input id="id" name="id" type="hidden" value="${dedeAddonarticlePage.id }">
			<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							视频id:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="aid" name="aid" 
							   value="${dedeAddonarticlePage.aid}" datatype="n">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							typeid:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="typeid" name="typeid" 
							   value="${dedeAddonarticlePage.typeid}" datatype="n">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							body:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="body" name="body" ignore="ignore"
							   value="${dedeAddonarticlePage.body}">
						<span class="Validform_checktip"></span>
					</td>
				</tr>
			</table>
		</t:formvalid>
 </body>