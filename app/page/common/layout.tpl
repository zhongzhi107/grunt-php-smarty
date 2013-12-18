<!DOCTYPE html>

{%* 自定义变量 *%}
{%block name="block_assign"%}{%/block%}

{%* html头部可复写：css hack用 *%}
{%block name="block_html"%}
<html>
{%/block%}

    <head>
        {%* 页面title *%}
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>{%block name="block_title"%}untitled{%/block%}</title>
        <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

        {%* 头部meta，seo相关可以写在这里面 *%}
        {%block name="block_meta"%}{%/block%}

        {%* 头部css *%}
        {%block name="block_head_css"%}
		<link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/css/bootstrap.min.css">
		<link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/css/bootstrap-theme.min.css">
		{%/block%}
    </head>
    <body>
        {%* 头部js *%}
        {%block name="block_head_js"%}{%/block%}

        {%* 顶部导航条 *%}
        {%block name="block_header"%}
        {%/block%}

        {%* 中间内容区域  *%}
        {%block name="block_content"%}
        {%/block%}

        {%* 底部内容区域 *%}
        {%block name="block_footer"%}
        {%/block%}

        {%* 底部js区域 *%}
        {%block name="block_foot_js"%}
		<script src="http://cdn.bootcss.com/jquery/2.0.3/jquery.min.js"></script>
		<script src="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
        {%/block%}
    </body>
</html>
