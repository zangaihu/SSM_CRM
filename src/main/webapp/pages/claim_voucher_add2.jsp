<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="utf-8" %>
<%@ page import="com.sh.golabl.Contant" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 页面meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>CRM系统 | 客户添加</title>
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
    <link rel="stylesheet" type="text/css" href="/assets/skin/default_skin/css/theme.css">

	<link rel="stylesheet" type="text/css" href="/assets/admin-tools/admin-forms/css/admin-forms.css">
</head>

<body class="hold-transition skin-purple sidebar-mini">

	<div class="wrapper">

		<!-- 页面头部 -->
		<jsp:include page="header.jsp"></jsp:include>
<%--		<!-- 页面头部 /-->--%>
<%--		<!-- 导航侧栏 -->--%>
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

			<!-- 内容头部 -->
			<section class="content-header">
			<h1>
				客户管理 <small>客户列表</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="${pageContext.request.contextPath}/main.jsp"><i
						class="fa fa-dashboard"></i> 首页</a></li>
				<li><a
					href="${pageContext.request.contextPath}/cust/getall">客户列表</a></li>
				<li class="active">客户表单</li>
			</ol>
			</section>
			<!-- 内容头部 /-->


				<!-- 正文区域 -->
				<section class="content"> <!--产品信息-->

				<div class="panel panel-default">
					<div class="panel-heading">填写信息</div>
					<div class="row data-type">

						<div class="admin-form theme-primary mw800 center-block" style="padding-bottom: 175px;">
                            <div class="panel heading-border">
                                 <form:form id="admin-form" name="addForm" action="/claim_voucher/add" modelAttribute="info">

                                    <div class="panel-body bg-light">
                                        <div class="section-divider mt20 mb40">
                                            <span> 基本信息 </span>
                                        </div>
                                        <div class="section">
                                            <label for="claimVoucher.cause" class="field prepend-icon">
                                                <form:input path="claimVoucher.cause" cssClass="gui-input" placeholder="事由..."/>
                                                <label for="claimVoucher.cause" class="field-icon">
                                                    <i class="fa fa-lock"></i>
                                                </label>
                                            </label>
                                        </div>
                                        <div class="section-divider mt20 mb40">
                                            <span> 费用明细 </span>
                                        </div>
                                        <div class="section row" id="items">
                                            <div>
                                                <div class="col-md-3">
                                                    <label for="items[0].item" class="field prepend-icon">
                                                        <form:select path="items[0].item" cssClass="gui-input" placeholder="花销类型..." items="${items}"/>
                                                    </label>
                                                </div>
                                                <div class="col-md-3">
                                                    <label for="items[0].amount" class="field prepend-icon">
                                                        <form:input path="items[0].amount" cssClass="gui-input money" placeholder="金额..."/>
                                                        <label for="items[0].amount" class="field-icon">
                                                            <i class="fa fa-lock"></i>
                                                        </label>
                                                    </label>
                                                </div>
                                                <div class="col-md-5">
                                                    <label for="items[0].comment" class="field prepend-icon">
                                                        <form:input path="items[0].comment" cssClass="gui-input" placeholder="备注..." />
                                                        <label for="items[0].comment" class="field-icon">
                                                            <i class="fa fa-lock"></i>
                                                        </label>
                                                    </label>
                                                </div>
                                                <div class="col-md-1" style="text-align:right;">
                                                    <button type="button" class="button"> X </button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section row">
                                            <div class="col-md-3">
                                                <label for="totalMoney" class="field prepend-icon">
                                                    <form:input id="totalMoney" path="claimVoucher.totalAmount" cssClass="gui-input" placeholder="总金额..." readonly="true"/>
                                                    <label for="totalMoney" class="field-icon">
                                                        <i class="fa fa-user"></i>
                                                    </label>
                                                </label>
                                            </div>
                                            <div class="section" style="text-align:right;">
                                                <div class="col-md-9">
                                                    <button type="button" class="button" id="addItemButton"> + </button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel-footer text-right">
                                            <button type="submit" class="button"> 保存 </button>
                                            <button type="button" class="button" onclick="javascript:window.history.go(-1);"> 返回 </button>
                                        </div>
                                    </div>
                                </form:form>
                            </div>
						</div>

				</div>
				</div>

				<!--订单信息/--> <!--工具栏-->

				<!--工具栏/--> </section>
				<!-- 正文区域 /-->

		</div>
		<!-- 内容区域 /-->

		<!-- 底部导航 -->
		<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<b>Version</b> 1.0.8
		</div>
		<strong>Copyright &copy; 2019-2099 <a
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
				locale : 'zh-CN'
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
			$('#datepicker-a3').datetimepicker({
				format : "yyyy-mm-dd hh:ii",
				autoclose : true,
				todayBtn : true,
				language : "zh-CN"
			});
		});

		$(document).ready(function() {
			// 激活导航位置
			setSidebarActive("order-manage");
			$("#datepicker-a3").datetimepicker({
				format : "yyyy-mm-dd hh:ii",

			});

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

        jQuery(document).ready(function() {

            "use strict";

            // Init Theme Core
            Core.init();

            // Init Demo JS
            Demo.init();


            /* Init datepicker
            ------------------------------------------------------------------ */
            $("#datepicker1").datepicker({
                changeMonth: true,
                changeYear: true,
                showButtonPanel: false,
                prevText: '<i class="fa fa-chevron-left"></i>',
                nextText: '<i class="fa fa-chevron-right"></i>',
                onClose: function() {
                    $("#datepicker1").trigger('blur');
                },
                beforeShow: function(input, inst) {
                    var newclass = 'admin-form';
                    var themeClass = $(this).parents('.admin-form').attr('class');
                    var smartpikr = inst.dpDiv.parent();
                    if (!smartpikr.hasClass(themeClass)) {
                        inst.dpDiv.wrap('<div class="' + themeClass + '"></div>');
                    }
                }
            });


            // Cache several DOM elements
            var pageHeader = $('.content-header').find('b');
            var adminForm = $('.admin-form');
            var options = adminForm.find('.option');
            var switches = adminForm.find('.switch');
            var buttons = adminForm.find('.button');
            var Panel = adminForm.find('.panel');

            // Form Skin Switcher
            $('#skin-switcher a').on('click', function() {
                var btnData = $(this).data('form-skin');

                $('#skin-switcher a').removeClass('item-active');
                $(this).addClass('item-active')

                adminForm.each(function(i, e) {
                    var skins = 'theme-primary theme-info theme-success theme-warning theme-danger theme-alert theme-system theme-dark'
                    var panelSkins = 'panel-primary panel-info panel-success panel-warning panel-danger panel-alert panel-system panel-dark'
                    $(e).removeClass(skins).addClass('theme-' + btnData);
                    Panel.removeClass(panelSkins).addClass('panel-' + btnData);
                    pageHeader.removeClass().addClass('text-' + btnData);
                });

                $(options).each(function(i, e) {
                    if ($(e).hasClass('block')) {
                        $(e).removeClass().addClass('block mt15 option option-' + btnData);
                    } else {
                        $(e).removeClass().addClass('option option-' + btnData);
                    }
                });

                // var sliders = $('.ui-timepicker-div', adminForm).find('.ui-slider');
                $('body').find('.ui-slider').each(function(i, e) {
                    $(e).addClass('slider-primary');
                });

                $(switches).each(function(i, ele) {
                    if ($(ele).hasClass('switch-round')) {
                        if ($(ele).hasClass('block')) {
                            $(ele).removeClass().addClass('block mt15 switch switch-round switch-' + btnData);
                        } else {
                            $(ele).removeClass().addClass('switch switch-round switch-' + btnData);
                        }
                    } else {
                        if ($(ele).hasClass('block')) {
                            $(ele).removeClass().addClass('block mt15 switch switch-' + btnData);
                        } else {
                            $(ele).removeClass().addClass('switch switch-' + btnData);
                        }
                    }

                });
                buttons.removeClass().addClass('button btn-' + btnData);
            });

            setTimeout(function() {
                adminForm.addClass('theme-primary');
                Panel.addClass('panel-primary');
                pageHeader.addClass('text-primary');

                $(options).each(function(i, e) {
                    if ($(e).hasClass('block')) {
                        $(e).removeClass().addClass('block mt15 option option-primary');
                    } else {
                        $(e).removeClass().addClass('option option-primary');
                    }
                });

                // var sliders = $('.ui-timepicker-div', adminForm).find('.ui-slider');
                $('body').find('.ui-slider').each(function(i, e) {
                    $(e).addClass('slider-primary');
                });

                $(switches).each(function(i, ele) {
                    if ($(ele).hasClass('switch-round')) {
                        if ($(ele).hasClass('block')) {
                            $(ele).removeClass().addClass('block mt15 switch switch-round switch-primary');
                        } else {
                            $(ele).removeClass().addClass('switch switch-round switch-primary');
                        }
                    } else {
                        if ($(ele).hasClass('block')) {
                            $(ele).removeClass().addClass('block mt15 switch switch-primary');
                        } else {
                            $(ele).removeClass().addClass('switch switch-primary');
                        }
                    }
                });
                buttons.removeClass().addClass('button btn-primary');
            }, 800);



        });
	</script>


</body>

</html>