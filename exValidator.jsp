<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<title>Validator����</title>
</head>
<body>
<html:form action="/ExValidator">
<div><html:errors/></div>
    ���͕K�{
    <br>
    <html:text property="requireV" size="16"/>
    <br><br>
    validwhen
    <br>
    <html:text property="validwhenV" size="16"/>
    <br><br>
    �������m�F
    <br>
    <html:text property="countV" size="16"/>
    <br><br>
    �p�^�[���m�F
    <br>
    <html:text property="patternV" size="16"/>
    <br><br>
    ���t�m�F
    <br>
    <html:text property="dateV" size="16"/>
    <br><br>
    �͈͊m�F
    <br>
    <html:text property="rangeV" size="16"/>
    <br><br>
    ���[���A�h���X�m�F
    <br>
    <html:text property="emailV" size="16"/>
    <br><br>
    <html:submit property="submit" value="���M"/>
</html:form>

</body>
</html:html>