<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Attendant.aspx.cs" Inherits="Attendance_Attendant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Attendant</title>
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
    <link href="../css/Attendance/Attendant.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="background-color: #eee;height: 94px;width: 100%;">
        <div style="margin-bottom: -11px;margin-top: -23px;">
            <br />
            <a class="abc tab-content" style="text-decoration:none;" href="KeepingHistory.html"><span><h2 style="cursor:pointer;">History</h2></span></a>
            <ul class="nav nav-tabs" style="margin-right:-202px;padding-inline-start: 40px;">
                <li class="active"><a href="#" style="cursor:pointer;text-decoration:none;">Attendant</a></li>
            </ul>
            <br>
        </div>
    </div>
    <div>
        <form>
            <div style="margin-top: 30px;">
                <div style="margin-left: 24px; width: 40%;float:left;">
                    <h3><strong>Attendant information</strong></h3>
                    <p style="font-size: 17px;">Enter the information to conduct the in-out attendance.</p>
                </div>
                <div style="width:60%;font-size: 17px; display:inline;">
                    <div style="width:30%;font-size: 17px;float:left;">
                        <div class="form-group" style="margin-left: -12px;">
                            <label for="usr">Headquarters<span style="color:red;"> *</span></label>
                            <div>
                                <select class="form-control" id="sel1" style="width: 55%;">
                                    <option></option>

                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div style="float:left;margin-left:24px;display: inline-flex;">
                    <br />
                </div>
            </div>
        </form>
    </div>
    <div style="background-color:#eee;width:100%;height:80px;margin-top: 144px;">
</asp:Content>

