<%@taglib  uri="/struts-tags" prefix="s" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
        <meta name="viewport" content="width=device-width, initial-scale=1"> 
        <title>Off-Canvas Menu Effects - Top Side</title>
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
        <link rel="stylesheet" type="text/css" href="css/menu_topside.css" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">


    </head>
    <body>
        <div class="container-fluid">
            <div class="menu-wrap">
                <nav class="menu-top">
                    <div class="profile"><span>
                            <s:property value="employee.getFirstname()"/></span></div>
                    <div class="icon-list">
                        <a href="#"><i class="fa fa-fw fa-star-o"></i></a>
                        <a href="#"><i class="fa fa-fw fa-bell-o"></i></a>
                        <a href="#"><i class="fa fa-fw fa-envelope-o"></i></a>
                        <a href="#"><i class="fa fa-fw fa-comment-o"></i></a>
                    </div>
                </nav>
                <nav class="menu-side">
                    <a href="Insert1.jsp">Agregar usuario</a>
                    <a href="#">Cerrar secion</a>

                </nav>
            </div>
            <button class="menu-button btn" id="open-button">Open Menu</button>
            <div class="content-wrap">
                <div class="content">
                    <header class="codrops-header">
                        <h1>Bienvenido <s:property value="sid"/></h1>
                    </header>
                    <section class="related">
                        <br/>
                        <h1>
                            Administradores
                        </h1>
                        <div class="row">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>SID</th>
                                        <th>Nombre</th>
                                        <th>Apellido</th>
                                        <th>Actualizar</th>
                                        <th>Eliminar</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <s:iterator value="lista1">
                                        <s:url action="Update2.action" var="url1">
                                            <s:param name="id">
                                                <s:property value="sid" />
                                            </s:param>
                                        </s:url>
                                        <s:url action="deleteuser.action" var="url">
                                            <s:param name="id">
                                                <s:property value="sid" />
                                            </s:param>
                                        </s:url>
                                        <tr>
                                            <s:if test="%{tipousuario == 1}">
                                                <td><s:property value="sid" /></td>
                                                <td><s:property value="firstname" /></td>
                                                <td><s:property value="lastname" /></td>
                                                <td><a href="<s:property value="#url1" />"><i class="fa fa-pencil"></i></a> </td> 
                                                <td><a href="<s:property value="#url" />"><i class="fa fa-trash"></i></a> </td>
                                                    </s:if>
                                        </tr>
                                    </s:iterator>
                                </tbody>
                            </table>
                        </div>
                        <h1>
                            Maestros
                        </h1>
                        <div class="row">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>SID</th>
                                        <th>Nombre</th>
                                        <th>Apellido</th>
                                        <th>Actualizar</th>
                                        <th>Eliminar</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <s:iterator value="lista1">
                                        <s:url action="Update2.action" var="url1">
                                            <s:param name="id">
                                                <s:property value="sid" />
                                            </s:param>
                                        </s:url>
                                        <s:url action="deleteuser.action" var="url">
                                            <s:param name="id">
                                                <s:property value="sid" />
                                            </s:param>
                                        </s:url>
                                        <tr>
                                            <s:if test="%{tipousuario == 2}">
                                                <td><s:property value="sid" /></td>
                                                <td><s:property value="firstname" /></td>
                                                <td><s:property value="lastname" /></td>
                                                <td><a href="<s:property value="#url1" />"><i class="fa fa-pencil"></i></a> </td> 
                                                <td><a href="<s:property value="#url" />"><i class="fa fa-trash"></i></a> </td>
                                                    </s:if>
                                        </tr>
                                    </s:iterator>
                                </tbody>
                            </table>
                        </div>
                        <h1>
                            Estudiantes
                        </h1>
                        <div class="row">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>SID</th>
                                        <th>Nombre</th>
                                        <th>Apellido</th>
                                        <th>Actualizar</th>
                                        <th>Eliminar</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <s:iterator value="lista1">
                                        <s:url action="Update2.action" var="url1">
                                            <s:param name="id">
                                                <s:property value="sid" />
                                            </s:param>
                                        </s:url>
                                        <s:url action="deleteuser.action" var="url">
                                            <s:param name="id">
                                                <s:property value="sid" />
                                            </s:param>
                                        </s:url>
                                        <tr>
                                            <s:if test="%{tipousuario == 3}">
                                                <td><s:property value="sid" /></td>
                                                <td><s:property value="firstname" /></td>
                                                <td><s:property value="lastname" /></td>
                                                <td><a href="<s:property value="#url1" />"><i class="fa fa-pencil"></i></a> </td> 
                                                <td><a href="<s:property value="#url" />"><i class="fa fa-trash"></i></a> </td>
                                                    </s:if>
                                        </tr>
                                    </s:iterator>
                                </tbody>
                            </table>
                        </div>
                    </section>

                </div>
            </div>
        </div>
        <script src="js/classie.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>