<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="WorkingPlan2.aspx.cs" Inherits="WorkingPlan2" %>

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
            <div class="col-sm-2 sidenav sidepanel tong" id="mySidepanel">
                <h4 class="hh">
                    <h1 class="h3 mb-4 text-gray-800">DATA FILTER</h1>
                    <a href="javascript:void(0)" data-toggle="collapse" onclick="closeNav()" title="Hide filters" class="anboloc an">
                        <i class="fa fa-minus"></i>
                    </a>
                </h4>
                <hr />
                <div class="divv">
                    <form>
                        <span></span>
                        <div class="divv2">
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
                                    <span style="all">All</span>
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
                        <a href="#" class="history">History</a>
                        <i class="fa fa-chevron-right" style="color:#777;"></i>
                        <a href="#" class="history">Calendar</a>
                        <hr>
                    </div>
                    <div>
                        <span class="aa">
                            <span>
                                <span>Employees</span>
                                <span>:</span>
                                <strong>Username</strong>
                            </span>
                            <a href="Workschedule.aspx" class="work">
                                <span class="closee">
                                    <i class="fa fa-times" title="Remove this condition"></i>
                                </span>
                            </a>
                        </span>
                    </div>
                </div>
                <div class="tong2">
                    <div class="tongg">
                        <span>Time to start</span>
                        <span> - </span>
                        <span>End time</span>
                    </div>
                    <div class="ben">
                        <div class="ben2">
                            <button class="btn btn-success ha">Browse / browse for all</button>
                            <button title="Last week" class="ab">
                                <i class="fa fa-angle-left"></i>
                            </button>
                            <button title="Next week" class="ab2">
                                <i class="fa fa-angle-right"></i>
                            </button>
                            
                        </div>
                        <div class="m">
                            <input type="date" />
                            <i class="fa fa-calendar" style="margin-left: -64px;"></i>
                        </div>
                    </div>
                    <div style="width: 100%;" class="table-responsive">
                        <table class="tablee">
                            <thead>
                                <tr>
                                    <th class="datee">Employees</th>
                                    <th class="datee">Monday</th>
                                    <th class="datee">Tuesday</th>
                                    <th class="datee">Wednesday</th>
                                    <th class="datee">Thursday</th>
                                    <th class="datee">Friday</th>
                                    <th class="datee">Saturday</th>
                                    <th class="datee">Sunday</th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Mr.Jonh</td>
                                    <td class="Shift2"><a href="#" data-toggle="modal" data-target="#myModal"><i style="color:black;" title="Add calender" class="fa fa-plus"></i></a></td>
                                    <td class="Shift2"><a href="#" data-toggle="modal" data-target="#myModal"><i style="color:black;" title="Add calender" class="fa fa-plus"></i></a></td>
                                    <td class="Shift2"><a href="#" data-toggle="modal" data-target="#myModal"><i style="color:black;" title="Add calender" class="fa fa-plus"></i></a></td>
                                    <td class="Shift2"><a href="#" data-toggle="modal" data-target="#myModal"><i style="color:black;" title="Add calender" class="fa fa-plus"></i></a></td>
                                    <td class="Shift2"><a href="#" data-toggle="modal" data-target="#myModal"><i style="color:black;" title="Add calender" class="fa fa-plus"></i></a></td>
                                    <td class="Shift2"><a href="#" data-toggle="modal" data-target="#myModal"><i style="color:black;" title="Add calender" class="fa fa-plus"></i></a></td>
                                    <td class="Shift2"><a href="#" data-toggle="modal" data-target="#myModal"><i style="color:black;" title="Add calender" class="fa fa-plus"></i></a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="rong">

                    </div>
                    <div>
                        <table class="tablee2">
                            <thead>
                                <tr>
                                    <th class="datee">0</th>
                                    <th class="datee">0 (0h 0p)</th>
                                    <th class="datee">0 (0h 0p)</th>
                                    <th class="datee">0 (0h 0p)</th>
                                    <th class="datee">0 (0h 0p)</th>
                                    <th class="datee">0 (0h 0p)</th>
                                    <th class="datee">0 (0h 0p)</th>

                                </tr>
                            </thead>
                        </table>
                    </div>
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
                                    
                                    <h2 class="modal-title ben2" >Schedule - April 1, 2019 - Staff Jack</h2>
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
                                    <button  type="button" class="btn btn-default but2" data-dismiss="modal" >Close</button>
                                    <button type="submit" class="btn btn-info but3" ><a href="WorkingPlan3.aspx" class="work">Save</a></button>
                                </div>
                            </div>

                        </div>
                    </div>
</asp:Content>

