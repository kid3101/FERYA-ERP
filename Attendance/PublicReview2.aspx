<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PublicReview2.aspx.cs" Inherits="Attendance_PublicReview2" %>

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

    <link href="../css/Attendance/TimeAttendance.css" rel="stylesheet" />
    <link href="../css/Setting/AccessRight.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid" style="width: 100%;height: 119px;background-color:#eee;margin-top: -24px;">
        <div style="line-height: 1;display: inline-block;margin-left: 40px;vertical-align: middle;">
            <a class="abc tab-content" style="text-decoration:none;" href="History.aspx"><span><h2 style="cursor:pointer;">History</h2></span></a>
        </div>
        <ul class="nav nav-tabs" style="margin-block-start: 1em;padding-inline-start: 40px;position: absolute;padding-top: 32px;">
            <li class="active" style="margin-right: 20px;">
                <a data-toggle="tab" href="#" style="cursor:pointer;text-decoration:none;">
                    <span style="color:black;">All</span>
                    <span class="number">1</span>
                </a>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" style="padding-right: 30px;color:black;cursor:pointer;" title="Turn on / off the search function">Filter & search ...</a>
                <ul class="dropdown-menu filterbarfull filterbar" style="width: 356px;top: 41.1146px;left: -2.319px;">
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
                                            <a href="#">Closed</a>
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
                        <li  role="presentation" style="margin-bottom: 10px;margin-left: 10px;"><a role="menuitem" tabindex="-1" href="#" style="color: black;text-decoration:none;"><i class="fa fa-calendar"></i> Schedule work schedule</a></li>
                        <li role="presentation" style="margin-bottom: 10px;margin-left: 10px;"><a role="menuitem" tabindex="-1" href="SwitchShift.aspx" style="color: black;text-decoration:none;"><i class="fa fa-sync"></i> Switch shift</a></li>
                        <li role="presentation" style="margin-bottom: 10px;margin-left: 10px;"><a role="menuitem" tabindex="-1" href="HourlyReport.aspx" style="color: black;text-decoration:none;"><i class="fa fa-chart-bar"></i> Report</a></li>
                        <li role="presentation" style="margin-bottom: 10px;margin-left: 10px;"><a role="menuitem" tabindex="-1" href="ExportExcel.aspx" style="color: black;text-decoration:none;"><i class="fa fa-download"></i> Export excel</a></li>
                        <li role="presentation" style="margin-bottom: 10px;margin-left: 10px;"><a role="menuitem" tabindex="-1" href="TimeAttendance.aspx" style="color: black;text-decoration:none;"><i class="fa fa-check-circle"></i> Browse public</a></li>
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
                        <span>1</span>
                        <span>/</span>
                        <span>1</span>
                    </a>
                </div>
                <a href="#" style="height: 48px;width: 48px;color: #555;"><i class="fa fa-chevron-right"></i></a>
            </div>
        </div>
        <br>
    </div>
    <div class="table-responsive">
        <div>
            <table class="table table-hover" style="width:100%; color:grey;margin-top: 20px;">
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
                        <th></th>
                        <th>IP ADDRESS</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>4545</td>
                        <td>To day</td>
                        <td>ffdf</td>
                        <td>
                            <a href="Shift.aspx" style="background: #FFF;padding-top: 3px;padding-right: 14px;border: 2px solid rgba(34,36,38,.15);border-radius: 5px;font-size: 0.642857rem;"></a>
                            <span style="margin-left: 6px;">
                                <span>09:00</span>
                                <span>17:00</span>
                            </span>
                        </td>
                        <td>
                            <span style="color:red;" title="Late: 15:32">15:32</span>
                            <span> - </span>
                            <span><i class="fa fa-file" title="Notes on:fdfd"></i></span>
                        </td>
                        <td style="text-align:center;">-</td>
                        <td style="text-align:center;">0</td>
                        <td><i class="fa fa-square-o" title=" - "></i></td>
                        <td style="text-align: center;"><i class="fa fa-square-o" title="Arrive later than specified"></i></td>
                        <td style="text-align: center;"><i class="fa fa-square-o" title=" Out early "></i></td>
                        <td >Confirmed</td>
                        <td><button type="button" class="btn btn-warning" style="border-radius: 20px;"><a href="PublicReview.aspx" style="text-decoration:none;color:white;">UnBrowser</a></button></td>
                        <td>14.186.73.139 -</td>
                        <td><a href="#" data-toggle="modal" data-target="#myModal"  style="text-decoration:none;" title="Click here to update data">EDIT</a></td>
                    </tr>
                </tbody>
            </table>

        </div>
         <!-- Modal -->
                    <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog modal-lg">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    
                                    <h2 class="modal-title" style="float:left;">Update attendance time - User name (Today's Day)</h2>
                                </div>
                                <div class="modal-body">
                                    <div style="background-color: antiquewhite;border-style: groove;border-color: antiquewhite;color: black;">
                                        <div>Employees have not yet worked out</div>
                                        <div>If confirmed, the system will automatically recognize</div>
                                    </div>
                                    <div style="display:flex;margin-top:20px;margin-bottom:20px;">
                                                <div style="margin-right: 10px;">
                                                    <span>Time attendance</span>
                                                    <select style="display:block;height:25px;width:130px;">
                                                        <option>---</option>
                                                        <option>00 Hours</option>
                                                        <option>01 Hours</option>
                                                        <option>02 Hours</option>
                                                        <option>03 Hours</option>
                                                        <option>04 Hours</option>
                                                        <option>05 Hours</option>
                                                        <option>06 Hours</option>
                                                        <option>07 Hours</option>
                                                        <option>08 Hours</option>
                                                        <option>09 Hours</option>
                                                        <option>10 Hours</option>
                                                        <option>11 Hours</option>
                                                        <option>12 Hours</option>
                                                        <option>13 Hours</option>
                                                        <option>14 Hours</option>
                                                        <option>15 Hours</option>
                                                        <option>16 Hours</option>
                                                        <option>17 Hours</option>
                                                        <option>18 Hours</option>
                                                        <option>19 Hours</option>
                                                        <option>20 Hours</option>
                                                        <option>21 Hours</option>
                                                        <option>22 Hours</option>
                                                        <option>23 Hours</option>
                                                    </select>
                                                </div>
                                                <div style="margin-right: 10px;">
                                                    <input type="hidden" />
                                                    <select style="display:block;height:25px;width:130px;margin-top: 23px;">
                                                        <option>---</option>
                                                        <option>00 Minutes</option>
                                                        <option>01 Minutes</option>
                                                        <option>02 Minutes</option>
                                                        <option>03 Minutes</option>
                                                        <option>04 Minutes</option>
                                                        <option>05 Minutes</option>
                                                        <option>06 Minutes</option>
                                                        <option>07 Minutes</option>
                                                        <option>08 Minutes</option>
                                                        <option>09 Minutes</option>
                                                        <option>10 Minutes</option>
                                                        <option>11 Minutes</option>
                                                        <option>12 Minutes</option>
                                                        <option>13 Minutes</option>
                                                        <option>14 Minutes</option>
                                                        <option>15 Minutes</option>
                                                        <option>16 Minutes</option>
                                                        <option>17 Minutes</option>
                                                        <option>18 Minutes</option>
                                                        <option>19 Minutes</option>
                                                        <option>20 Minutes</option>
                                                        <option>21 Minutes</option>
                                                        <option>22 Minutes</option>
                                                        <option>23 Minutes</option>
                                                        <option>24 Minutes</option>
                                                        <option>25 Minutes</option>
                                                        <option>26 Minutes</option>
                                                        <option>27 Minutes</option>
                                                        <option>28 Minutes</option>
                                                        <option>29 Minutes</option>
                                                        <option>30 Minutes</option>
                                                        <option>31 Minutes</option>
                                                        <option>32 Minutes</option>
                                                        <option>33 Minutes</option>
                                                        <option>34 Minutes</option>
                                                        <option>35 Minutes</option>
                                                        <option>36 Minutes</option>
                                                        <option>37 Minutes</option>
                                                        <option>38 Minutes</option>
                                                        <option>39 Minutes</option>
                                                        <option>40 Minutes</option>
                                                        <option>41 Minutes</option>
                                                        <option>42 Minutes</option>
                                                        <option>43 Minutes</option>
                                                        <option>44 Minutes</option>
                                                        <option>45 Minutes</option>
                                                        <option>46 Minutes</option>
                                                        <option>47 Minutes</option>
                                                        <option>48 Minutes</option>
                                                        <option>49 Minutes</option>
                                                        <option>50 Minutes</option>
                                                        <option>51 Minutes</option>
                                                        <option>52 Minutes</option>
                                                        <option>53 Minutes</option>
                                                        <option>54 Minutes</option>
                                                        <option>55 Minutes</option>
                                                        <option>56 Minutes</option>
                                                        <option>57 Minutes</option>
                                                        <option>58 Minutes</option>
                                                        <option>59 Minutes</option>
                                                    </select>
                                                </div>
                                        <div style="margin-right: 10px;">
                                                    <span>Time out</span>
                                                    <select style="display:block;height:25px;width:130px;">
                                                        <option>---</option>
                                                        <option>00 Hours</option>
                                                        <option>01 Hours</option>
                                                        <option>02 Hours</option>
                                                        <option>03 Hours</option>
                                                        <option>04 Hours</option>
                                                        <option>05 Hours</option>
                                                        <option>06 Hours</option>
                                                        <option>07 Hours</option>
                                                        <option>08 Hours</option>
                                                        <option>09 Hours</option>
                                                        <option>10 Hours</option>
                                                        <option>11 Hours</option>
                                                        <option>12 Hours</option>
                                                        <option>13 Hours</option>
                                                        <option>14 Hours</option>
                                                        <option>15 Hours</option>
                                                        <option>16 Hours</option>
                                                        <option>17 Hours</option>
                                                        <option>18 Hours</option>
                                                        <option>19 Hours</option>
                                                        <option>20 Hours</option>
                                                        <option>21 Hours</option>
                                                        <option>22 Hours</option>
                                                        <option>23 Hours</option>
                                                    </select>
                                                </div>
                                                <div style="margin-right: 10px;">
                                                    <input type="hidden" />
                                                    <select style="display:block;height:25px;width:130px;margin-top: 23px;">
                                                        <option>---</option>
                                                        <option>00 Minutes</option>
                                                        <option>01 Minutes</option>
                                                        <option>02 Minutes</option>
                                                        <option>03 Minutes</option>
                                                        <option>04 Minutes</option>
                                                        <option>05 Minutes</option>
                                                        <option>06 Minutes</option>
                                                        <option>07 Minutes</option>
                                                        <option>08 Minutes</option>
                                                        <option>09 Minutes</option>
                                                        <option>10 Minutes</option>
                                                        <option>11 Minutes</option>
                                                        <option>12 Minutes</option>
                                                        <option>13 Minutes</option>
                                                        <option>14 Minutes</option>
                                                        <option>15 Minutes</option>
                                                        <option>16 Minutes</option>
                                                        <option>17 Minutes</option>
                                                        <option>18 Minutes</option>
                                                        <option>19 Minutes</option>
                                                        <option>20 Minutes</option>
                                                        <option>21 Minutes</option>
                                                        <option>22 Minutes</option>
                                                        <option>23 Minutes</option>
                                                        <option>24 Minutes</option>
                                                        <option>25 Minutes</option>
                                                        <option>26 Minutes</option>
                                                        <option>27 Minutes</option>
                                                        <option>28 Minutes</option>
                                                        <option>29 Minutes</option>
                                                        <option>30 Minutes</option>
                                                        <option>31 Minutes</option>
                                                        <option>32 Minutes</option>
                                                        <option>33 Minutes</option>
                                                        <option>34 Minutes</option>
                                                        <option>35 Minutes</option>
                                                        <option>36 Minutes</option>
                                                        <option>37 Minutes</option>
                                                        <option>38 Minutes</option>
                                                        <option>39 Minutes</option>
                                                        <option>40 Minutes</option>
                                                        <option>41 Minutes</option>
                                                        <option>42 Minutes</option>
                                                        <option>43 Minutes</option>
                                                        <option>44 Minutes</option>
                                                        <option>45 Minutes</option>
                                                        <option>46 Minutes</option>
                                                        <option>47 Minutes</option>
                                                        <option>48 Minutes</option>
                                                        <option>49 Minutes</option>
                                                        <option>50 Minutes</option>
                                                        <option>51 Minutes</option>
                                                        <option>52 Minutes</option>
                                                        <option>53 Minutes</option>
                                                        <option>54 Minutes</option>
                                                        <option>55 Minutes</option>
                                                        <option>56 Minutes</option>
                                                        <option>57 Minutes</option>
                                                        <option>58 Minutes</option>
                                                        <option>59 Minutes</option>
                                                    </select>
                                                </div>
                                        <div style="margin-right: 10px;">
                                                    <span>OT</span>
                                                    <select style="display:block;height:25px;width:130px;">
                                                        <option>No OT</option>
                                                        <option>OT first time shift</option>
                                                        <option>OT late shift time</option>
                                                        <option>OT full time</option>
                                                    </select>
                                                </div>
                                </div>
                                    <div style="margin-bottom:20px;">
                                        <div>Late to have permission</div>
                                        <label class="switch">
                                            <input type="checkbox" checked>
                                            <span class="slider round"></span>
                                        </label>
                                    </div>
                                    <div style="display:grid;">
                                        <div style="display:flex;">
                                            <span>Reason for change</span>
                                            <span style="color:red;">*</span>
                                        </div>
                                        <textarea></textarea>
                                    </div>
                                <div class="modal-footer">
                                    <a href="#" style="text-decoration:none;">Take the full time of the shift</a>
                                    <button type="button" class="btn btn-default" data-dismiss="modal" style="border: none;border-radius: 17px;margin-right: 10px;padding-left: 20px;padding-right: 20px;">Close</button>
                                    <button type="submit" class="nutchamcong2" style="border:none;padding-left: 20px;padding-right: 20px;"><a href="PublicReview.aspx" style="color:white;text-decoration:none;">Save</a></button>
                                </div>
                            </div>

                        </div>
                    </div>
        </div>
    </div>
</asp:Content>
