<%@taglib  uri="/struts-tags" prefix="s" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrator</title>
    </head>
    <style>
    table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
    }

    td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
    }

    tr:nth-child(even) {
    background-color: #dddddd;
    }
    </style>
    <body>
        <h1>Welcome Administrator</h1>
        <h1>Menu</h1>   
        <a href="http://localhost:8003/PROYECTO/Insert1.jsp" >Add users</a>  <br />
        <table>
            <tr>
                <th>SID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>   </th>
                <th>    </th>
            </tr>
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
            <td><s:property value="sid" /></td>
            <td><s:property value="firstname" /></td>
            <td><s:property value="lastname" /></td>
            <td><a href="<s:property value="#url1" />">Update</a> </td> 
            <td><a href="<s:property value="#url" />">Delete</a> </td>
            </tr>
        </s:iterator>
        
       
        </table>
                  
    </body>
</html>