<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>测试页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/bootstrap-theme.css">
    <style type="text/css">
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-xs-8 col-md-6" style="border:1px solid black;height:100px;"><b>12</b><i>31</i><b>23213</b></div>
        <div class="col-xs-4 col-md-6" style="border:1px solid black;height:100px;"><abbr title="ceshiceshi">123</abbr>123123
        </div>
    </div>
</div>
<dl class="dl-horizontal">
    <dt>Description lists</dt>
    <dd>A description list is <kbd>perfect</kbd> for defining terms.</dd>
    <dt>Description lists</dt>
    <dd>A description list is perfect for defining terms.</dd>
    <dt>Description lists</dt>
    <dd>A description list is perfect for defining terms.</dd>
    <dt>Description lists</dt>
    <dd>A description list is perfect for defining terms.</dd>
</dl>
<pre>
    &lt;p&gt;Sample text here...&lt;/p&gt;
    &lt;p&gt;Sample text here...&lt;/p&gt;
    &lt;p&gt;Sample text here...&lt;/p&gt;
</pre>
<var>y</var> = <var>mx</var> + <var>b</var>
<samp>This text is meant to be treated as sample output from a computer program.</samp>
<div style="width: 80%;">
<div class="container-fluid table-responsive">
    <table class="table table-striped table-bordered table-hover ">
        <thead>
            <tr>
                <th>#</th>
                <th>heading1</th>
                <th>heading2</th>
                <th>heading3</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${page.records}" var="user" varStatus="status">

            <tr>
                <td>${status.count}</td>
                <td>${user.id}</td>
                <td>${user.username}</td>
                <td>${user.password}</td>
            </tr>

        </c:forEach>
        </tbody>
    </table>
    <nav aria-label="Page navigation">
        <ul class="sub">
            <li>
                <a href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>
            <li><a href="#">所有商品</a>
                <ul class="list-unstyled menu">
                    <li><a>a</a></li>
                    <li><a>b</a></li>
                </ul>
            </li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li>
                <a href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>
        </ul>
    </nav>
</div>
</div>
<div class="container" style="width: 60%;">
    <form class="form-horizontal">
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
            <div class="col-sm-6">
                <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
            <div class="col-sm-6">
                <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-6">
                <div class="checkbox">
                    <label>
                        <input type="checkbox"> Remember me
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Sign in</button>
            </div>
        </div>
    </form>
</div>

<form class="form-inline">
    <div class="form-group">
        <label class="sr-only" for="exampleInputAmount">Amount (in dollars)</label>
        <div class="input-group">
            <div class="input-group-addon">￥</div>
            <input type="text" class="form-control" id="exampleInputAmount" placeholder="Amount">
            <div class="input-group-addon">元</div>
        </div>
    </div>
    <button type="submit" class="btn btn-primary">Transfer cash</button>
</form>

<form class="form-horizontal">
    <div class="form-group has-success has-feedback">
        <label class="control-label col-sm-3" for="inputSuccess3">Input with success</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
            <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
            <span id="inputSuccess3Status" class="sr-only">(success)</span>
        </div>
    </div>
    <div class="form-group has-success has-feedback">
        <label class="control-label col-sm-3" for="inputGroupSuccess2">Input group with success</label>
        <div class="col-sm-6">
            <div class="input-group">
                <span class="input-group-addon">@</span>
                <input type="text" class="form-control" id="inputGroupSuccess2" aria-describedby="inputGroupSuccess2Status">
            </div>
            <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
            <span id="inputGroupSuccess2Status" class="sr-only">(success)</span>
        </div>
    </div>
</form>
<div class="row sr-only">
    <div class="col-xs-6 col-md-3">
            <img class="img-responsive img-circle" src="${pageContext.request.contextPath}/statics/img/123.jpg" alt="...">
    </div>
</div>

<h1 class="text-hide">Custom heading</h1>
<a class="btn btn-primary" href="${pageContext.request.contextPath}/login/admin">转向admin页面</a>
<a class="btn btn-primary" href="${pageContext.request.contextPath}/login/scroll">转向scroll页面</a>
<input type="button" class="btn btn-primary" name="submit" id="submit" value="跳转" onclick="javascript:getFullInfoList()"/>
<h1 class="text-hide">Custom heading</h1>
<script src="http://code.jquery.com/jquery.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script>
<script type="text/javascript">
    function getFullInfoList() {
        window.location.href = "${pageContext.request.contextPath}/sys/user/fullInfo?username=wzh12";
    }

</script>
</body>
</html>
