<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>

<html:html>
<head><title>エラー画面</title></head>
<body>

エラーメッセージ
<br>
<%-- <html:messages>タグでエラーメッセージを表示します。エラーメッセージを表示するときはmessage属性をfalseにします。 --%>
<html:messages id="msg" message="false">
    <%-- filter属性をfalseにすることでメッセージにHTMLタグを利用できます。trueにするとHTMLタグがあった場合置換文字（<、>など）に変換します。 --%>
    <bean:write name="msg" ignore="true" filter="false"/>
</html:messages>
<div>
<html:errors/>
</div>
</body>
</html:html>