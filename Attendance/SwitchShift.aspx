<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SwitchShift.aspx.cs" Inherits="Attendance_SwitchShift" %>

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
    <link href="../css/Attendance/SwitchShift.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container-fluid">
        <div style="margin-bottom: -11px;margin-top: -20px;">
            <br />
            <h1 class="h3 mb-4 text-gray-800">History > Switch shift</h1>
            <br>
        </div>
    </div>
    <div>
        <div class="row content">
            <div class="col-sm-4 sidenav" style="margin-left: 90px;">
                <div>
                    <label style="font-size: 30px;">Source staff</label>
                </div>
                <div>
                    <label>Office</label>
                    <div class="text" style="cursor:pointer;">
                        <select class="form-control" style="cursor:pointer;">
                            <option>All</option>
                            <option>Main office</option>
                        </select>
                    </div>
                </div>
                <div style="margin-top: 20px;">
                    <label>Source staff</label>
                    <span style="color:red;">*</span>
                    <div class="text" style="cursor:pointer;">
                        <select class="form-control" style="cursor:pointer;">
                            <option>---</option>
                            <option></option>
                        </select>
                    </div>
                </div>
                <div style="margin-top: 20px;">
                    <label>Shift day</label>
                    <span style="color:red;">*</span>
                    <div class="text">
                        <input type="date" style="width: 100%;height: 34px;" />
                        <!--<span><i class="fa fa-calendar"></i></span>-->
                    </div>
                </div>
            </div>

            <div class="col-sm-2" style="text-align: center;font-size: 38px;margin-top: 139px;">

                <i class="fa fa-arrow-left"></i>
                <i class="fa fa-arrow-right"></i>

            </div>

            <div class="col-sm-4">
                <div>
                    <label style="font-size: 30px;">Destination staff</label>
                </div>
                <div>
                    <label>Headquarters</label>
                    <div class="text" style="cursor:pointer;">
                        <select class="form-control" style="cursor:pointer;">
                            <option>All</option>
                            <option>Main office</option>
                        </select>
                    </div>
                </div>
                <div style="margin-top: 20px;">
                    <label>Destination staff</label>
                    <span style="color:red;">*</span>
                    <div class="text" style="cursor:pointer;">
                        <select class="form-control" style="cursor:pointer;">
                            <option>---</option>
                            <option></option>
                        </select>
                    </div>
                </div>
                <div style="margin-top: 20px;">
                    <label>Shift day</label>
                    <span style="color:red;">*</span>
                    <div class="text">
                        <input type="date" style="width: 100%;height: 34px;" />
                        <!--<span><i class="fa fa-calendar"></i></span>-->
                    </div>
                </div>
            </div>
        </div>
        <div >
            <div class="col-sm-4 sidenav" style="margin-top:20px;">
                <span>*: Obligatory</span>
            </div>

            <div  style="text-align:center;">
                <div>
                    <button class="nutchamcong" style="width: 30%;border: none;"> SWITCH SHIFT</button>
                </div>
            </div>

            <div class="col-sm-4">

            </div>
        </div>
    </div>
</asp:Content>

