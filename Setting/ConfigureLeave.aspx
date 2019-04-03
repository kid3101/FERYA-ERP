<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ConfigureLeave.aspx.cs" Inherits="Setting_ConfigureLeave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Personnel settings → Vacation configuration</title>
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
    <link href="../css/Setting/CofnigureLeave.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
       <h1 class="h3 mb-4 text-gray-800">Setting > Configure leave</h1>

        <div class="container-fluid" style="margin-top: -34px;margin-left: 791px;">


        </div>
        <br>
    </div>
    <div style="margin-top:20px;">
        <div class="row content" style="margin-left:20px;">
            <div class="col-sm-3">
                <h3>Setting</h3>
                <p>Set time off, approver</p>
            </div>
            <div class="col-sm-9">
                <form>
                    <div class="form-group">
                        <div style="display:flex;margin-bottom: 40px;">
                            <label for="email" style="padding-top: 7px;padding-right: 55px;">Number of hours / holidays </label>
                            <input class="form-control" value="0" style="width:30%;" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div style="display:flex;margin-bottom: 40px;">
                            <label for="email" style="padding-top: 7px;padding-right: 41px;">Who approved the first round</label>
                            <br />
                            <select style="width:30%;height:35px;">
                                <option>Not configured</option>
                                <option>Manager</option>
                                <option>Store manager</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div style="display:flex;margin-bottom: 40px;">
                            <label for="email" style="padding-top: 7px;padding-right: 17px;">Who approved the second round </label>
                            <br />
                            <select style="width:30%;height:35px;">
                                <option>Not configured</option>
                                <option>Manager</option>
                                <option>Store manager</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div style="display:flex;margin-bottom: 40px;">
                            <label for="email" style="padding-top: 7px;padding-right: 44px;">Who approved the 3rd round</label>
                            <br />
                            <select style="width:30%;height:35px;">
                                <option>Not configured</option>
                                <option>Manager</option>
                                <option>Store manager</option>
                            </select>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div>
            <div class="col-sm-4" style="text-align:center;">
                <div style="margin-top:25px;">
                    <button class="nutchamcong" style="width: 30%;border: none;margin-left: 300px;margin-top: 20px;"> SAVE</button>
                </div>
            </div>

            <div class="col-sm-4">

            </div>
        </div>
    </div>
</asp:Content>

