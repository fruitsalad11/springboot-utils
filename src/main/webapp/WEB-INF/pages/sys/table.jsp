<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>测试页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/bootstrap-theme.css">
    <link href="https://unpkg.com/bootstrap-table@1.15.4/dist/bootstrap-table.min.css" rel="stylesheet">
    <script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
    <link href="https://unpkg.com/jquery-resizable-columns@0.2.3/dist/jquery.resizableColumns.css" rel="stylesheet">
    <link href="https://unpkg.com/bootstrap-table@1.15.4/dist/bootstrap-table.min.css" rel="stylesheet">

    <script src="https://unpkg.com/jquery-resizable-columns@0.2.3/dist/jquery.resizableColumns.min.js"></script>
    <script src="https://unpkg.com/bootstrap-table@1.15.4/dist/bootstrap-table.min.js"></script>
    <script src="https://unpkg.com/bootstrap-table@1.15.4/dist/extensions/resizable/bootstrap-table-resizable.min.js"></script>
</head>
<body>

<table
        id="table"
        data-show-columns="true"
        data-search="true"
        data-show-toggle="true"
        data-pagination="true"
        data-resizable="true">
    <thead>
    <tr>
        <th data-field="name" data-sortable="true">Name</th>
        <th data-field="stargazers_count" data-sortable="true">Stars</th>
        <th data-field="forks_count" data-sortable="true">Forks</th>
        <th data-field="description" data-sortable="true">Description</th>
    </tr>
    </thead>
</table>

<script>
    var data = [
        {
            name: 'bootstrap-table',
            stargazers_count: '8827',
            forks_count: '3603',
            description: 'An extended Bootstrap table with radio, checkbox, sort, pagination, and other added features. (supports twitter bootstrap v2 and v3) '
        },
        {
            name: 'multiple-select',
            stargazers_count: '1615',
            forks_count: '623',
            description: 'José'
        },
        {
            name: 'bootstrap-show-password',
            stargazers_count: '220',
            forks_count: '85',
            description: 'Show/hide password plugin for twitter bootstrap.'
        },
        {
            name: 'José',
            stargazers_count: '50',
            forks_count: '10',
            description: 'my blog'
        },
        {
            name: 'bootstrap-table-examples',
            stargazers_count: '1734',
            forks_count: '1532',
            description: 'Bootstrap Table Examples.'
        }
    ]

    $(function() {
        $('#table').bootstrapTable({
            data: data
        })
    })
</script>
</body>
</html>
