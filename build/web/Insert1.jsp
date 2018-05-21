<%@taglib  uri="/struts-tags" prefix="s" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insertar</title>
    </head>
    <body>
        <s:iterator value="lista3"></s:iterator>
        <s:form action="Insertar" >
            <s:textfield name="sid" key="sid:"/>
            <s:textfield name="pw" key="Password:" /> 
            <s:textfield name="tipousuario" key="Tipo de Usuario:" />
            <s:textfield name="firstname" key="Nombre:" /> 
            <s:textfield name="lastname" key="Apellido:" /> 
            <s:submit value="Insertar" />
            <s:actionmessage  />
        </s:form>
    </body>
</html>

