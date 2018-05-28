<%@taglib  uri="/struts-tags" prefix="s" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>modificar</title>
    </head>
    <body>
        <s:iterator value="lista3"></s:iterator>
        <s:set var="myVar"><s:property value="sid"/></s:set>

        <s:form action="actualizar">
            <s:property value="sid"/>
            <s:textfield name="sid" value="%{#myVar}" style="display:none;" />
            <s:textfield name="sid" key="sid:" value="%{#myVar}" disabled="true" />
            <s:textfield name="pw"  key="Password:" value="%{pw}" /> 
            <s:textfield name="tipousuario" key="Tipo de Usuario:" value="%{tipousuario}"/>
            <s:textfield name="firstname" key="Nombre:" value="%{firstname}"/> 
            <s:textfield name="lastname" key="Apellido:" value="%{lastname}"/> 
            <s:submit value="Actualizar" />
            <s:actionmessage  />
        </s:form>

    </body>
</html>

