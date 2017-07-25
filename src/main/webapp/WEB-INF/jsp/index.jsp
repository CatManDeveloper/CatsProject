<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<%@ taglib prefix="tiles" uri="http://jakarta.apache.org/struts/tags-tiles" %>
<tiles:insert definition="main">
    <tiles:put name="data" type="string">
        <html:form action="/login">
            <div>
                <div><html:text property="login" title="login"/></div>
                <div><html:text property="password" title="password"/></div>
                <html:submit value="Login"/>
            </div>
        </html:form>

        <html:form action="/register">
            <html:submit value="Join"/>
        </html:form>
    </tiles:put>
</tiles:insert>