<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="InstallationAndConfiguration.aspx.cs" Inherits="Dashboard_InstallationAndConfiguration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Installation and configuration</title>
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
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <link href="../css/Dashboard/InstallationAndConfiguration.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="container" style="background-color: #eee;height: 70px;width: 100%;">
        <div style="margin-bottom: -11px;margin-top: -20px;">
            <div class="row content">
                <div>
                    <a class="abc tab-content" href="InstallationAndConfiguration.html"><span><h2 style="cursor:pointer;padding-top: 3px;">Installation and configuration</h2></span></a>
                </div>
            </div>
            <div style="margin-top: -157px;">
                <h3><i class="fa fa-users"></i> Personnel</h3>
                <div class="progress" style="height:3px;">
                    <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:10%;">
                    </div>
                </div>
            </div>
            <div style="margin-bottom: 20px;">
                <a class="ac" href="Office.html" style="font-size: 25px;"><i class="fa fa-map-marker" style="background-color: cornflowerblue;height: 35px;width: 35px;border-radius: 26px;text-align: center;color: white;"></i><span title="It is the office where the employees work, including the address information and the corresponding working time (shift)." style="color: black; margin-left: 18px;"> Office</span></a>
            </div>
            <div style="margin-bottom: 20px;">
                <a href="Department.html" style="font-size: 25px;"><i class="fa fa-users" style="background-color: cornflowerblue;height: 35px;width: 35px;border-radius: 26px;text-align: center;color: white;"></i><span title="Building a model of departments suitable for each business and the function of each department. For example: accounting department, human resources department, ..." style="color: black; margin-left: 17px;"> Department</span></a>
            </div>
            <div style="margin-bottom: 20px;">
                <a href="AccessRight.html" style="font-size: 25px;"><i class="fa fa-lock" style="background-color: cornflowerblue;height: 35px;width: 35px;border-radius: 26px;text-align: center;color: white;"></i><span title="Authorize employees to access the system and manipulate each function when adding a new employee to the company." style="color: black; margin-left: 17px;"> Access right</span></a>
            </div>
            <div style="margin-bottom: 20px;">
                <a href="GroupOfEmployees.html" style="font-size: 25px;"><i class="fa fa-users" style="background-color: cornflowerblue;height: 35px;width: 35px;border-radius: 26px;text-align: center;color: white;"></i><span title="Group of employees according to certain criteria such as departments, positions, working forms ..." style="color: black; margin-left: 15px;"> The group</span></a>
            </div>
            <div style="margin-bottom: 20px;">
                <a href="EmployeeGradingCriteria.html" style="font-size: 25px;"><i class="fa fa-edit" style="background-color: cornflowerblue;height: 35px;width: 35px;border-radius: 26px;text-align: center;color: white;"></i><span title="Create criteria for grading employees with each corresponding scale including the type of points plus and the type of deduction for each employee." style="color: black; margin-left: 16px;"> Employee grading criteria</span></a>
            </div>
            <div>
                <a href="ConfigureLeave.html" style="font-size: 25px;"><i class="fa fa-calendar" style="background-color: cornflowerblue;height: 35px;width: 35px;border-radius: 26px;text-align: center;color: white;"></i><span title="Set the default leave time and the person approving the leave application." style="color: black; margin-left: 16px;"> Configure leave</span></a>
            </div>

        </div>
    </div>
</asp:Content>

