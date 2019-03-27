<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactAndHelp.aspx.cs" Inherits="Dashboard_ContactAndHelp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Help</title>
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
    <link href="../css/Dashboard/ContactAndHelp.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="margin-top:-23px;background-color: #eee;height: 70px;width: 100%;">
        <div style="margin-bottom: -11px;margin-top: -20px;">
            <div class="row content">
                <div class="col-sm-6 sidenav">
                    <a class="abc tab-content" href="ContactAndHelp.aspx" style="text-decoration:none;"><span><h2 style="cursor:pointer;padding-top: 3px;">Contact and help</h2></span></a>
                </div>

            </div>

        </div>
    </div>
    <div class="container">
        <div style="border-style: solid;border-color: #eee;margin-top: 20px;">
            <div style="margin-left:20px;">
                <h4>Software information</h4>
                <p>
                    <span>Current version: </span>
                    <span>1.8</span>
                </p>
                <p>
                    <span>Cache company data: </span>
                    <span><a href="Help2.aspx" style="text-decoration:none;">See details</a></span>
                </p>
            </div>
        </div>
        <div style="border-style: solid;border-color: #eee;margin-top: 20px;">
            <div style="margin-left:20px;">
                <h4>Account information</h4>
                <p>
                    <span>Here are some information of the account you are logged in and using, please provide this information in case you need assistance: </span>
                </p>
                <p>
                    <span>Company ID: </span>
                    <span> 5556</span>
                </p>
                <p>
                    <span>Company name: </span>
                    <span> Ferya</span>
                </p>
                <p>
                    <span>User ID: </span>
                    <span> 26247</span>
                </p>
                <p>
                    <span>Your name: </span>
                    <span> Huynh Thi Nhu Y</span>
                </p>
                <p>
                    <span>Email: </span>
                    <span> Huynhthinhuy1297@gmail.com</span>
                </p>
            </div>
        </div>
        <div style="border-style: solid;border-color: #eee;margin-top: 20px;">
            <div style="margin-left:20px;">
                <h4>Email support</h4>
                <p>
                    <span>If you have any questions, please email to: support@gmail.com </span>
                </p>
            </div>
        </div>
        <div style="border-style: solid;border-color: #eee;margin-top: 20px;">
            <div style="margin-left:20px;">
                <h4>Chat online</h4>
                <p>
                    <a href="#" style="text-decoration:none;"><span>Click here to enter Facebook Chat with support team </span></a>
                </p>
            </div>
        </div>
        <div style="border-style: solid;border-color: #eee;margin-top: 20px;margin-bottom:20px;">
            <div style="margin-left:20px;">
                <h4>Instruction document</h4>
                <p>
                    <a href="#" style="text-decoration:none;"><span>See the user guide articles </span></a>
                </p>
            </div>
        </div>
    </div>
</asp:Content>

