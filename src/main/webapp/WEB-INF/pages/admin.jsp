<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/bootstrap-theme.css">


    <style type="text/css">
        body {
            padding-top: 70px;
            position: relative;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top container-fluid" id="navbar-example">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Brand</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class=""><a href="#first">first</a></li>
                <li class=""><a href="#second">second</a></li>
                <li class="dropdown active">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">Dropdown <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#one">Action</a></li>
                        <li><a href="#two">Another action</a></li>
                        <li><a href="#three">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#four">Separated link</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#five">One more separated link</a></li>
                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Link</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">Dropdown <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<div>
    <p><b><i>哈哈哈哈哈哈哈嗝</i></b></p><br>
    <div class="dropdown">
        <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="true">
            Dropdown
            <span class="caret"></span>
        </button>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
        </ul>
    </div>
    <br>
    <ul class="nav nav-tabs" style="cursor: pointer;">
        <li role="presentation" class="active" onclick="nav(this)"><a>Home</a></li>
        <li role="presentation" onclick="nav(this)"><a>Profile</a></li>
        <li role="presentation" onclick="nav(this)"><a>Messages</a></li>
    </ul>
    <br>


    <ol class="breadcrumb">
        <li onclick="nav(this)"><a>Home</a></li>
        <li onclick="nav(this)"><a>Library</a></li>
        <li class="active" onclick="nav(this)">Data</li>
    </ol>
    <div class="page-header" id="first">
        <h1>Example page header
            <small>Subtext for header</small>
        </h1>
    </div>
    <div style="height: 900px;"></div>
    <div class="clearfix row container-fluid">
        <div class="container-fluid pull-left col-xs-6 col-lg-4">
            <div class="jumbotron">
                <h1>Hello, world!</h1>
                <p>...</p>
                <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
            </div>
        </div>
        <div class="container-fluid pull-left col-xs-6 col-lg-4">
            <div class="jumbotron">
                <h1>Hello, world!</h1>
                <p>...</p>
                <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
            </div>
        </div>
        <div class="container-fluid pull-left col-xs-6 col-lg-4">
            <div class="jumbotron">
                <h1>Hello, world!</h1>
                <p>...</p>
                <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-6 col-md-4">
            <div class="thumbnail">
                <img src="..." alt="...">
                <div class="caption">
                    <h3>Thumbnail label</h3>
                    <p>...</p>
                    <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default"
                                                                                       role="button">Button</a></p>
                </div>
            </div>
        </div>
        <div class="col-xs-6 col-md-4">
            <div class="thumbnail">
                <img src="..." alt="...">
                <div class="caption">
                    <h3>Thumbnail label</h3>
                    <p>...</p>
                    <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default"
                                                                                       role="button">Button</a></p>
                </div>
            </div>
        </div>
    </div>

    <div class="alert alert-danger alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                aria-hidden="true">&#215</span>
        </button>
        <strong>Warning!</strong> Better check yourself, you're not looking too good.
    </div>
    <div class="progress">
        <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
             style="width: 60%;">
            60%
        </div>
    </div>

    <div class="media" id="one">
        <div class="media-left">
            <a href="#">
                <img class="media-object" src="${pageContext.request.contextPath}/statics/img/123.jpg" alt="..."
                     style="width: 64px">
            </a>
        </div>
        <div class="media-body">
            <h4 class="media-heading">Media heading</h4>
            <p>这个一个小可爱的留言</p>
        </div>
    </div>
    <br>
    <div class="container-fluid row">
        <div class="col-lg-6">
            <div class="panel panel-danger">
                <div class="panel-heading">Panel heading without title</div>
                <div class="panel-body">
                    Basic panel example
                </div>
            </div>
        </div>
    </div>
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
        Launch demo modal
    </button>

    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>

    <div id="second">

        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab"
                                                      data-toggle="tab">Home</a></li>
            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Profile</a>
            </li>
            <li role="presentation"><a href="#messages" aria-controls="messages" role="tab"
                                       data-toggle="tab">Messages</a>
            </li>
            <li role="presentation"><a href="#settings" aria-controls="settings" role="tab"
                                       data-toggle="tab">Settings</a>
            </li>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="home">111...</div>
            <div role="tabpanel" class="tab-pane" id="profile">222...</div>
            <div role="tabpanel" class="tab-pane" id="messages">333...</div>
            <div role="tabpanel" class="tab-pane" id="settings">444...</div>
        </div>

    </div>
    <br>
    <div class="container">
        <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="left"
                title="Tooltip on left">
            Tooltip on left
        </button>

        <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="Tooltip on top">
            Tooltip on top
        </button>

        <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="bottom"
                title="Tooltip on bottom">Tooltip on bottom
        </button>

        <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right"
                title="Tooltip on right">
            Tooltip on right
        </button>
    </div>
    <div class="container">
        <a class="" role="button" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
            Link with href
        </a>
        <div class="collapse" id="collapseExample">
            <div class="well">
                ...
            </div>
        </div>

    </div>
    <br>
    <div class="container">
        <form class="form-inline">
            <div class="form-group">
                <label class=""></label>
                <input type="text" class="form-control" data-toggle="popover" data-placement="right"
                       title="Popover title"
                       data-content="And here's some amazing content. It's very engaging. Right?">点我弹出/隐藏弹出框
                </input>
            </div>
        </form>
    </div>
    <br>
    <div>
        <a href="${pageContext.request.contextPath}/sys/user/list" class="btn btn-primary">跳转向用户列表(测试页面)</a>
    </div>
    <div>
        <a href="${pageContext.request.contextPath}/sys/user/table" class="btn btn-primary">跳转向用户列表(测试页面)</a>
    </div>
</div>

<button type="button" id="myButton" data-loading-text="Loading..." class="btn btn-primary" autocomplete="off">
    Loading state
</button>

<div class="">

</div>



<script src="http://code.jquery.com/jquery.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script>
<script>
    $('#myButton').on('click', function () {
        var $btn = $(this).button('loading');
        // business logic...
        $btn.button('reset');
    })
</script>
<script type="text/javascript">
    function nav(obj) {
        $(obj).addClass("active").siblings().removeClass("active");
    }

    $(function () {
        $('[data-toggle="tooltip"]').tooltip();
        $('[data-toggle="popover"]').popover();
    })
</script>
</body>
</html>
