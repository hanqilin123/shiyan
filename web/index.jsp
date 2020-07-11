<%--
  Created by IntelliJ IDEA.
  User: han
  Date: 2020/7/11
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<!Doctype html>
<html>
<head>
  <title>实验一  简单静态网页设计</title>
  <style type="text/css">
    body{
      margin:0 auto;
      background-color:#FFF;
      font-size:12px;

    }
    .top,.bottom,.center {
      height: auto;
      width: 100%;
    }
    .right{
      width: 44px;
      height: 300px;
      float:right;
    }
    .left{

      width: 35px;
      height: 300px;
      float:left;
    }
    #left {
      width: 30%;
      float: left;
      padding: 0 10px;
      height: auto;
    }
    #right {
      width: 50%;
      float: right;
      height: auto;
      padding-top: 30px;
    }
    #line{
      height: 300px;
      border-color: green;
      border-left-style: solid;
      border-width: 2px;
    }

  </style>
<body>
<img class="top" src="images/01.gif" style="height: 180px;">
<h1 style="margin: -5px;"></h1>
<div class="center">
  <img src="images/02.gif" class="left">
  <img src="images/04.gif" class="right">
  <div id="left">
    <img src="images/reg.gif"> <strong>注册帮助</strong>
    <ul>
      <li>会员名：为会员登录网站的通行证，长度控制在3-20个字符之内。</li>
      <br/>
      <li>密码：请设定在6-20位之间。</li>
      <br/>
      <li>确认密码：确认密码必须与密码一致。</li>
      <br/>
      <li>Email：请填写有效的Email地址，以便于与您联系。</li>
    </ul>
  </div>

  <div id="right">
    <form  action="questionaire.html" name=form1 οnsubmit="return check()">
      <table>
        <tr>
          <td>用户名：</td>
          <td>
            <input type="text" name="username" placeholder="长度控制在3-20个字符"  >

          </td>
        </tr>
        <tr>
          <td>密码：</td>
          <td>
            <input type="password" name="password" placeholder="请设定在6-20位之间" >

          </td>
        </tr>
        <tr>
          <td>确认密码：</td>
          <td>
            <input type="password" name="cpassword" >

          </td>
        </tr>
        <tr>
          <td>性别：</td>
          <td>
            <input type="radio" name="sex" value="男" />男
            <input type="radio" name="sex" value="女" />女
          </td>
        </tr>
        <tr>
          <td>E-mail：</td>
          <td>
            <input type="email" name="email">

          </td>
        </tr>
        <tr>
          <td><input type="submit" name="submit" value="提交" >
          </td>
          <td><input type="reset" name="reset" value="重置" />
          </td>
        </tr>

      </table>
    </form>
  </div>
  <table id="line">
    <tr>
      <td valign="top"></td>
    </tr>
  </table>

</div>
<img class="bottom" src="images/03.jpg">
</body>
</html>
<script language="javaScript">
    function check(){

        if(document.form1.username.value.length<3||document.form1.username.value.length>20){
            alert("请输入符合条件的用户名");
            return false;
        }
        var pd= document.form1.password.value;
        if(document.form1.password.value.length<6||document.form1.password.value.length>20){
            alert("请输入符合条件的密码");
            return false;
        }
        var cpd= document.form1.cpassword.value;

        if(document.form1.cpassword.value.length<6||document.form1.cpassword.value.length>20){
            alert("请再次输入密码  ！");
            return false;
        }
        if(pd !== cpd){
            alert("两次密码不相同");
            return false;
        }
        if(document.form1.email.value.indexOf("@")=-1||document.form1.email.value.length=0){
            alert("请输入正确格式的邮箱！");
            return false;
        }
        return true;
    }

</script>

</html>
