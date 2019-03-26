<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddNewEmployeeGradingCriteria.aspx.cs" Inherits="Setting_AddNewEmployeeGradingCriteria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Install personnel -> Employee</title>
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
    <link href="../css/Setting/AddGrading.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="margin-top:-23px;background-color: #eee;height: 95px;width: 100%;">
        <div style="margin-bottom: -11px;margin-top: -20px;">
            <br />
            <a class="abc tab-content" href="EmployeeGradingCriteria.aspx" style="text-decoration:none;"><span><h2 style="cursor:pointer;">Employee grading criteria</h2></span></a>
            <ul class="nav nav-tabs" style="margin-right:-202px;padding-inline-start: 40px;
">
                <li class="active"><a href="#" style="cursor:pointer;height: 44px;text-decoration:none;">Add new</a></li>
            </ul>
            <br>
        </div>
    </div>
    <div style="margin-top:20px;">
        <div class="row content">
            <div class="col-sm-3">
                <h3>Staff group information</h3>
                <p>Enter the name and description for the group of employees</p>
            </div>
            <div class="col-sm-9">
                <form>
                    <div class="form-group">
                        <div>
                            <label for="email">Name of criteria</label>
                            <span style="color:red;">*</span>
                            <input type="text" class="form-control" style="width:  30%;;">
                        </div>
                    </div>
                    <div class="form-group">
                        <div>
                            <label for="email">Classify</label>
                            <span style="color:red;">*</span>
                            <br />
                            <select style="width:30%;height:35px;">
                                <option>Good</option>
                                <option>Bad</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div>
                            <label for="email">Point evaluation</label>
                            <span style="color:red;">*</span>
                            <input type="text" class="form-control" style="width:  30%;;">
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div style="background-color:#eee;width:100%;height:80px;margin-top: -3px;display: flex;">
            <div class="col-sm-4 sidenav" style="margin-top:20px;">
                <span>*: Obligatory</span>
            </div>

            <div class="col-sm-4" style="text-align:center;">
                <div style="margin-top:25px;">
                    <button class="nutchamcong" style="width: 30%;border: none;margin-left: -435px;"><a href="EmployeeGradingCriteria2.aspx" style="color:white;text-decoration:none;"> ADD NEW</a></button>
                </div>
            </div>

            <div class="col-sm-4">

            </div>
        </div>
    </div>
</asp:Content>

