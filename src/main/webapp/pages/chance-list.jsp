<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
<!-- 页面meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">




<title>CRM系统 | 业务列表</title>
<meta name="description" content="AdminLTE2定制版">
<meta name="keywords" content="AdminLTE2定制版">




<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.6 -->
<!-- Font Awesome -->
<!-- Ionicons -->
<!-- iCheck -->
<!-- Morris chart -->
<!-- jvectormap -->
<!-- Date Picker -->
<!-- Daterange picker -->
<!-- Bootstrap time Picker -->
<!--<link rel="stylesheet" href="${pageContext.request.contextPath}/${pageContext.request.contextPath}/${pageContext.request.contextPath}/plugins/timepicker/bootstrap-timepicker.min.css">-->
<!-- bootstrap wysihtml5 - text editor -->
<!--数据表格-->
<!-- 表格树 -->
<!-- select2 -->
<!-- Bootstrap Color Picker -->
<!-- bootstrap wysihtml5 - text editor -->
<!--bootstrap-markdown-->
<!-- Theme style -->
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<!-- Ion Slider -->
<!-- ion slider Nice -->
<!-- bootstrap slider -->
<!-- bootstrap-datetimepicker -->

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->








<!-- jQuery 2.2.3 -->
<!-- jQuery UI 1.11.4 -->
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<!-- Bootstrap 3.3.6 -->
<!-- Morris.js charts -->
<!-- Sparkline -->
<!-- jvectormap -->
<!-- jQuery Knob Chart -->
<!-- daterangepicker -->
<!-- datepicker -->
<!-- Bootstrap WYSIHTML5 -->
<!-- Slimscroll -->
<!-- FastClick -->
<!-- iCheck -->
<!-- AdminLTE App -->
<!-- 表格树 -->
<!-- select2 -->
<!-- bootstrap color picker -->
<!-- bootstrap time picker -->
<!--<script src="${pageContext.request.contextPath}/${pageContext.request.contextPath}/${pageContext.request.contextPath}/plugins/timepicker/bootstrap-timepicker.min.js"></script>-->
<!-- Bootstrap WYSIHTML5 -->
<!--bootstrap-markdown-->
<!-- CK Editor -->
<!-- InputMask -->
<!-- DataTables -->
<!-- ChartJS 1.0.1 -->
<!-- FLOT CHARTS -->
<!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
<!-- FLOT PIE PLUGIN - also used to draw donut charts -->
<!-- FLOT CATEGORIES PLUGIN - Used to draw bar charts -->
<!-- jQuery Knob -->
<!-- Sparkline -->
<!-- Morris.js charts -->
<!-- Ion Slider -->
<!-- Bootstrap slider -->
<!-- bootstrap-datetimepicker -->
<!-- 页面meta /-->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/morris/morris.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/datepicker/datepicker3.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.theme.default.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/select2/select2.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-slider/slider.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body class="hold-transition skin-purple sidebar-mini">

	<div class="wrapper">

		<jsp:include page="header.jsp"></jsp:include>


		<c:if test="${sessionScope.employee.post=='总经理'}">
			<jsp:include page="aside-manage.jsp"></jsp:include>
		</c:if>
		<c:if test="${sessionScope.employee.post=='员工'}">
			<jsp:include page="aside-emp.jsp"></jsp:include>
		</c:if>
		<c:if test="${sessionScope.employee.post=='财务'}">
			<jsp:include page="aside-cash.jsp"></jsp:include>
		</c:if>
		<c:if test="${sessionScope.employee.post=='部门经理'}">
			<jsp:include page="aside-leader.jsp"></jsp:include>
		</c:if>
<%--		<jsp:include page="aside.jsp"></jsp:include>--%>
		<!-- 导航侧栏 /-->

		<!-- 内容区域 -->
		<!-- @@master = admin-layout.html-->
		<!-- @@block = content -->

		<div class="content-wrapper">

			<!-- 内容头部 -->
			<section class="content-header">
				<h1>
					业务管理 <small>业务列表</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
					<li><a href="#">业务管理</a></li>
					<li class="active">业务列表</li>
				</ol>
			</section>
			<!-- 内容头部 /-->

			<!-- 正文区域 -->
			<section class="content">

				<!-- .box-body -->
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">列表</h3>
					</div>

					<div class="panel panel-warning">
						<div class="panel-body">
							<form class="form-inline" action="/getchanceselective" method="post">

								<div class="form-group">
									<label for="chanState1">业务状态</label>
									<select class="form-control" id="chanState1" name="chanState">
										<option value="">-- 请选择 --</option>
										<option value="意向客户">-- 意向客户 --</option>
										<option value="初步沟通">-- 初步沟通 --</option>
										<option value="深度沟通">-- 深度沟通 --</option>
										<option value="签订合同">-- 签订合同 --</option>

									</select>
								</div>


								<button type="submit" class="btn btn-info">查询</button>



							</form>

						</div>
					</div>

					<div class="box-body">

						<!-- 数据表格 -->
						<div class="table-box">

							<!--工具栏-->
							<div class="pull-left">
								<div class="form-group form-inline">
									<div class="btn-group">

								</div>
								</div>
							</div>

							<!--工具栏/-->

							<!--数据列表-->
							<table id="dataList"
								class="table table-bordered table-striped table-hover dataTable">
								<thead>
									<tr>

										<th class="sorting_asc">业务编号</th>
										<th class="sorting_desc">业务名称</th>
										<th class="sorting_asc sorting_asc_disabled">客户名称</th>
										<th class="sorting_desc sorting_desc_disabled">负责人名称</th>
<%--										<th class="sorting">业务金额</th>--%>
<%--										<th class="sorting">业务类型</th>--%>
<%--										<th class="sorting">业务来源</th>--%>
										<th class="sorting">业务状态</th>
										<th class="sorting">日期</th>
										<th class="text-center">操作</th>
									</tr>
								</thead>
								<tbody>


									<c:forEach items="${pageInfo.list}" var="chance">
										<tr>

											</td>
											<td>${chance.chanId}</td>
											<td>${chance.chanName}</td>
											<td>${chance.customer.custName}</td>
											<td>${chance.employee.name}</td>
											<td>

												<c:if test="${chance.chanState =='意向客户'}">
												<span class="label label-default">${chance.chanState}</span>
												</c:if>
												<c:if test="${chance.chanState =='初步沟通'}">
												<span class="label label-primary">${chance.chanState}</span>
												</c:if>
												<c:if test="${chance.chanState =='深度沟通'}">
												<span class="label label-info">${chance.chanState}</span>
												</c:if>
												<c:if test="${chance.chanState =='签订合同'}">
												<span class="label label-success">${chance.chanState}</span>
												</c:if>

											</td>
											<td><fmt:formatDate pattern="yyyy-MM-dd" value="${chance.chanLinktime}"></fmt:formatDate></td>

<%--											<td>${product.productName }</td>--%>
<%--											<td>${product.cityName }</td>--%>
<%--											<td>${product.departureTimeStr }</td>--%>
<%--											<td class="text-center">${product.productPrice }</td>--%>
<%--											<td>${product.productDesc }</td>--%>
<%--											<td class="text-center">${product.productStatusStr }</td>--%>
											<td class="text-center">



												<button type="button" class="btn bg-teal-active btn-sm"  id="change" value="${chance.chanId}">编辑</button>



											</td>


										</tr>
									</c:forEach>
								</tbody>

								<!--
                            <tfoot>
                            <tr>
                            <th>Rendering engine</th>
                            <th>Browser</th>
                            <th>Platform(s)</th>
                            <th>Engine version</th>
                            <th>CSS grade</th>
                            </tr>
                            </tfoot>-->
							</table>
							<!--数据列表/-->
							<div id="myModal2" class="modal fade" role="dialog" style="display: none;">
								<div class="modal-dialog" >
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-label="Close">
												<span aria-hidden="true">×</span></button>
											<h4 class="modal-title">客户详细信息</h4>
										</div>
										<form method="get" action="/chance_update" class="form-horizontal">
											<div class="modal-body">

												<div class="box-body">
													<div class="form-horizontal">

														<div class="form-group">
															<label  class="col-sm-4 control-label">业务编号:</label>
															<div class="col-sm-7">
																<div class="input-group">
																	<input  type="text" class="form-control" id="chanId" name="chanId">
																</div>
															</div>
														</div>

														<div class="form-group">
															<label  class="col-sm-4 control-label">业务名称:</label>
															<div class="col-sm-7">
																<div class="input-group">

																	<input  type="text" class="form-control"  name="chanName" id="chanName">
																</div>
															</div>
														</div>



														<div class="form-group">
															<label  class="col-sm-4 control-label">业务金额:</label>
															<div class="col-sm-7">
																<div class="input-group">
																	<input  type="text" class="form-control"  name="chanMoney" id="chanMoney">
																</div>
															</div>
														</div>

														<div class="form-group">
															<label  class="col-sm-4 control-label">业务类型:</label>
															<div class="col-sm-7">
																<select name="chanType"  id="chanType" class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true">
																	<option value="新业务">新业务</option>
																	<option value="现有业务">现有业务</option>
																</select>
															</div>
														</div>

														<div class="form-group">
															<label  class="col-sm-4 control-label">业务来源:</label>
															<div class="col-sm-7">
																<select name="chanSource" id="chanSource" class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true">
																	<option value="推广活动">推广活动</option>
																	<option value="电话营销">电话营销</option>
																	<option value="网络营销">网络营销</option>
																</select>
															</div>
														</div>

														<div class="form-group">
															<label  class="col-sm-4 control-label">状态:</label>
															<div class="col-sm-7">
																<select name="chanState" id="chanState" class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true">
																	<option value="意向客户">意向客户</option>
																	<option value="初步沟通">初步沟通</option>
																	<option value="深度沟通">深度沟通</option>
																	<option value="签订合同">签订合同</option>
																</select>
															</div>
														</div>




													</div>
												</div>

											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-block btn-primary" data-dismiss="modal">关闭</button>
												<button type="submit" class="btn btn-block btn-primary" >保存</button>
											</div>
										</form>
									</div>
									<!-- /.modal-content -->
								</div>

								<!-- /.modal-dialog -->
							</div>

							<!--工具栏-->
							<div class="pull-left">
								<div class="form-group form-inline">
									<div class="btn-group">


									</div>
								</div>
							</div>
							<div class="box-tools pull-right">

							</div>
							<!--工具栏/-->

						</div>
						<!-- 数据表格 /-->


					</div>
					<!-- /.box-body -->

					<!-- .box-footer-->
					<div class="box-footer">
						<div class="pull-left">
							<div class="form-group form-inline">
								总${pageInfo.pages}页，总共${pageInfo.total}条
							</div>
						</div>

						<div class="box-tools pull-right">
							<ul class="pagination">
								<li><a href="/chancelist?pn=1" aria-label="Previous">首页</a></li>

								<c:if test="${pageInfo.hasPreviousPage}">
									<li><a href="/chancelist?pn=${pageInfo.pageNum-1}"><span aria-hidden="true">&laquo;</span></a></li>
								</c:if>

								<c:forEach items="${pageInfo.navigatepageNums}" var="page_num">

									<c:if test="${page_num == pageInfo.pageNum}">
										<li class="active"><a href="/chancelist?pn=${page_num}">${page_num}</a></li>
									</c:if>
									<c:if test="${page_num != pageInfo.pageNum}">
										<li><a href="/chancelist?pn=${page_num}">${page_num}</a></li>
									</c:if>
								</c:forEach>
								<c:if test="${pageInfo.hasNextPage}">
									<li><a href="/chancelist?pn=${pageInfo.pageNum+1}"><span aria-hidden="true">&raquo;</span></a></li>
								</c:if>

								<li><a href="/chancelist?pn=${pageInfo.pages}" aria-label="Next">尾页</a></li>
							</ul>
						</div>

					</div>
					<!-- /.box-footer-->



				</div>

			</section>
			<!-- 正文区域 /-->

		</div>
		<!-- @@close -->
		<!-- 内容区域 /-->

		<!-- 底部导航 -->
		<footer class="main-footer">
			<div class="pull-right hidden-xs">
				<b>Version</b> 1.0.8
			</div>
			<strong>Copyright &copy; 2014-2017 <a
				href="http://www.itcast.cn">研究院研发部</a>.
			</strong> All rights reserved.
		</footer>
		<!-- 底部导航 /-->

	</div>


	<script
		src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jQueryUI/jquery-ui.min.js"></script>
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/raphael/raphael-min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/morris/morris.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/sparkline/jquery.sparkline.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/knob/jquery.knob.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datepicker/bootstrap-datepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/fastclick/fastclick.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/adminLTE/js/app.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/select2/select2.full.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/to-markdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/ckeditor/ckeditor.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/chartjs/Chart.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.resize.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.pie.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.categories.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
	<script>
		$(document).ready(function() {
			// 选择框
			$(".select2").select2();

			// WYSIHTML5编辑器
			$(".textarea").wysihtml5({
				locale : 'zh-CN'
			});
		});


		$('[id=change]').click(function(){

			var id=$(this).val();
			$("#myModal2").modal();
			$.ajax({
				type:"get",
				dataType:"json",
				data:{
					"chanId":id,
				},
				url:"getonechance",
				success:function(data){
					console.log(data)
					console.log(data.extend.chance.chanName)
					$("#chanName").val(data.extend.chance.chanName);
					$("#chanId").val(data.extend.chance.chanId);
					$("#chanMoney").val(data.extend.chance.chanMoney);



				}

			});

		});


		// 设置激活菜单
		function setSidebarActive(tagUri) {
			var liObj = $("#" + tagUri);
			if (liObj.length > 0) {
				liObj.parent().parent().addClass("active");
				liObj.addClass("active");
			}
		}

		$(document).ready(function() {

			// 激活导航位置
			setSidebarActive("admin-datalist");

			// 列表按钮 
			$("#dataList td input[type='checkbox']").iCheck({
				checkboxClass : 'icheckbox_square-blue',
				increaseArea : '20%'
			});
			// 全选操作 
			$("#selall").click(function() {
				var clicks = $(this).is(':checked');
				if (!clicks) {
					$("#dataList td input[type='checkbox']").iCheck("uncheck");
				} else {
					$("#dataList td input[type='checkbox']").iCheck("check");
				}
				$(this).data("clicks", !clicks);
			});
		});
	</script>
</body>

</html>