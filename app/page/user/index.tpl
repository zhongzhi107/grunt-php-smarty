{%extends file="page/common/layout.tpl"%}

{%* 头部css *%}
{%block name="block_head_css" append%}
<link rel="stylesheet" type="text/css" href="/static/css/base.css" media="screen"/>
<link rel="stylesheet" type="text/css" href="/static/css/page.css" media="screen"/>
{%/block%}

{%* 中间内容区域  *%}
{%block name="block_content"%}
	{%include file="widget/header/header.tpl"%}

	<div id="page-outer">
		<div id="page-container" class="wrapper white">
			<div class="dashboard">



				<form class="form-horizontal module inner" role="form">
					<div class="form-group">
						<label class="col-sm-4 control-label">学科</label>
						<div class="col-sm-8">
							<select class="form-control">
								<option value="">不限</option>
								<option value="1">语文</option>
								<option value="2">数学</option>
								<option value="3">英语</option>
								<option value="4">物理</option>
								<option value="5">化学</option>
								<option value="6">生物</option>
								<option value="7">政治</option>
								<option value="8">历史</option>
								<option value="9">地理</option>
								<option value="10">自然</option>
								<option value="11">社会</option>
								<option value="12">劳动</option>
								<option value="13">思想品德</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">年级</label>
						<div class="col-sm-8">
							<select class="form-control">
								<option value="">不限</option>
								<option value="92">高中</option>
								<option value="91">初中</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">上课区域</label>
						<div class="col-sm-8">
							<select class="form-control">
								<option value="1">北京</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">老师类型</label>
						<div class="col-sm-8">
							<select class="form-control">
								<option value="">不限</option>
								<option value="1">市重点校</option>
								<option value="2">区重点校</option>
								<option value="3">普通学校</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">老师性别</label>
						<div class="col-sm-8">
							<select class="form-control">
								<option value="">不限</option>
								<option value="1">男老师</option>
								<option value="2">女老师</option>
							</select>
						</div>
					</div>
				</form>



			</div>
			<div class="content-main">main</div>
		</div>
	</div>
	{%include file="widget/footer/footer.tpl"%}
{%/block%}

{%* 底部js区域 *%}
{%block name="block_foot_js" append%}
<script src="http://localhost:35729/livereload.js?snipver=1"></script>
<script type="text/javascript">
</script>
{%/block%}
