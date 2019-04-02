<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HourlyReport.aspx.cs" Inherits="Attendance_HourlyReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>History</title>
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
    <link href="../css/Attendance/HourlyReport.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid" >

        <div style="line-height: 1;display: inline-block;margin-left: 40px;vertical-align: middle;">
            <a class="abc tab-content" href="History.aspx" style="text-decoration:none;"><span><h2 style="cursor:pointer;">Timekeeping history</h2></span></a>
        </div>
         <ul class="nav " style="margin-block-start: 1em;padding-inline-start: 40px;position: absolute;padding-top: 32px;">
            <li class="active" style="margin-right: 20px;">
                <a data-toggle="tab" href="#" style="cursor:pointer;text-decoration:none;">
                    <span style="color:black;">All</span>
                    <span class="number">2</span>
                </a>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" style="padding-right: 30px;color:black;cursor:pointer;" title="Turn on / off the search function">Filter & search ...</a>
                <ul class="dropdown-menu filterbarfull filterbar" style="width: 1169px;border: none;background-color: rgb(238, 238, 238);margin-left: 173px;margin-top: 6px;top: 0px;transform: translate3d(-284px, 22px, 0px);">
                    <li>
                        <form class="ui form" style="margin-left: -2px;">
                            <div style="display: flex;flex-direction: row;">
                                <div>
                                    <span style="margin-right:0;"></span>
                                    <div style="position: relative;font-weight: 400;font-size: .92857143em;display: -ms-inline-flexbox;display: inline-flex;color: rgba(0,0,0,.87);">
                                        <input type="text" name="keyword" placeholder="Key word" style="padding: 3px 5px;" />
                                    </div>
                                </div>
                                <div>
                                    <label style="color:rgba(0,0,0,.87);margin-left: 20px;">
                                        <span>Date</span>
                                        <span>:</span>
                                    </label>
                                    <div style="position: relative;font-weight: 400;display: inline-flex;color: rgba(0,0,0,.87);">
                                        <input title="DD/MM/YYYY HH:mm" type="date" />
                                        <input title="DD/MM/YYYY HH:mm" type="date" />
                                        <i class="fa fa-calendar" style="margin-top: 5px;margin-left: -46px;margin-right: 52px;"></i>
                                    </div>
                                </div>
                                <div>
                                    <label>
                                        <span>Employees</span>
                                        <span>:</span>
                                    </label>
                                    <div style="min-width: 0;background-color: #fff;display: inline-flex;">
                                        <input type="hidden" />
                                        <input placeholder="---" style="text-align:center;" />
                                        <div></div>
                                        <i></i>
                                    </div>
                                </div>
                                <div>
                                    <label style="margin-left: 20px;">
                                        <span>Department</span>
                                        <span>:</span>
                                    </label>
                                    <div style="display: inline-flex;">
                                        <div>
                                            <select style="border: none;background-color: #eee;">
                                                <option>All</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <label style="margin-left: 20px;">
                                        <span>Headquarters</span>
                                        <span>:</span>
                                    </label>
                                    <div style="display: inline-flex;">
                                        <div>
                                            <select style="border: none;background-color: #eee;">
                                                <option>All</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <button style="padding-left: 20px;padding-right: 20px;" class="tim"><a href="SearchHourlyReport.html" style="color:white;text-decoration:none;">Search</a></button>
                            </div>
                        </form>
                    </li>

                </ul>
            </li>
        </ul>
        <div class="container-fluid" style="margin-top: -34px;margin-left: 791px;">
            <div class="container" style="float:left;display: inline-flex;padding-left: 320px;">
                <a class="nutchamcong" data-toggle="modal" data-target="#myModal" title="Export Excel" style="color:white;"><i class="fa fa-download"></i> EXPORT EXCEL</a>
                <!-- Modal -->
                <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h2 class="modal-title" style="float:left;">Export Excel attendance record</h2>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="form-group">
                                        <label style="float:left;">Time</label>
                                        <input class="form-control">
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal" style="border: none;border-radius: 17px;margin-right: 10px;padding-left: 20px;padding-right: 20px;">Close</button>
                                <button type="submit" class="nutchamcong2" style="border:none;padding-left: 20px;padding-right: 20px;"><a href="File.html" style="color:white;">Download the Excel file</a></button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="container" style="display: inline-flex;padding-left: 320px;">
                <a href="#" style="height: 20px;width: 20px;color: #555;"><i class="fa fa-chevron-left"></i></a>
                <div style="margin-right: 6px;">
                    <a href="#" style="color:#555;">
                        <span>Page</span>
                        <span>1</span>
                        <span>/</span>
                        <span>1</span>
                    </a>
                </div>
                <a href="#" style="height: 48px;width: 48px;color: #555;"><i class="fa fa-chevron-right"></i></a>
            </div>
        </div>
        <br>

          <div>
        <%--<div style="margin:10px 0;">
            <div style="margin:0;">
                <div style="width: 25%;float:left;border-right-style: groove;">
                    <div style="cursor: pointer;font-size: 40px;text-align:center;">
                        <div>0</div>
                        <div>Go late</div>
                    </div>
                </div>
                <div style="width: 25%;float:right;">
                    <div style="cursor: pointer;font-size: 40px;text-align:center;">
                        <div>0</div>
                        <div>No more going late</div>
                    </div>
                </div>
                <div style="width: 25%;float:right;border-right-style: groove;">
                    <div style="cursor: pointer;font-size: 40px;text-align:center;">
                        <div>0</div>
                        <div>New late</div>
                    </div>
                </div>
                <div style="width: 25%;float:right;border-right-style: groove;">
                    <div style="cursor: pointer;font-size: 40px;text-align:center;">
                        <div>0</div>
                        <div>Come back soon</div>
                    </div>
                </div>
            </div>
            <div style="border-top-style: dotted;clear: both;color: #eee;"></div>
        </div>--%>
        <div>
            <div class="table-responsive">
                <table class="table table-hover" style="width:100%; color:grey;margin-top: 20px;">
                    <thead>
                        <tr>
                            <th>INTERNAL CODE</th>
                            <th rowspan="2">EMPLOYEES</th>
                            <th>POSITION</th>
                            <th>DEPARTMENT</th>
                            <th>HEADQUARTERS</th>
                            <th>TIME</th>
                            <th>COEFFICIENT</th>
                            <th>LATE TIME NUMBER</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td></td>
                            <td>Employees 1</td>
                            <td>Secretary</td>
                            <td>Department 1</td>
                            <td>Hoa sứ</td>
                            <td>-</td>
                            <td>0</td>
                            <td>0</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>Employees 2</td>
                            <td>Cashier</td>
                            <td>Department 1</td>
                            <td>Hoa sứ</td>
                            <td>-</td>
                            <td>0</td>
                            <td>0</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    </div>
  

</asp:Content>

