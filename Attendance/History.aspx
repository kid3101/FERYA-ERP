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
     <div class="container-fluid">
        <h1 class="h3 mb-4 text-gray-800">History</h1>
        <%--<ul class="nav ull">
            <li class="active lii" >
                <a data-toggle="tab" href="#" class="lt">
                    <span class="mau">All</span>
                    <span class="number">0</span>
                </a>
            </li>
            <li class="dropdown">
                <button class="dropdown-toggle aa" data-toggle="dropdown"  title="Turn on / off the search function">Filter & search ...</button>
                <ul class="dropdown-menu filterbarfull filterbar ul2" >
                    <li>
                        <form class="ui form">
                            <table width="100%" cellpadding="10">
                                <tbody>
                                    <tr>
                                        <td>
                                            <label>
                                                <span class="kc">Status</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text texx" >
                                                <select class="form-control selectt" >
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
                                                <span class="kc">Headquarters</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div class="text texx" >
                                                <select class="form-control haizz" >
                                                    <option>All</option>
                                                </select>
                                            </div>
                                            <i class="dropdown icon"></i>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>
                                                <span class="datee">Date</span>
                                            </label>
                                        </td>
                                        <td>
                                            <div>
                                                <input class="bor" />

                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <button class="timkiem"><a href="SearchKeepingHistory.aspx" class="nut">Search</a></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="text-align:center;padding-top: 17px;">
                                            <a href="#" class="nut">Closed</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </li>

                </ul>
            </li>
        </ul>--%>
        <div class="container-fluid tongg" >
            <div class="container kk" >

                <div class="dropdown dro" >

                    <a class="ls dropdown-toggle" title="For management"  data-toggle="dropdown"><i class="fa fa-cog"></i> For management</a>

                    <ul class="dropdown-menu menuu" role="menu" aria-labelledby="menu1" >
                        <li  role="presentation" class="li2"><a role="menuitem" tabindex="-1" href="Workschedule.aspx" class="meto"><i class="fa fa-calendar"></i> Schedule work schedule</a></li>
                        <li role="presentation" class="li2"><a role="menuitem" tabindex="-1" href="SwitchShift.aspx" class="meto"><i class="fa fa-sync"></i> Switch shift</a></li>
                        <li role="presentation" class="li2"><a role="menuitem" tabindex="-1" href="HourlyReport.aspx" class="meto"><i class="fa fa-chart-bar"></i> Report</a></li>
                        <li role="presentation" class="li2"><a role="menuitem" tabindex="-1" href="ExportExcel.aspx" class="meto"><i class="fa fa-download"></i> Export excel</a></li>
                        <li role="presentation" class="li2"><a role="menuitem" tabindex="-1" href="PublicReview.aspx" class="meto"><i class="fa fa-check-circle"></i> Browse public</a></li>
                    </ul>
                </div>

                <a class="ls ls2" href="WorkingPlan.aspx""><i class="fa fa-calendar"></i> Calendar</a>
                <a class="maychamcong att2" data-toggle="tooltip" href="Timekeeper.aspx"" title="Allowing attendance for other employees or accessing from timekeeping equipment"><i class="fa fa-desktop"></i> ATTENDANCE</a>
                <a class="nutchamcong att" data-toggle="tooltip" href="TimeKeeping.aspx" title="Atendancing" ><i class="fa fa-plus-circle"></i> ATTENDANCING</a>
            </div>
            <div class="container tong2">
                <%--<a href="#" class="aaa"><i class="fa fa-chevron-left"></i></a>
                <div class="kk2">
                    <a href="#" class="au">
                        <span>Page</span>
                        <span>0</span>
                        <span>/</span>
                        <span>0</span>
                    </a>
                </div>
                <a href="#" class="mau2"><i class="fa fa-chevron-right"></i></a>--%>
            </div>
        </div>
        <br>

         <div class="table-responsive">
        <div>
            <table class="table table-bordered tablee" >
                <thead>
                    <tr>                  
                        <th>Employee</th>
                        <th>Department</th>
                        <th>Photo Time</th>
                        <th>Photo</th>
                        <th>WorkingDate</th>
                        <th>PhotoType</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                    <%for (int i = 0; i < list.Count; i++)
                    { %>                       
                        <td><%=list[i].at.LastName%></td>
                        <td><%=list[i].wk.Department.DeparmentName %></td>
                        <td><%=list[i].PhoToTimeTest %></td>
                        <td><%=list[i].PhotoURL %></td>
                        <td><%=list[i].WorkingDate %></td>
                        <td><%=list[i].PhotoType %></td>
                    </tr>
                    <%} %>   
                </tbody>
            </table>

        </div>
    </div>
    </div>
    

    
</asp:Content>

