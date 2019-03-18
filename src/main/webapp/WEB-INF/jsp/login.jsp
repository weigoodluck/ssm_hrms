<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/bootstrap-3.3.7-dist/css/bootstrap.css"
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/ionicons.min.css">
    <script src="<%=request.getContextPath()%>/static/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/static/css/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <script src="<%=request.getContextPath()%>/static/js/jquery1.11.1.min.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4" style="margin: 180px 180px">
            <div class="login-panel panel panel-default" >
                <div class="panel-heading">
                    <h3 class="panel-title" style="text-align: center;">登录</h3>
                </div>
                <div class="panel-body">
                    <form role="form" action="#" method="post" id="login_form">
                        <fieldset>
                            <div class="form-group">
                                <input class="form-control" placeholder="用户名:admin" name="username" autofocus>
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="密码:1234" name="password" type="password" value="">
                            </div>
                            <!-- Change this to a button or input when using this as a form -->
                            <a href="javascript:void(0)" class="btn btn-lg btn-success btn-block" id='login_btn'>登录</a>
                        </fieldset>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">

    $(function () {
        $("#login_btn").click(function () {
            $.ajax({
                url:"/hrms/dologin",
                type:"POST",
                data:$("#login_form").serialize(),
                success:function (result) {
                    if(result.code == 100){
                        window.location.href= "/hrms/main";
                    }else {
                        alert(result.extendInfo.login_error);
                    }
                }

            });
        });
    });
</script>
</body>
</html>
