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
				<p>${sessionScope.existUser.userName}</p>
				<a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
			</div>
		</div>

		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">菜单</li>
			<li id="admin-index"><a
				href="/pages/main.jsp"><i
					class="fa fa-dashboard"></i> <span>首页</span></a></li>

			<li class="treeview"><a href="#"> <i class="fa fa-cogs"></i>
					<span>客户管理</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>


			</a>
				<ul class="treeview-menu">

					<li id="system-setting"><a
						href="${pageContext.request.contextPath}/cust/getallpages"> <i
							class="fa fa-circle-o"></i> 客户列表
					</a></li>
					<li id="system-setting"><a
						href="/cust/goCustomerAdd"> <i
							class="fa fa-circle-o"></i> 增加客户
					</a></li>

				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-cube"></i>
					<span>联系人管理</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">

					<li id="system-setting"><a
						href="${pageContext.request.contextPath}/linkman_findall">
							<i class="fa fa-circle-o"></i> 联系人列表
					</a></li>
					<li id="system-setting"><a
						href="${pageContext.request.contextPath}/golinkmanadd"> <i
							class="fa fa-circle-o"></i> 新增联系人
					</a></li>

				</ul></li>

			<li class="treeview"><a href="#"> <i class="fa fa-cube"></i>
					<span>拜访记录管理</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">

					<li id="system-setting"><a
						href="${pageContext.request.contextPath}/getvisit">
							<i class="fa fa-circle-o"></i> 记录列表
					</a></li>
					<li id="system-setting"><a
						href="${pageContext.request.contextPath}/govisitadd"> <i
							class="fa fa-circle-o"></i> 新增记录
					</a></li>

				</ul></li>
		<%--	<li class="treeview"><a href="#"> <i class="fa fa-cube"></i>
					<span>用户管理</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">

					<li id="system-setting"><a
						href="${pageContext.request.contextPath}/userlist">
							<i class="fa fa-circle-o"></i> 系统用户列表
					</a></li>
					<li id="system-setting"><a
						href="${pageContext.request.contextPath}/go_user_add"> <i
							class="fa fa-circle-o"></i> 新增用户
					</a></li>

				</ul></li>
--%>
			<li class="treeview"><a href="/showcharts"> <i class="fa fa-cube"></i>
					<span>统计分析</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				    </span>
			  </a>

			<li class="treeview"><a href="#"> <i class="fa fa-cube"></i>
				<span>业务管理</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">

					<li id="system-setting"><a
							href="${pageContext.request.contextPath}/chancelist">
						<i class="fa fa-circle-o"></i> 所有
					</a></li>
					<li id="system-setting"><a
							href="${pageContext.request.contextPath}/gochanceadd"> <i
							class="fa fa-circle-o"></i> 新增业务
					</a></li>

				</ul></li>

			<li class="treeview"><a href="#"> <i class="fa fa-cube"></i>
				<span>部门管理</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">

					<li id="system-setting"><a
							href="${pageContext.request.contextPath}/department/list">
						<i class="fa fa-circle-o"></i> 部门列表
					</a></li>

				</ul></li>

			<li class="treeview"><a href="#"> <i class="fa fa-cube"></i>
				<span>员工管理</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">

					<li id="system-setting"><a
							href="${pageContext.request.contextPath}/employee/list">
						<i class="fa fa-circle-o"></i> 员工列表
					</a></li>
					<li id="system-setting"><a
							href="${pageContext.request.contextPath}/employee/to_add"> <i
							class="fa fa-circle-o"></i> 添加员工
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