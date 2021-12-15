<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <!-- element-ui -->
    <link rel="stylesheet" href="https://unpkg.com/element-ui@2.15.6/lib/theme-chalk/index.css">
</head>
<body>

<h1><%= "Hello World!" %>
</h1>

<div id="app">
    {{ message }}
    <el-button type="primary">Click</el-button>
</div>
<br/>
<a href="hello-servlet">Hello Servlet</a>
</body>
<%-- web dependencies --%>
<%-- vue js --%>
<script src="assets/js/vue.js"></script>
<!-- element-ui -->

<script src="https://unpkg.com/element-ui@2.15.6/lib/index.js"></script>
<%-- main js --%>
<script src="assets/js/main.js"></script>
</html>