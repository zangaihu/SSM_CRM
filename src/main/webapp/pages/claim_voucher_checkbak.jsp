<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.sh.golabl.Contant" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 页面meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>CRM系统 | 添加员工</title>
<meta name="description" content="AdminLTE2定制版">
<meta name="keywords" content="AdminLTE2定制版">

<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
	name="viewport">


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
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/skin/default_skin/css/theme.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/admin-tools/admin-forms/css/admin-forms.css">

    <style>
        /* demo page styles */
        body { min-height: 2300px; }

        .content-header b,
        .admin-form .panel.heading-border:before,
        .admin-form .panel .heading-border:before {
            transition: all 0.7s ease;
        }
        /* responsive demo styles */
        @media (max-width: 800px) {
            .admin-form .panel-body { padding: 18px 12px; }
        }
    </style>

    <style>
        .ui-datepicker select.ui-datepicker-month,
        .ui-datepicker select.ui-datepicker-year {
            width: 48%;
            margin-top: 0;
            margin-bottom: 0;

            line-height: 25px;
            text-indent: 3px;

            color: #888;
            border-color: #DDD;
            background-color: #FDFDFD;

            -webkit-appearance: none; /*Optionally disable dropdown arrow*/
        }
    </style>

</head>
<body class="hold-transition skin-purple sidebar-mini">

	<div class="wrapper">

		<!-- 页面头部 -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- 页面头部 /-->
		<!-- 导航侧栏 -->
<%--		<c:if test="${sessionScope.employee.post=='管理员'}">--%>
<%--			<jsp:include page="aside.jsp"></jsp:include>--%>
<%--		</c:if>--%>
<%--		<c:if test="${sessionScope.employee.post=='员工'}">--%>
<%--			<jsp:include page="aside-emp.jsp"></jsp:include>--%>
<%--		</c:if>--%>
<%--		<c:if test="${sessionScope.employee.post=='经理'}">--%>
<%--			<jsp:include page="aside-leader.jsp"></jsp:include>--%>
<%--		</c:if>--%>
		<jsp:include page="aside.jsp"></jsp:include>
		<!-- 导航侧栏 /-->

		<!-- 内容区域 -->
		<div class="content-wrapper">
			<section id="content" class="table-layout animated fadeIn">
				<div class="tray tray-center">
					<div class="content-header">
						<h2> 处理报销单 </h2>
						<p class="lead"></p>
					</div>
					<div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
						<div class="panel heading-border">
							<div class="panel-body bg-light">
								<div class="section-divider mt20 mb40">
									<span> 基本信息 </span>
								</div>
								<div class="section row">
									<div class="col-md-2">事由</div>
									<div class="col-md-6">${claimVoucher.cause}</div>
								</div>
								<div class="section row">
									<div class="col-md-2">创建人</div>
									<div class="col-md-4">${claimVoucher.creater.name}</div>
									<div class="col-md-2">创建时间</div>
									<div class="col-md-4"><spring:eval expression="claimVoucher.createTime"/></div>
								</div>
								<div class="section row">
									<div class="col-md-2">待处理人</div>
									<div class="col-md-4">${claimVoucher.dealer.name}</div>
									<div class="col-md-2">状态</div>
									<div class="col-md-4">${claimVoucher.status}</div>
								</div>
								<div class="section-divider mt20 mb40">
									<span> 费用明细 </span>
								</div>
								<div class="section row">
									<C:forEach items="${items}" var="item">
										<div class="col-md-3">${item.item}</div>
										<div class="col-md-3">${item.amount}</div>
										<div class="col-md-5">${item.comment}</div>
									</C:forEach>
								</div>
								<div class="section row">
									<div class="col-md-2">总金额</div>
									<div class="col-md-6">${claimVoucher.totalAmount}</div>
								</div>
								<div class="section-divider mt20 mb40">
									<span> 处理流程 </span>
								</div>
								<div class="section row">
									<c:forEach items="${records}" var="record">
										<div class="col-md-1">${record.dealer.name}</div>
										<div class="col-md-3"><spring:eval expression="record.dealTime"/></div>
										<div class="col-md-1">${record.dealWay}</div>
										<div class="col-md-2">${record.dealWay}</div>
										<div class="col-md-5">备注：${record.comment}</div>
									</c:forEach>
								</div>
								<form:form id="admin-form" name="addForm" action="/claim_voucher/check" modelAttribute="record">
									<form:hidden path="claimVoucherId" />
									<div class="panel-body bg-light">
										<div class="section">
											<label for="comment" class="field prepend-icon">
												<form:input path="comment" cssClass="gui-input" placeholder="备注..."/>
												<label for="comment" class="field-icon">
													<i class="fa fa-lock"></i>
												</label>
											</label>
										</div>
										<div class="panel-footer text-right">

											<c:if test="${sessionScope.employee.post==Contant.POST_FM || sessionScope.employee.post==Contant.POST_GM}">
												<button type="submit" class="button" name="dealWay" value="${Contant.DEAL_PASS}" >${Contant.DEAL_PASS}</button>
												<button type="submit" class="button" name="dealWay" value="${Contant.DEAL_BACK}" >${Contant.DEAL_BACK}</button>
												<button type="submit" class="button" name="dealWay" value="${Contant.DEAL_REJECT}" >${Contant.DEAL_REJECT}</button>
											</c:if>
											<c:if test="${sessionScope.employee.post==Contant.POST_CASHIER}">
												<button type="submit" class="button" name="dealWay" value="${Contant.DEAL_PAID}" >${Contant.DEAL_PAID}</button>
											</c:if>
											<button type="button" class="button" onclick="javascript:window.history.go(-1);"> 返回 </button>
										</div>
									</div>
								</form:form>

							</div>
						</div>
					</div>
				</div>
			</section>

		</div>

		<!-- 内容区域 /-->

		<!-- 底部导航 -->
		<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<b>Version</b> 1.0.8
		</div>
		<strong>Copyright &copy; 2019-20199 <a
			href="http://www.itcast.cn">sh</a>.
		</strong> All rights reserved. </footer>
		<!-- 底部导航 /-->

	</div>


	<script src="${pageContext.request.contextPath}/vendor/jquery/jquery-1.11.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/jquery/jquery_ui/jquery-ui.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/admin-tools/admin-forms/js/jquery.validate.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/admin-tools/admin-forms/js/additional-methods.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/admin-tools/admin-forms/js/jquery-ui-datepicker.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/utility/utility.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/demo/demo.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	<script type="text/javascript" src="/js/pages.js"></script>
	<script type="text/javascript" src="/js/items.js"></script>
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
		src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js"></script>





	<script>
		$(document).ready(function() {
			// 选择框
			$(".select2").select2();

			// WYSIHTML5编辑器
			$(".textarea").wysihtml5({
				locale: 'zh-CN'
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
			$('#datepicker-a3').datepicker({
				autoclose: true,

				format: 'yyyy-mm-dd'
			});
		});


		$(document).ready(function() {
			$('#datepicker-a6').datepicker({
				autoclose: true,

				format: 'yyyy-mm-dd'
			});
		});


		$(document).ready(function() {
			// 激活导航位置
			setSidebarActive("order-manage");
		});

		$(document).ready(function(){
			builderIndex();
			calculateMoney();
			setRemove();
			$("#addItemButton").click(
					function(){
						$("#items").children("div").last().after($("#items").children("div").first().clone());
						setRemove();
						$("#items").find("button").attr("disabled",false);
						builderIndex();
						$(".money").change(
								function(){
									calculateMoney();
								}
						);
						calculateMoney();
					}
			);
			$(".money").change(
					function(){
						calculateMoney();
					}
			);
		});// JavaScript Document

		function builderIndex(){
			$.each($("#items").children(),function(i,val){
				$("#items").children("div").eq(i).children().eq(0).find("select").attr("name","items["+i+"].item");
				$("#items").children("div").eq(i).children().eq(1).find("input").attr("name","items["+i+"].amount");
				$("#items").children("div").eq(i).children().eq(2).find("input").attr("name","items["+i+"].comment");

			});
		}
		function calculateMoney(){
			var totalMoney=0;
			$.each($(".money"),function(i,val){
				totalMoney+=parseFloat($(".money").eq(i).val());
			});
			$("#totalMoney").attr("value",totalMoney);
		}

		function setRemove(){
			$("#items").children("div").find("button").click(
					function(){
						$(this).parent().parent().remove();
						if($("#items").children("div").size()==1){
							$("#items").find("button").attr("disabled",true);
						}
						builderIndex();
						calculateMoney();
					}
			);
		}
</script>


</body>

</html>