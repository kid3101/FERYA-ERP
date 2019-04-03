<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="WorkingPlan3.aspx.cs" Inherits="Attendance_WorkingPlan3" %>

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
    <link href="../css/Attendance/WorkingPlan.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <script src="../js/WokingPlan/WokingPlan.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div class="row content">
            <div class="col-sm-2 sidenav sidepanel" style="border-right-style: inset;" id="mySidepanel">
                <h4 style="color: #777;">
                    <span>DATA FILTER</span>
                    <a href="javascript:void(0)" data-toggle="collapse" onclick="closeNav()" style="float: right;" title="Hide filters" class="anboloc">
                        <i class="fa fa-minus"></i>
                    </a>
                </h4>
                <hr />
                <div style="height: 585px;overflow: hidden;outline: none;display: block;">
                    <form>
                        <span></span>
                        <div style="margin-bottom: 15px;">
                            <label style="color:#777;">HEADQUARTERS</label>
                            <br />
                            <select class="form-control">
                                <option>All</option>
                                <option>Main office</option>
                            </select>
                            <span></span>
                        </div>
                        <div>
                            <label>SHIFT</label>
                            <div>
                                <a>
                                    <span style="color:black;cursor:pointer;">All</span>
                                    <i class="fa fa-circle" style="cursor:pointer;float:right;color:black;"></i>
                                </a>
                            </div>
                        </div>
                        <br />
                        <button class="timkiem">Search</button>
                    </form>
                </div>


            </div>
            <%--<button title="Show filters" style="position: fixed;margin-top: 3px;z-index: 1;" onclick="openNav()">
                <i class="fa fa-search"></i>
            </button>--%>

            <div class="col-sm-10">
                <div>
                    <div>
                        <a href="#" style="font-size: 20px;margin: 6px;color:black;text-decoration:none;">History</a>
                        <i class="fa fa-chevron-right" style="color:#777;"></i>
                        <a href="#" style="font-size: 20px;margin: 6px;color:black;text-decoration:none;">Calendar</a>
                        <hr>
                    </div>
                    <div>
                        <span class="aa">
                            <span>
                                <span>Employees</span>
                                <span>:</span>
                                <strong>Username</strong>
                            </span>
                            <a href="Workschedule.aspx" style="text-decoration:none;color:white;">
                                <span class="closee">
                                    <i class="fa fa-times" title="Remove this condition"></i>
                                </span>
                            </a>
                        </span>
                    </div>
                </div>
                <div style="padding: 20px;min-height: 625px;height: 550px;">
                    <div style="font-size:28px;float:left;">
                        <span>Time to start</span>
                        <span> - </span>
                        <span>End time</span>
                    </div>
                    <div style="float: right;">
                        <div style="float:left;">
                            <button class="btn btn-success" style="border-radius: 20px;">Browse / browse for all</button>
                            <button title="Last week" style="border: none;background: #E0E1E2;color: rgba(0,0,0,.6);margin-right: -8px;width: 42px;height: 28px;font-size: 20px;border-radius: 5px;">
                                <i class="fa fa-angle-left"></i>
                            </button>
                            <button title="Next week" style="border: none;background: #E0E1E2;color: rgba(0,0,0,.6);width: 42px;height: 28px;font-size: 20px;border-radius: 5px;">
                                <i class="fa fa-angle-right"></i>
                            </button>
                            
                        </div>
                        <div style="float:right;margin-left: 8px;">
                            <input type="date" />
                            <i class="fa fa-calendar" style="margin-left: -64px;"></i>
                        </div>
                    </div>
                    <div style="width: 100%;" class="table-responsive">
                        <table style="margin-top:20px;margin-bottom:0;background-color: #E0E1E2;color: rgba(0,0,0,.87);overflow:scroll;">
                            <thead>
                                <tr>
                                    <th style="color:#666;text-align:center;">Employees</th>
                                    <th style="color:#666;text-align:center;">Monday</th>
                                    <th style="color:#666;text-align:center;">Tuesday</th>
                                    <th style="color:#666;text-align:center;">Wednesday</th>
                                    <th style="color:#666;text-align:center;">Thursday</th>
                                    <th style="color:#666;text-align:center;">Friday</th>
                                    <th style="color:#666;text-align:center;">Saturday</th>
                                    <th style="color:#666;text-align:center;">Sunday</th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Mr.Jonh</td>
                                    <td style="text-align:center;" title="Shift 1">
                                        <div class="Shift" style="background-image: url(../img/shift-item-hash.png);">
                                            08:00 - 17:30
                                        </div>
                                    </td>
                                    <td style="text-align:center;"><a href="#" data-toggle="modal" data-target="#myModal"><i style="color:black;" title="Add calender" class="fa fa-plus"></i></a></td>
                                    <td style="text-align:center;"><a href="#" data-toggle="modal" data-target="#myModal"><i style="color:black;" title="Add calender" class="fa fa-plus"></i></a></td>
                                    <td style="text-align:center;"><a href="#" data-toggle="modal" data-target="#myModal"><i style="color:black;" title="Add calender" class="fa fa-plus"></i></a></td>
                                    <td style="text-align:center;"><a href="#" data-toggle="modal" data-target="#myModal"><i style="color:black;" title="Add calender" class="fa fa-plus"></i></a></td>
                                    <td style="text-align:center;"><a href="#" data-toggle="modal" data-target="#myModal"><i style="color:black;" title="Add calender" class="fa fa-plus"></i></a></td>
                                    <td style="text-align:center;"><a href="#" data-toggle="modal" data-target="#myModal"><i style="color:black;" title="Add calender" class="fa fa-plus"></i></a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div style="height: 360px;">

                    </div>
                    <div>
                        <table style="margin-top:20px;margin-bottom:0;background-color: #E0E1E2;color: rgba(0,0,0,.87);">
                            <thead>
                                <tr>
                                    <th style="color:#666;text-align:center;">0</th>
                                    <th style="color:#666;text-align:center;">0 (0h 0p)</th>
                                    <th style="color:#666;text-align:center;">0 (0h 0p)</th>
                                    <th style="color:#666;text-align:center;">0 (0h 0p)</th>
                                    <th style="color:#666;text-align:center;">0 (0h 0p)</th>
                                    <th style="color:#666;text-align:center;">0 (0h 0p)</th>
                                    <th style="color:#666;text-align:center;">0 (0h 0p)</th>

                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
        </div>
         <!-- Modal -->
                    <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog modal-lg">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    
                                    <h2 class="modal-title" style="float:left;">Schedule - April 1, 2019 - Staff Jack</h2>
                                </div>
                                <div class="modal-body">
                                    The shift can be folded
                                    <div>
                                        <input type="checkbox" />
                                        <span>Shift 1 (8:00 - 14:00)</span>
                                    </div>
                                    <div>
                                        <input type="checkbox" />
                                        <span>Shift 2 (14:00 - 20:00)</span>
                                    </div>
                                    <div style="display:grid;">
                                        <span>Note</span>
                                        <textarea></textarea>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button  type="button" class="btn btn-default" data-dismiss="modal" style="border: none;border-radius: 17px;margin-right: 10px;padding-left: 20px;padding-right: 20px;">Close</button>
                                    <button type="submit" class="btn btn-info" style="border:none;padding-left: 20px;padding-right: 20px;"><a href="WokingPlan2.aspx" style="color:white;text-decoration:none;">Save</a></button>
                                </div>
                            </div>

                        </div>
                    </div>
    </div>
   
</asp:Content>

