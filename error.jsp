<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>

<html:html>
<head><title>�G���[���</title></head>
<body>

�G���[���b�Z�[�W
<br>
<%-- <html:messages>�^�O�ŃG���[���b�Z�[�W��\�����܂��B�G���[���b�Z�[�W��\������Ƃ���message������false�ɂ��܂��B --%>
<html:messages id="msg" message="false">
    <%-- filter������false�ɂ��邱�ƂŃ��b�Z�[�W��HTML�^�O�𗘗p�ł��܂��Btrue�ɂ����HTML�^�O���������ꍇ�u�������i<�A>�Ȃǁj�ɕϊ����܂��B --%>
    <bean:write name="msg" ignore="true" filter="false"/>
</html:messages>
<div>
<html:errors/>
</div>
</body>
</html:html>