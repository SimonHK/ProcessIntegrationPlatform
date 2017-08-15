﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%--
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">

<!-- jsp文件头和头部 -->
<%@ include file="../index/top.jsp"%>
<!-- 百度echarts -->
<script src="plugins/echarts/echarts.min.js"></script>
</head>
<body class="no-skin">

	<!-- /section:basics/navbar.layout -->
	<div class="main-container" id="main-container">
		<!-- /section:basics/sidebar -->
		<div class="main-content">
			<div class="main-content-inner">
				<div class="page-content">
					<div class="hr hr-18 dotted hr-double"></div>
					<div class="row">
						<div class="col-xs-12">

							<div class="alert alert-block alert-success">
								<button type="button" class="close" data-dismiss="alert">
									<i class="ace-icon fa fa-times"></i>
								</button>
								<i class="ace-icon fa fa-check green"></i>
								欢迎使用 GeneWisdom Admin 系统&nbsp;&nbsp;
								<strong class="green">
									&nbsp;
									<a href="http://www.nswt.com.cn" target="_blank"><small>(&nbsp;www.nswt.com.cn&nbsp;)</small></a>
								</strong>
							</div>
							
							
							<div id="main" style="width: 600px;height:300px;"></div>
							<script type="text/javascript">
						        // 基于准备好的dom，初始化echarts实例
						        var myChart = echarts.init(document.getElementById('main'));
						
						        // 指定图表的配置项和数据
								var option = {
						            title: {
						                text: 'GeneWisdom Admin用户统计'
						            },
						            tooltip: {},
						            xAxis: {
						                data: ["系统用户","系统会员"]
						            },
						            yAxis: {},
						            series: [
						               {
						                name: '',
						                type: 'bar',
						                data: [${pd.userCount},${pd.appUserCount}],
						                itemStyle: {
						                    normal: {
						                        color: function(params) {
						                            // build a color map as your need.
						                            var colorList = ['#6FB3E0','#87B87F'];
						                            return colorList[params.dataIndex];
						                        }
						                    }
						                }
						               }
						            ]
						        };	        

						        // 使用刚指定的配置项和数据显示图表。
						        myChart.setOption(option);
						    </script>
							
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<!-- /.main-content -->


		<!-- 返回顶部 -->
		<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
			<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>

	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->
	<!-- 页面底部js¨ -->
	<%@ include file="../index/foot.jsp"%>
	<!-- ace scripts -->
	<script src="static/ace/js/ace/ace.js"></script>
	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		$(top.hangge());
	</script>
<script type="text/javascript" src="static/ace/js/jquery.js"></script>
</body>
</html>--%>
<!DOCTYPE html>
<html lang="en">
<head>
	<base href="<%=basePath%>">
	<link rel="shortcut icon" href="#" type="image/png">

	<title>首页</title>

	<!--icheck-->
	<link href="plugins/adminex/js/iCheck/skins/minimal/minimal.css" rel="stylesheet">
	<link href="plugins/adminex/js/iCheck/skins/square/square.css" rel="stylesheet">
	<link href="plugins/adminex/js/iCheck/skins/square/red.css" rel="stylesheet">
	<link href="plugins/adminex/js/iCheck/skins/square/blue.css" rel="stylesheet">

	<!--dashboard calendar-->
	<link href="plugins/adminex/css/clndr.css" rel="stylesheet">

	<!--Morris Chart CSS -->
	<link rel="stylesheet" href="plugins/adminex/js/morris-chart/morris.css">

	<!--common-->
	<link href="plugins/adminex/css/style.css" rel="stylesheet">
	<link href="plugins/adminex/css/style-responsive.css" rel="stylesheet">




	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="plugins/adminex/js/html5shiv.js"></script>
	<script src="plugins/adminex/js/respond.min.js"></script>
	<![endif]-->
</head>

<body class="sticky-header">

<section>
	<!-- main content start-->
	<%--<div class="main-content" >--%>

		<!-- page heading start-->
		<div class="page-heading">
			<h3>
				后台首页
			</h3>
			<ul class="breadcrumb">
				<li>
					<a href="#">首页</a>
				</li>
				<li class="active"> 个人工作台</li>
			</ul>
			<div class="state-info">
				<section class="panel">
					<div class="panel-body">
						<div class="summary">
							<span>年度费用</span>
							<h3 class="red-txt">¥ 45,600</h3>
						</div>
						<div id="income" class="chart-bar"></div>
					</div>
				</section>
				<section class="panel">
					<div class="panel-body">
						<div class="summary">
							<span>年度收入</span>
							<h3 class="green-txt">¥ 45,600</h3>
						</div>
						<div id="expense" class="chart-bar"></div>
					</div>
				</section>
			</div>
		</div>
		<!-- page heading end-->

		<!--body wrapper start-->
		<div class="wrapper">
			<div class="row">
				<div class="col-md-6">
					<!--statistics start-->
					<div class="row state-overview">
						<div class="col-md-6 col-xs-12 col-sm-6">
							<div class="panel purple">
								<div class="symbol">
									<i class="fa fa-gavel"></i>
								</div>
								<div class="state-value">
									<div class="value">230</div>
									<div class="title">新订单</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-xs-12 col-sm-6">
							<div class="panel red">
								<div class="symbol">
									<i class="fa fa-tags"></i>
								</div>
								<div class="state-value">
									<div class="value">3490</div>
									<div class="title">Copy Sold</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row state-overview">
						<div class="col-md-6 col-xs-12 col-sm-6">
							<div class="panel blue">
								<div class="symbol">
									<i class="fa fa-money"></i>
								</div>
								<div class="state-value">
									<div class="value">22014</div>
									<div class="title"> 总记录📖</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-xs-12 col-sm-6">
							<div class="panel green">
								<div class="symbol">
									<i class="fa fa-eye"></i>
								</div>
								<div class="state-value">
									<div class="value">390</div>
									<div class="title"> 非法访问</div>
								</div>
							</div>
						</div>
					</div>
					<!--statistics end-->
				</div>
				<div class="col-md-6">
					<!--more statistics box start-->
					<div class="panel deep-purple-box">
						<div class="panel-body">
							<div class="row">
								<div class="col-md-7 col-sm-7 col-xs-7">
									<div id="graph-donut" class="revenue-graph"></div>

								</div>
								<div class="col-md-5 col-sm-5 col-xs-5">
									<ul class="bar-legend">
										<li><span class="blue"></span> Open rate</li>
										<li><span class="green"></span> Click rate</li>
										<li><span class="purple"></span> Share rate</li>
										<li><span class="red"></span> Unsubscribed rate</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!--more statistics box end-->
				</div>
			</div>
			<div class="row">
				<div class="col-md-8">
					<div class="panel">
						<div class="panel-body">
							<div class="row revenue-states">
								<div class="col-md-6 col-sm-6 col-xs-12">
									<h4>月度收入报告</h4>
									<div class="icheck">
										<div class="square-red single-row">
											<div class="checkbox ">
												<input type="checkbox" checked>
												<label>Online</label>
											</div>
										</div>
										<div class="square-blue single-row">
											<div class="checkbox ">
												<input type="checkbox">
												<label>Offline </label>
											</div>
										</div>
									</div>

								</div>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<ul class="revenue-nav">
										<li><a href="#">星期</a></li>
										<li><a href="#">月度</a></li>
										<li class="active"><a href="#">年度</a></li>
									</ul>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="clearfix">
										<div id="main-chart-legend" class="pull-right">
										</div>
									</div>

									<div id="main-chart">
										<div id="main-chart-container" class="main-chart">
										</div>
									</div>
									<ul class="revenue-short-info">
										<li>
											<h1 class="red">15%</h1>
											<p>Server Load</p>
										</li>
										<li>
											<h1 class="purple">30%</h1>
											<p>Disk Space</p>
										</li>
										<li>
											<h1 class="green">84%</h1>
											<p>Transferred</p>
										</li>
										<li>
											<h1 class="blue">28%</h1>
											<p>Temperature</p>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="panel">
						<header class="panel-heading">
							最佳会员
							<span class="tools pull-right">
                                <a href="javascript:;" class="fa fa-chevron-down"></a>
                                <a href="javascript:;" class="fa fa-times"></a>
                             </span>
						</header>
						<div class="panel-body">
							<ul class="goal-progress">
								<li>
									<div class="prog-avatar">
										<img src="plugins/adminex/images/photos/user1.png" alt=""/>
									</div>
									<div class="details">
										<div class="title">
											<a href="#">John Doe</a> - Project Lead
										</div>
										<div class="progress progress-xs">
											<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
												<span class="">70%</span>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="prog-avatar">
										<img src="plugins/adminex/images/photos/user2.png" alt=""/>
									</div>
									<div class="details">
										<div class="title">
											<a href="#">Cameron Doe</a> - Sales
										</div>
										<div class="progress progress-xs">
											<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 91%">
												<span class="">91%</span>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="prog-avatar">
										<img src="plugins/adminex/images/photos/user3.png" alt=""/>
									</div>
									<div class="details">
										<div class="title">
											<a href="#">Hoffman Doe</a> - Support
										</div>
										<div class="progress progress-xs">
											<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
												<span class="">40%</span>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="prog-avatar">
										<img src="plugins/adminex/images/photos/user4.png" alt=""/>
									</div>
									<div class="details">
										<div class="title">
											<a href="#">Jane Doe</a> - Marketing
										</div>
										<div class="progress progress-xs">
											<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
												<span class="">20%</span>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="prog-avatar">
										<img src="plugins/adminex/images/photos/user5.png" alt=""/>
									</div>
									<div class="details">
										<div class="title">
											<a href="#">Hoffman Doe</a> - Support
										</div>
										<div class="progress progress-xs">
											<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
												<span class="">45%</span>
											</div>
										</div>
									</div>
								</li>
							</ul>
							<div class="text-center"><a href="#">View all Goals</a></div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-4">
					<div class="panel">
						<div class="panel-body extra-pad">
							<h4 class="pros-title">潜在商品</h4>
							<div class="row">
								<div class="col-sm-4 col-xs-4">
									<div id="p-lead-1"></div>
									<p class="p-chart-title">二十四史</p>
								</div>
								<div class="col-sm-4 col-xs-4">
									<div id="p-lead-2"></div>
									<p class="p-chart-title">清明上河图</p>
								</div>
								<div class="col-sm-4 col-xs-4">
									<div id="p-lead-3"></div>
									<p class="p-chart-title">毛泽东诗词</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="panel">
						<div class="panel-body extra-pad">
							<div class="col-sm-6 col-xs-6">
								<div class="v-title">Visits</div>
								<div class="v-value">10,090</div>
								<div id="visit-1"></div>
								<div class="v-info">Pages/Visit</div>
							</div>
							<div class="col-sm-6 col-xs-6">
								<div class="v-title">Unique Visitors</div>
								<div class="v-value">8,173</div>
								<div id="visit-2"></div>
								<div class="v-info">Avg. Visit Duration</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">

					<div class="panel green-box">
						<div class="panel-body extra-pad">
							<div class="row">
								<div class="col-sm-6 col-xs-6">
									<div class="knob">
                                        <span class="chart" data-percent="79">
                                            <span class="percent">79% <span class="sm">New Visit</span></span>
                                        </span>
									</div>
								</div>
								<div class="col-sm-6 col-xs-6">
									<div class="knob">
                                        <span class="chart" data-percent="56">
                                            <span class="percent">56% <span class="sm">Bounce rate</span></span>
                                        </span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-4">
					<div class="panel">
						<div class="panel-body">
							<div class="calendar-block ">
								<div class="cal1">

								</div>
							</div>

						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="panel">
						<header class="panel-heading">
							Todo List
							<span class="tools pull-right">
                                <a class="fa fa-chevron-down" href="javascript:;"></a>
                                <a class="fa fa-times" href="javascript:;"></a>
                             </span>
						</header>
						<div class="panel-body">
							<ul class="to-do-list" id="sortable-todo">
								<li class="clearfix">
                                    <span class="drag-marker">
                                    <i></i>
                                    </span>
									<div class="todo-check pull-left">
										<input type="checkbox" value="None" id="todo-check"/>
										<label for="todo-check"></label>
									</div>
									<p class="todo-title">
										Dashboard Design & Wiget placement
									</p>
									<div class="todo-actionlist pull-right clearfix">

										<a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
									</div>
								</li>
								<li class="clearfix">
                                    <span class="drag-marker">
                                    <i></i>
                                    </span>
									<div class="todo-check pull-left">
										<input type="checkbox" value="None" id="todo-check1"/>
										<label for="todo-check1"></label>
									</div>
									<p class="todo-title">
										Wireframe prepare for new design
									</p>
									<div class="todo-actionlist pull-right clearfix">

										<a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
									</div>
								</li>
								<li class="clearfix">
                                    <span class="drag-marker">
                                    <i></i>
                                    </span>
									<div class="todo-check pull-left">
										<input type="checkbox" value="None" id="todo-check2"/>
										<label for="todo-check2"></label>
									</div>
									<p class="todo-title">
										UI perfection testing for Mega Section
									</p>
									<div class="todo-actionlist pull-right clearfix">

										<a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
									</div>
								</li>
								<li class="clearfix">
                                    <span class="drag-marker">
                                    <i></i>
                                    </span>
									<div class="todo-check pull-left">
										<input type="checkbox" value="None" id="todo-check3"/>
										<label for="todo-check3"></label>
									</div>
									<p class="todo-title">
										Wiget & Design placement
									</p>
									<div class="todo-actionlist pull-right clearfix">

										<a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
									</div>
								</li>
								<li class="clearfix">
                                    <span class="drag-marker">
                                    <i></i>
                                    </span>
									<div class="todo-check pull-left">
										<input type="checkbox" value="None" id="todo-check4"/>
										<label for="todo-check4"></label>
									</div>
									<p class="todo-title">
										Development & Wiget placement
									</p>
									<div class="todo-actionlist pull-right clearfix">

										<a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
									</div>
								</li>

							</ul>
							<div class="row">
								<div class="col-md-12">
									<form role="form" class="form-inline">
										<div class="form-group todo-entry">
											<input type="text" placeholder="Enter your ToDo List" class="form-control" style="width: 100%">
										</div>
										<button class="btn btn-primary pull-right" type="submit">+</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="panel blue-box twt-info">
						<div class="panel-body">
							<h3>19 Februay 2014</h3>

							<p>AdminEx is new model of admin
								dashboard <a href="#">http://t.co/3laCVziTw4</a>
								4 days ago by John Doe</p>
						</div>
					</div>
					<div class="panel">
						<div class="panel-body">
							<div class="media usr-info">
								<a href="#" class="pull-left">
									<img class="thumb" src="plugins/adminex/images/photos/user2.png" alt=""/>
								</a>
								<div class="media-body">
									<h4 class="media-heading">Mila Watson</h4>
									<span>Senior UI Designer</span>
									<p>I use to design websites and applications for the web.</p>
								</div>
							</div>
						</div>
						<div class="panel-footer custom-trq-footer">
							<ul class="user-states">
								<li>
									<i class="fa fa-heart"></i> 127
								</li>
								<li>
									<i class="fa fa-eye"></i> 853
								</li>
								<li>
									<i class="fa fa-user"></i> 311
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--body wrapper end-->

		<!--footer section start-->
		<footer>
			2017 &copy; NSWT
		</footer>
		<!--footer section end-->


	<%--</div>--%>
	<!-- main content end-->
</section>

<!-- Placed js at the end of the document so the pages load faster -->
<script src="plugins/adminex/js/jquery-1.10.2.min.js"></script>
<script src="plugins/adminex/js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="plugins/adminex/js/jquery-migrate-1.2.1.min.js"></script>
<script src="plugins/adminex/js/bootstrap.min.js"></script>
<script src="plugins/adminex/js/modernizr.min.js"></script>
<script src="plugins/adminex/js/jquery.nicescroll.js"></script>

<!--easy pie chart-->
<script src="plugins/adminex/js/easypiechart/jquery.easypiechart.js"></script>
<script src="plugins/adminex/js/easypiechart/easypiechart-init.js"></script>

<!--Sparkline Chart-->
<script src="plugins/adminex/js/sparkline/jquery.sparkline.js"></script>
<script src="plugins/adminex/js/sparkline/sparkline-init.js"></script>

<!--icheck -->
<script src="plugins/adminex/js/iCheck/jquery.icheck.js"></script>
<script src="plugins/adminex/js/icheck-init.js"></script>

<!-- jQuery Flot Chart-->
<script src="plugins/adminex/js/flot-chart/jquery.flot.js"></script>
<script src="plugins/adminex/js/flot-chart/jquery.flot.tooltip.js"></script>
<script src="plugins/adminex/js/flot-chart/jquery.flot.resize.js"></script>


<!--Morris Chart-->
<script src="plugins/adminex/js/morris-chart/morris.js"></script>
<script src="plugins/adminex/js/morris-chart/raphael-min.js"></script>

<!--Calendar-->
<script src="plugins/adminex/js/calendar/clndr.js"></script>
<script src="plugins/adminex/js/calendar/evnt.calendar.init.js"></script>
<script src="plugins/adminex/js/calendar/moment-2.2.1.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.2/underscore-min.js"></script>

<!--common scripts for all pages-->
<script src="plugins/adminex/js/scripts.js"></script>

<!--Dashboard Charts-->
<script src="plugins/adminex/js/dashboard-chart-init.js"></script>


</body>
</html>
<script type="text/javascript">
    $(top.hangge());
</script>