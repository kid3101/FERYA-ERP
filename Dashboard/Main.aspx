<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Dashboard_Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Main</title>
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
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link href="../css/Dashboard/Main.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
            <h1 style="text-align:center;">
                <span>Hi</span>
                <span> </span>
                <em>User Name</em>
                <span>, what action do you want to perform ?</span>
            </h1>
            <div style="height: 320px;border-bottom-style: dotted;border-bottom-color: #47d4c7;">
                <div class="row">
                    <div class="col-sm-4">

                    </div>

                    <div class=" hoverimage" style="text-align: center;background-color: #1510100d;height: 200px;width: 200px;border-radius: 99px;margin-top: 30px;margin-left: 77px;">
                        <img src="../img/store.png"" width="100" height="100" style="margin-top: 46px;">
                        <h2 style="text-transform:uppercase;margin-top:70px;">Store</h2>
                    </div>

                    <div class="col-sm-4">

                    </div>
                </div>
            </div>
        <div class="center-column">
            <span class="stepline" style="width: 2px;height: 32px;display: block;margin-top: -34px;margin-left: 547px;background: #3498db;"></span>
        </div>
        <div class="center-column">
            <div class="label" style="width: 16px;height: 16px;display: block;margin-top: -7px;margin-left: 540px;background: #3498db;border-radius: 50%;"></div>
        </div>
        <div style="text-align: center;margin-top: 20px;margin-left: -45px">
            <a class="nutchamcong" href="/Attendance/Attendant.aspx" style="color:white;margin-left: 15px;text-decoration:none;"><i class="fa fa-plus"></i><span style="padding-left: 24px;padding-right: 24px;font-size: 22px;">Timekeeping</span></a>
        </div>
        <div style="text-align: center;margin-top: 20px;margin-left: -45px">
            <a class="nut" href="../Mailbox/mail-box.aspx" style="color:white;margin-left: 15px;text-decoration:none;"><i class="fa fa-envelope"></i><span style="padding-left: 50px;padding-right: 50px;font-size: 22px;">Mailing</span></a>
        </div>
        <div style="text-align: center;margin-top: 20px;margin-left: -45px">
            <a class="nut" href="../project/project-list.aspx" style="color:white;margin-left: 15px;text-decoration:none;"><i class="fa fa-briefcase"></i><span style="padding-left: 14px;padding-right: 14px;font-size: 22px;">See the project</span></a>
        </div>
    </div>

   
</asp:Content>

