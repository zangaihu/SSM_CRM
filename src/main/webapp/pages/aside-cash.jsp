<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="${pageContext.request.contextPath}/img/user2-160x160.jpg"
					class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p>${sessionScope.employee.name}</p>
				<a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
			</div>
		</div>

		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">菜单</li>
			<li id="admin-index"><a
				href="/pages/main.jsp"><i
					class="fa fa-dashboard"></i> <span>首页</span></a></li>



			<li class="treeview"><a href="#"> <i class="fa fa-cube"></i>
				<span>业务管理</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">

					<li id="system-setting"><a
							href="${pageContext.request.contextPath}/chancelist">
						<i class="fa fa-circle-o"></i> 所有业务
					</a></li>

					<li id="system-setting"><a
						href="${pageContext.request.contextPath}/gochanceadd"> <i
						class="fa fa-circle-o"></i> 新增业务
				</a></li>

				</ul></li>

			<li class="treeview"><a href="#"> <i class="fa fa-cube"></i>
				<span>申请</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">

					<li id="system-setting"><a
							href="${pageContext.request.contextPath}/claim_voucher/deal">
						<i class="fa fa-circle-o"></i> 待处理报销单
					</a></li>
					<li id="system-setting"><a
							href="${pageContext.request.contextPath}/claim_voucher/to_add"> <i
							class="fa fa-circle-o"></i> 添加申请
					</a></li>

					<li id="system-setting"><a
							href="${pageContext.request.contextPath}/claim_voucher/self"> <i
							class="fa fa-circle-o"></i> 个人报销单
					</a></li>

				</ul></li>






		</ul>
	</section>
	<!-- /.sidebar -->
</aside>