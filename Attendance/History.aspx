<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="History.aspx.cs" Inherits="Attendance_History" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Timekeeping history</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
    <!-- Morris chart -->
    <link rel="stylesheet" href="bower_components/morris.js/morris.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="bower_components/jvectormap/jquery-jvectormap.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="bower_components/bootstrap-daterangepicker/daterangepicker.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- Google Font -->
    <link href="Style/Trang.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <link href="../css/Attendance/History.css" rel="stylesheet" />

    <script src="../js/History/History.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container-fluid" style="width: 100%;height: 119px;background-color:#eee;margin-top: -23px;
">
        <div style="line-height: 1;display: inline-block;margin-left: 40px;vertical-align: middle;">
            <a class="abc tab-content" style="text-decoration:none;" href="#"><span><h2 style="cursor:pointer;">History</h2></span></a>
        </div>
        <ul class="nav nav-tabs" style="margin-block-start: 1em;padding-inline-start: 40px;position: absolute;padding-top: 32px;">
            <li class="active" style="margin-right: 20px;">
                <a data-toggle="tab" href="#" style="cursor:pointer;text-decoration:none;">
                    <span style="color:black;">All</span>
                    <span class="number">0</span>
                </a>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" style="padding-right: 30px;color:black;cursor:pointer;" title="Turn on / off the search function">Filter & search ...</a>
                <ul class="dropdown-menu filterbarfull filterbar" style="top: 0px;transform: translate3d(0px, 26px, 0px);width: 354px;margin-top: 185px;">
                    <li>
                        <form class="ui form">
                            <table width="100%" cellpadding="10">
                                <tbody>
                                    <tr>
                                        <td>
                                            <label>
                                                <span style="margin-right:10px;">Status</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text" style="cursor:pointer;">
                                                <select class="form-control" style="border-radius: 7px;">
                                                    <option>All</option>
                                                    <option>Doing</option>
                                                    <option>Finish</option>
                                                    <option>Confirmed</option>
                                                    <option>Faulty</option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>
                                                <span style="margin-right:10px;">Headquarters</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text" style="cursor:pointer;">
                                                <select class="form-control" style="cursor:pointer;border-radius: 7px;">
                                                    <option>All</option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>
                                                <span style="margin-right:10px;">Date</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div>
                                                <input style="height: 31px;width: 221px;border-radius: 6px;margin-bottom: 12px;margin-left: 3px;border-style: groove;" />

                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <button class="timkiem"><a href="SearchKeepingHistory.aspx" style="color:white;text-decoration:none;">Search</a></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="text-align:center;padding-top: 17px;">
                                            <a href="#" style="text-decoration:none;">Closed</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </li>

                </ul>
            </li>
        </ul>
        <div class="container-fluid" style="margin-top: -34px;margin-left: 453px;">
            <div class="container" style="float:left;">

                <div class="dropdown" style="position: relative;display: inline-block;">

                    <a class="ls dropdown-toggle" title="For management" style="margin-left: -10px;background-color: #eee;border-color: #eee;" data-toggle="dropdown"><i class="fa fa-cog"></i> For management</a>

                    <ul class="dropdown-menu " role="menu" aria-labelledby="menu1" style="width: 200px;">
                        <li  role="presentation" style="margin-bottom: 10px;margin-left: 10px;"><a role="menuitem" tabindex="-1" href="Workschedule.aspx" style="color: black;text-decoration:none;"><i class="fa fa-calendar"></i> Schedule work schedule</a></li>
                        <li role="presentation" style="margin-bottom: 10px;margin-left: 10px;"><a role="menuitem" tabindex="-1" href="SwitchShift.aspx" style="color: black;text-decoration:none;"><i class="fa fa-sync"></i> Switch shift</a></li>
                        <li role="presentation" style="margin-bottom: 10px;margin-left: 10px;"><a role="menuitem" tabindex="-1" href="HourlyReport.aspx" style="color: black;text-decoration:none;"><i class="fa fa-chart-bar"></i> Report</a></li>
                        <li role="presentation" style="margin-bottom: 10px;margin-left: 10px;"><a role="menuitem" tabindex="-1" href="ExportExcel.aspx" style="color: black;text-decoration:none;"><i class="fa fa-download"></i> Export excel</a></li>
                        <li role="presentation" style="margin-bottom: 10px;margin-left: 10px;"><a role="menuitem" tabindex="-1" href="PublicReview.aspx" style="color: black;text-decoration:none;"><i class="fa fa-check-circle"></i> Browse public</a></li>
                    </ul>
                </div>

                <a class="ls" style="margin-left: 15px;text-decoration:none;" href="WorkingPlan.aspx""><i class="fa fa-calendar"></i> Calendar</a>
                <a class="maychamcong" data-toggle="tooltip" href="Timekeeper.aspx"" title="Allowing attendance for other employees or accessing from timekeeping equipment" style="color:white;margin-left: 15px;padding-left: 20px;padding-right: 20px;text-decoration:none;"><i class="fa fa-desktop"></i> TIMEKEEPER</a>
                <a class="nutchamcong" data-toggle="tooltip" href="TimeKeeping.aspx" title="Timekeeping" style="color:white;margin-left: 15px;padding-left: 20px;padding-right: 20px;text-decoration:none;"><i class="fa fa-plus-circle"></i> TIMEKEEPING</a>
            </div>
            <div class="container" style="display: inline-flex;padding-left: 320px; padding-top: 20px;">
                <a href="#" style="height: 20px;width: 20px;color: #555;"><i class="fa fa-chevron-left"></i></a>
                <div style="margin-right: 6px;">
                    <a href="#" style="color:#555;text-decoration:none;">
                        <span>Page</span>
                        <span>0</span>
                        <span>/</span>
                        <span>0</span>
                    </a>
                </div>
                <a href="#" style="height: 48px;width: 48px;color: #555;"><i class="fa fa-chevron-right"></i></a>
            </div>
        </div>
        <br>
    </div>
    <div class="table-responsive">
        <div>
            <table class="table" style="width:100%; color:grey;margin-top: 20px;">
                <thead>
                    <tr>
                        <th style="color:black;">SID</th>
                        <th rowspan="2">DATE</th>
                        <th>HEADQUARTERS</th>
                        <th>SHIFT</th>
                        <th>TIME</th>
                        <th>TIME</th>
                        <th>COEFFICIENT</th>
                        <th>OT</th>
                        <th>ON LATE (CP)</th>
                        <th>EARLY OUT (CP)</th>
                        <th>STATUS</th>
                        <th>CONFIRMER</th>
                    </tr>
                </thead>
            </table>

        </div>
    </div>

    
</asp:Content>

