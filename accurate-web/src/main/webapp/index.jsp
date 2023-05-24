<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<body>
<h2>Hello World</h2>
<s:property value="invoiceDo.totalInvoiceCount"/>
<s:form action="login" method="post">
   <s:iterator value="invoiceList">
    <s:property value="invoiceId"/>
    <s:property value="invoiceNo"/>
    </s:iterator>
   </s:form>
</body>
</html>
