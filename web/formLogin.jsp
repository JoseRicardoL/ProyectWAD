<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="no-js">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login</title>
        <link rel="stylesheet" type="text/css" href="login.css"/> 

    </head>
    <body>
        <div class="wrapper fadeInDown">
            <div id="formContent">
                <h2 class="active"> Sign In </h2>
                <div class="fadeIn first">
                    <img src="media/img/icon.svg" id="icon" alt="User Icon" />
                </div>
                <form action="Employee.action" method="post" validate="true">
                    <input type="text" name="sid" id="login" class="fadeIn second" placeholder="Username" />
                    <input type="password" name="pw" id="password" class="fadeIn third" placeholder="Password" />
		    <input type="submit" class="fadeIn fourth" value="Log In">
                </form>
            </div>
        </div>
    </body>
</html>

