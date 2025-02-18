﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <TITLE>添加客户</TITLE>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <LINK href="${pageContext.request.contextPath }/css/Style.css" type=text/css rel=stylesheet>
    <LINK href="${pageContext.request.contextPath }/css/Manage.css" type=text/css
          rel=stylesheet>
    <META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</HEAD>
<BODY>
<FORM id=form1 name=form1
      action="${pageContext.request.contextPath }/customer/CustomerAction_add.action"
      method=post>
    <TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
        <TBODY>
        <TR>
            <TD width=15><IMG src="${pageContext.request.contextPath }/images/new_019.jpg" border=0></TD>
            <TD width="100%" background="${pageContext.request.contextPath }/images/new_020.jpg"
                height=20></TD>
            <TD width=15><IMG src="${pageContext.request.contextPath }/images/new_021.jpg" border=0></TD>
        </TR>
        </TBODY>
    </TABLE>
    <TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
        <TBODY>
        <TR>
            <TD width=15 background=${pageContext.request.contextPath }/images/new_022.jpg><IMG
                    src="${pageContext.request.contextPath }/images/new_022.jpg" border=0></TD>
            <TD vAlign=top width="100%" bgColor=#ffffff>
                <TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
                    <TR>
                        <TD class=manageHead>当前位置：客户管理 &gt; 添加客户</TD>
                    </TR>
                    <TR>
                        <TD height=2></TD>
                    </TR>
                </TABLE>

                <TABLE cellSpacing=0 cellPadding=5 border=0>
                    <TR>
                        <td>客户名称：</td>
                        <td>
                            <INPUT class=textbox id=custName style="WIDTH: 180px" maxLength=50 name="customerName">
                        </td>
                        <td>客户级别 ：</td>
                        <td>
                            <INPUT class=textbox id=custLevel style="WIDTH: 180px" maxLength=50 name="customerLevel">
                        </td>
                    </TR>
                    <TR>
                        <td>信息来源 ：</td>
                        <td>
                            <INPUT class=textbox id=custSource style="WIDTH: 180px" maxLength=50 name="customerSource">
                        </td>
                        <td>联系人：</td>
                        <td>
                            <INPUT class=textbox id=custLinkman style="WIDTH: 180px" maxLength=50 name="customerLinkman">
                        </td>
                    </TR>
                    <TR>
                        <td>固定电话 ：</td>
                        <td>
                            <INPUT class=textbox id=custPhone style="WIDTH: 180px" maxLength=50 name="customerPhone">
                        </td>
                        <td>移动电话 ：</td>
                        <td>
                            <INPUT class=textbox id=custMobile style="WIDTH: 180px" maxLength=50 name="customerMobile">
                        </td>
                    </TR>
                    <TR>
                        <td>联系地址 ：</td>
                        <td>
                            <INPUT class=textbox id=custAddress style="WIDTH: 180px" maxLength=50 name="customerAddress">
                        </td>
                        <td>邮政编码 ：</td>
                        <td>
                            <INPUT class=textbox id=custZip style="WIDTH: 180px" maxLength=50 name="customerZip">
                        </td>
                    </TR>
                    <TR>
                        <td>客户传真 ：</td>
                        <td>
                            <INPUT class=textbox id=custFax style="WIDTH: 180px" maxLength=50 name="customerFax">
                        </td>
                        <td>客户网址 ：</td>
                        <td>
                            <INPUT class=textbox id=custWebsite style="WIDTH: 180px" maxLength=50 name="customerWebsite">
                        </td>
                    </TR>
                    <tr>
                        <td rowspan=2>
                            <INPUT class=button id=sButton2 type=submit value=" 保存 " name=sButton2>
                        </td>
                    </tr>
                </TABLE>
            </TD>
            <TD width=15 background="${pageContext.request.contextPath }/images/new_023.jpg">
                <IMG src="${pageContext.request.contextPath }/images/new_023.jpg" border=0></TD>
        </TR>
        </TBODY>
    </TABLE>
    <TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
        <TBODY>
        <TR>
            <TD width=15><IMG src="${pageContext.request.contextPath }/images/new_024.jpg" border=0></TD>
            <TD align=middle width="100%"
                background="${pageContext.request.contextPath }/images/new_025.jpg" height=15></TD>
            <TD width=15><IMG src="${pageContext.request.contextPath }/images/new_026.jpg" border=0></TD>
        </TR>
        </TBODY>
    </TABLE>
</FORM>
</BODY>
</HTML>
