
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">


    <title>CRM系统 | Log in</title>


    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <!-- Font Awesome -->
    <!-- Ionicons -->
    <!-- Theme style -->
    <!-- iCheck -->
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

    <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="plugins/adminLTE/css/AdminLTE.css">

    <link rel="stylesheet" href="plugins/iCheck/square/blue.css">
</head>

<body class="hold-transition login-page">
    <div class="login-box">
        <div class="login-logo">


            <a href="all-admin-index.html"><b>CRM</b>管理系统</a>


        </div>
        <!-- /.login-logo -->
        <div class="login-box-body">
            <p class="login-box-msg">登录系统</p>

            <form action="/login" method="post">
                <div class="form-group has-feedback">
                    <input id="usercode" type="text" name="sn" class="form-control" placeholder="UserCode">
                    <span class="glyphicon glyphicon-barcode form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                    <input id="password" type="password" name="password" class="form-control" placeholder="Password">
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                </div>
                <div class="row">

                    <div class="col-xs-8">
                       <span  id="logintip"></span>
                    </div>
                    <!-- /.col -->
                    <div class="col-xs-4">
                        <button type="submit" class="btn btn-primary btn-block btn-flat">登录</button>
                    </div>
                    <!-- /.col -->
                </div>
            </form>

<%--            <a href="pages/register.jsp" class="text-center">新用户注册</a>--%>

        </div>
        <!-- /.login-box-body -->
    </div>
    <!-- /.login-box -->

    <!-- jQuery 2.2.3 -->
    <!-- Bootstrap 3.3.6 -->
    <!-- iCheck -->
    <script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="plugins/iCheck/icheck.min.js"></script>

    <%
        String errorInfo = (String)request.getAttribute("msg");         // 获取错误属性
        if(errorInfo != null) {
    %>
    <script type="text/javascript" language="javascript">
        alert("<%=errorInfo%>");                                            // 弹出错误信息

        // 跳转到登录界面
    </script>
    <%
        }
    %>
    <script>
        $(function() {
            $('input').iCheck({
                checkboxClass: 'icheckbox_square-blue',
                radioClass: 'iradio_square-blue',
                increaseArea: '20%' // optional
            });

            $("#logintip").val()

        });

     /*   function requestJson(){
            var code =$("#usercode").val();//#是id选择器
            var pwd =$("#password").val();
            if(code==" "){
                alert("用户名不能为空！");
                return false;
            }
            else if(pwd==" "){
                alert("密码不能为空！");
                return false;
            }
            else
            {
                $.ajax({
                    type:'post',
                    url:'/Login',
                    dataType:"json",//注意使用的是打他dataType，而不是Content-Type
                    async: true,
                    data:{usercode:code,password:pwd},
                    success:function(data){
                        if(data==null){
                            alert("没有这个用户！")
                            window.location.href="/goLogin"
                        }
                        else{
                            alert("登录成功")
                            window.location.href ="pages/main.jsp";
                        }
                    }
                });
            }
        }*/
    </script>
</body>

</html>