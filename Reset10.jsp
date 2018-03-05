<%@ page contentType="text/html; charset=Shift_JIS"
         pageEncoding="Shift_JIS" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Arrays" %>
<%@page import="java.util.Enumeration" %>
<%@page import="java.util.HashMap" %>
<%@page import="java.util.LinkedHashMap" %>
<%@page import="java.util.LinkedList" %>
<%@page import="java.util.List" %>
<%@page import="java.util.Map" %>
<%
List<Map> lstKbn = new ArrayList<Map>();

//動的なラジオボタンのデータの生成
Map<String,String> kbnMap = new LinkedHashMap<String,String>();
kbnMap.put("Kbn", "01");
kbnMap.put("Kaisu", "21");
kbnMap.put("Name","仮払");

lstKbn.add(kbnMap);

kbnMap = new LinkedHashMap<String,String>();
kbnMap.put("Kbn", "02");
kbnMap.put("Kaisu", "31");
kbnMap.put("Name","前払");

lstKbn.add(kbnMap);

request.setAttribute("recList",lstKbn);

%>
<%
String str="自作テクニカルセンター";
%>

<%
String[] strArray = {"str1","str2","str3"};
%>
<script type="text/javascript">
var objSList = {};
var objJList = {};

<logic:iterate id="bbb" name="Form10" property="shList">
 objSList['<bean:write name="bbb" property="kbn" />'] = '<bean:write name="bbb" property="kaisu" />';
 //objJList[${requestScope.shList[0]["kbn"]}] = ${requestScope.shList[0]["kaisu"]};
//${requestScope.shList[0]["kbn"]}
 //objJList["${bbb.kbn}"] = "${bbb.kaisu}";


</logic:iterate>

//objSList['<c:out value="${obj.Kbn}" />']='Angie';

function doConfirm(){
   var sel = document.getElementById("osa");
   var val = sel.value;
   alert(objSList[val]);
   alert
}

</script>
<html:html locale="true">
<head>
<title>更新したReset10.jsp</title>
</head>
<body>
<logic:iterate id="data" collection="<%= strArray %>" indexId="idx" >
  <bean:write name="idx" /> 　：　<bean:write name="data" /> <br>
</logic:iterate>
<html:form action="/form10" method="POST">
<%= str %>
<select id="osa" name="example">
  <option value="val01">サンプル1</option>
  <option value="val02">サンプル2</option>
</select>

<input type="button" onClick="doConfirm()" value="連想配列">
<br>

<html:checkbox property="value">チェックボックスサンプル1</html:checkbox>
<html:submit property="submit" value="実行" />
</html:form>

<html:form action="/reset10" method="POST">
<html:checkbox property="value">チェックボックスサンプル2</html:checkbox>
<html:submit property="submit" value="実行" />
</html:form>

</body>
</html:html>
