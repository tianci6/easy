<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>welcom register</title>
    <link href="css/register.css" rel="stylesheet">
</head>
<body>

<div class="form-div">
    <div class="reg-content">
        <h1>welcom register</h1>
        <span>already have？</span> <a href="login.jsp">login</a>
    </div>
    <form id="reg-form" action="/easy/registerServlet" method="post">

        <table>

            <tr>
                <td>username</td>
                <td class="inputs">
                    <input name="username" type="text" id="username">
                    <br>
                    <span id="username_err" class="err_msg" >${register_msg}</span>
                </td>

            </tr>

            <tr>
                <td>password</td>
                <td class="inputs">
                    <input name="password" type="password" id="password">
                    <br>
                    <span id="password_err" class="err_msg" style="display: none">password can not use</span>
                </td>
            </tr>


            <tr>
                <td>Verification code</td>
                <td class="inputs">
                    <input name="checkCode" type="text" id="checkCode">
                    <img id="checkCodeImg" src="/easy/checkCodeServlet">
                    <a href="#" id="changeImg" >not clear？</a>
                </td>
            </tr>

        </table>

        <div class="buttons">
            <input value="register" type="submit" id="reg_btn">
        </div>
        <br class="clear">
    </form>

</div>

<script>
    document.getElementById("changeImg").onclick = function () {
        document.getElementById("checkCodeImg").src = "/easy/checkCodeServlet?"+new Date().getMilliseconds();
    }

</script>
</body>
</html>