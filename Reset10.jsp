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

//���I�ȃ��W�I�{�^���̃f�[�^�̐���
Map<String,String> kbnMap = new LinkedHashMap<String,String>();
kbnMap.put("Kbn", "01");
kbnMap.put("Kaisu", "21");
kbnMap.put("Name","����");

lstKbn.add(kbnMap);

kbnMap = new LinkedHashMap<String,String>();
kbnMap.put("Kbn", "02");
kbnMap.put("Kaisu", "31");
kbnMap.put("Name","�O��");

lstKbn.add(kbnMap);

request.setAttribute("recList",lstKbn);

%>
<%
String str="����e�N�j�J���Z���^�[";
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
<title>�X�V����Reset10.jsp</title>
</head>
<body>
<logic:iterate id="data" collection="<%= strArray %>" indexId="idx" >
  <bean:write name="idx" /> �@�F�@<bean:write name="data" /> <br>
</logic:iterate>
<html:form action="/form10" method="POST">
<%= str %>
<select id="osa" name="example">
  <option value="val01">�T���v��1</option>
  <option value="val02">�T���v��2</option>
</select>

<input type="button" onClick="doConfirm()" value="�A�z�z��">
<br>

<html:checkbox property="value">�`�F�b�N�{�b�N�X�T���v��1</html:checkbox>
<html:submit property="submit" value="���s" />
</html:form>

<html:form action="/reset10" method="POST">
<html:checkbox property="value">�`�F�b�N�{�b�N�X�T���v��2</html:checkbox>
<html:submit property="submit" value="���s" />
</html:form>

</body>
</html:html>
