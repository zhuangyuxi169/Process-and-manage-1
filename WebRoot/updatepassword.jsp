<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>修改密码</title>
</head>
<body>
<form action="test_updatepassword.action?username=${adminBean.name}&password=${adminBean.password}" method="post">
<center> 
    <h1 style="font-size:30px;color:white;">修改密码</h1><br><br>
   <table border="0" height=10px cellspacing="20">
   <tr>
   <td>旧密码:&nbsp;</td>
   <td><input type="password" name="password1"></td>
   </tr>
   <tr>
   <td>新密码:&nbsp;</td>
   <td><input type="password" name="password2"></td>
   </tr>
   <tr>
   <td>确认密码:&nbsp;</td>
   <td><input type="password" name="password3"></td>
   </tr>
   <tr>
   <td></td>
   <td colspan="2">
   </td></tr>
   </table>
   <input type="submit" name="submit" value="修改" >
</center>
			<div>
			<c:if test="${param.status.equals('1')}">
			<script type="text/javascript">
    			alert("旧密码错误!");
    		</script>
			</c:if>
			<c:if test="${param.status.equals('2')}">
			<script type="text/javascript">
    			alert("修改成功!");
    		</script>
			</c:if>
			</div>
</form>
</body>
</html>