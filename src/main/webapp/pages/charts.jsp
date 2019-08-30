<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<!-- 页面meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">




<title>CRM 系统 | 统计页面</title>
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

		<!-- 页面头部 -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- 页面头部 /-->
		<!-- 导航侧栏 -->
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
					统计分析 <small>分布图</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
					<li><a href="#">统计分析</a></li>
					<li class="active">分布图</li>
				</ol>
			</section>
			<!-- 内容头部 /-->

			<!-- 正文区域 -->
			<section class="content">


				<div class="col-lg-6">
					<!-- DONUT CHART -->
					<div class="box box-danger">
						<div class="box-header with-border">

							<button type="button" class="btn bg-purple btn-flat margin" id="showpie1">客户来源分布</button>

							<div class="box-tools pull-right">
								<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
								</button>
								<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
							</div>
						</div>
						<div class="box-body">
							<canvas id="pieChart1" style="height: 250px"></canvas>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->

				</div>
				<div class="col-lg-6">
					<!-- DONUT CHART -->
					<div class="box box-danger">
						<div class="box-header with-border">

							<button type="button" class="btn bg-maroon btn-flat margin" id="showpie2">客户行业分布</button>

							<div class="box-tools pull-right">
								<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
								</button>
								<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
							</div>
						</div>
						<div class="box-body">
							<canvas id="pieChart2" style="height: 250px"></canvas>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->

				</div>


				<div class="col-md-6">
					<!-- DONUT CHART -->
					<div class="box box-danger">
						<div class="box-header with-border">
							<button type="button" class="btn bg-maroon btn-flat margin" id="showbarchart">业务状态统计 </button>

							<div class="box-tools pull-right">
								<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
								</button>
								<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
							</div>
						</div>
						<div class="box-body">
							<div class="chart">
								<canvas id="barChart" style="height: 100px; width: 100px"></canvas>
							</div>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->

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
			<strong>Copyright &copy; 2019-2099 <a
				href="http://www.itcast.cn">sh</a>.
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
				locale: 'zh-CN'
			});

		});


		$("#showpie1").click(function () {
				$(function pietu1() {
					/* ChartJS
                     * -------
                     * Here we will create a few charts using ChartJS
                     */
					//-------------
					//- PIE CHART -
					//-------------
					// Get context with jQuery - using jQuery's .get() method.

					$.ajax({
						url:'/getsourcedata',
						async: false,
						type:'get',
						dataType:'json',
						success:function(data){

							console.log(data)
							var cnt1=data.extend.sourceList.cnt1;
							var cnt2=data.extend.sourceList.cnt2;


							var pieChartCanvas = $("#pieChart1").get(0).getContext("2d");
							var pieChart = new Chart(pieChartCanvas);
							var PieData = [{
								value: cnt1,
								color: "#f56954",
								highlight: "#f56954",
								label: "电话营销"
							},
								{
									value: cnt2,
									color: "#800080",
									highlight: "#00a65a",
									label: "网络营销"
								}];
							var pieOptions = {
								//Boolean - Whether we should show a stroke on each segment
								segmentShowStroke: true,
								//String - The colour of each segment stroke
								segmentStrokeColor: "#fff",
								//Number - The width of each segment stroke
								segmentStrokeWidth: 2,
								//Number - The percentage of the chart that we cut out of the middle
								percentageInnerCutout: 50, // This is 0 for Pie charts
								//Number - Amount of animation steps
								animationSteps: 100,
								//String - Animation easing effect
								animationEasing: "easeOutBounce",
								//Boolean - Whether we animate the rotation of the Doughnut
								animateRotate: true,
								//Boolean - Whether we animate scaling the Doughnut from the centre
								animateScale: true,
								//Boolean - whether to make the chart responsive to window resizing
								responsive: true,
								// Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
								maintainAspectRatio: true,
								//String - A legend template

							};
							//Create pie or douhnut chart
							// You can switch between pie and douhnut using the method below.
							pieChart.Doughnut(PieData, pieOptions);
						}
					})
				})
			})

			$("#showpie2").click(function () {
				$(function pietu2() {
					/* ChartJS
                     * -------
                     * Here we will create a few charts using ChartJS
                     */
					//-------------
					//- PIE CHART -
					//-------------
					// Get context with jQuery - using jQuery's .get() method.

					$.ajax({
						url:'/getinddata',
						async: false,
						type:'get',
						dataType:'json',
						success:function(data){

							console.log(data)
							var ind1=data.extend.industryList.ind1;
							var ind2=data.extend.industryList.ind2;
							var ind3=data.extend.industryList.ind3;
							var ind4=data.extend.industryList.ind4;
							var ind5=data.extend.industryList.ind5;



							var pieChartCanvas = $("#pieChart2").get(0).getContext("2d");
							var pieChart = new Chart(pieChartCanvas);
							var PieData = [{
								value: ind1,
								color: "#f39c12",
								highlight: "#f39c12",
								label: "教育培训"
							},
								{
									value: ind2,
									color: "#00a65a",
									highlight: "#00a65a",
									label: "电子商务"
								},
								{
									value: ind3,
									color: "#00c0ef",
									highlight: "#00c0ef",
									label: "对外贸易"
								},
								{
									value: ind4,
									color: "#3c8dbc",
									highlight: "#3c8dbc",
									label: "酒店旅游"
								},
								{
									value: ind5,
									color: "#d2d6de",
									highlight: "#d2d6de",
									label: "房地产"
								}];
							var pieOptions = {
								//Boolean - Whether we should show a stroke on each segment
								segmentShowStroke: true,
								//String - The colour of each segment stroke
								segmentStrokeColor: "#fff",
								//Number - The width of each segment stroke
								segmentStrokeWidth: -1,
								//Number - The percentage of the chart that we cut out of the middle
								percentageInnerCutout: 0, // This is 0 for Pie charts
								//Number - Amount of animation steps
								animationSteps: 100,
								//String - Animation easing effect
								animationEasing: "easeOutCirc",
								//Boolean - Whether we animate the rotation of the Doughnut
								animateRotate: true,
								//Boolean - Whether we animate scaling the Doughnut from the centre
								animateScale: true,
								//Boolean - whether to make the chart responsive to window resizing
								responsive: true,
								// Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
								maintainAspectRatio: true,
								//String - A legend template

							};
							//Create pie or douhnut chart
							// You can switch between pie and douhnut using the method below.
							pieChart.Doughnut(PieData, pieOptions);
						}
					})
				})
			})


	$("#showbarchart").click(function () {
		$(function () {

			$.ajax({

				url:'/getchancedata',
				async: false,
				type:'get',
				dataType:'json',
				success:function(data){
					console.log(data)
					var c1=data.extend.chanceList.c1;
					var c2=data.extend.chanceList.c2;
					var c3=data.extend.chanceList.c3;
					var c4=data.extend.chanceList.c4;
					var areaChartData = {
						labels: ["意向客户", "初步沟通", "深度沟通", "签订合同"],
						datasets: [{
							label: "Electronics",
							fillColor: "rgba(210, 214, 222, 1)",
							strokeColor: "rgba(210, 214, 222, 1)",
							pointColor: "rgba(210, 214, 222, 1)",
							pointStrokeColor: "#c1c7d1",
							pointHighlightFill: "#fff",
							pointHighlightStroke: "rgba(220,220,220,1)",
							data: [c1, c2, c3, c4]
						}

						]
					};

					var barChartCanvas = $("#barChart").get(0).getContext("2d");
					var barChart = new Chart(barChartCanvas);
					var barChartData = areaChartData;
					barChartData.datasets[0].fillColor = "#00a65a";
					barChartData.datasets[0].strokeColor = "#00a65a";
					barChartData.datasets[0].pointColor = "#00a65a";
					var barChartOptions = {
						//Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
						scaleBeginAtZero: true,
						//Boolean - Whether grid lines are shown across the chart
						scaleShowGridLines: true,
						//String - Colour of the grid lines
						scaleGridLineColor: "rgba(0,0,0,.05)",
						//Number - Width of the grid lines
						scaleGridLineWidth: 2,
						//Boolean - Whether to show horizontal lines (except X axis)
						scaleShowHorizontalLines: true,
						//Boolean - Whether to show vertical lines (except Y axis)
						scaleShowVerticalLines: true,
						//Boolean - If there is a stroke on each bar
						barShowStroke: true,
						//Number - Pixel width of the bar stroke
						barStrokeWidth: 1,
						//Number - Spacing between each of the X value sets
						barValueSpacing: 80,
						//Number - Spacing between data sets within X values
						barDatasetSpacing: 10,
						//String - A legend template

						//Boolean - whether to make the chart responsive
						responsive: true,
						maintainAspectRatio: true
					};

					barChartOptions.datasetFill = false;
					barChart.Bar(barChartData, barChartOptions);
				}
			})

		})
	})








		// 设置激活菜单
		function setSidebarActive(tagUri) {
			var liObj = $("#" + tagUri);
			if (liObj.length > 0) {
				liObj.parent().parent().addClass("active");
				liObj.addClass("active");
			}
		}




	</script>
</body>

</html>