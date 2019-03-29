<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ExportExcel.aspx.cs" Inherits="Attendance_ExportExcel" %>

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
    <link href="../css/Attendance/ExportExcel.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="background-color: #eee;height: 95px;width: 100%;margin-top: -23px;">
        <div style="margin-bottom: -11px;margin-top: -20px;">
            <br />
            <a class="abc tab-content" href="History.aspx" style="text-decoration:none;"><span><h2 style="cursor:pointer;">History</h2></span></a>
            <ul class="nav nav-tabs" style="margin-right:-202px;padding-inline-start: 40px;">
                <li class="active"><a href="#" style="cursor:pointer;height: 44px;text-decoration:none;">Export Excel</a></li>
            </ul>
            <br>
        </div>
    </div>
    <div>
        <div class="row content">
            <div class="col-sm-4 sidenav">
                <div><h2>Export Excel</h2></div>
                <div><h3>Details Export Excel</h3></div>

            </div>

            <div class="col-sm-6">
                <form class="ui form">
                    <table width="100%" cellpadding="10" id="mytable" >
                        <tbody>
                            <tr>
                                <td>
                                    <label>
                                        <span>Headquarters</span>

                                    </label>
                                </td>
                                <td>
                                    <div class="text" style="cursor:pointer;">
                                        <select class="form-control" style="border-radius: 7px;">
                                            <option>---</option>
                                            <option>Main office</option>

                                        </select>
                                    </div>
                                    <i class="dropdown icon"></i>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label>
                                        <span>Employees</span>

                                    </label>
                                </td>
                                <td>
                                    <div class="text" style="cursor:pointer;">
                                        <select class="form-control" style="cursor:pointer;border-radius: 7px;">
                                            <option>Employees</option>
                                            <option></option>
                                        </select>
                                    </div>
                                    <i class="dropdown icon"></i>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label>
                                        <span>Choose a date</span>
                                        <span style="color:red;">*</span>
                                    </label>
                                </td>
                                <td>
                                    <div>
                                        <input type="date" style="height:34px;width: 200px;" /><input type="date" style="height:34px;width: 198px;" />
                                        
                                    </div>
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </form>
            </div>
            <div class="col-sm-2">

            </div>
        </div>
        <div style="background-color:#eee;width:100%;height:80px;">
            <div class="col-sm-4 sidenav" style="margin-top:20px;">
                <span>*: Obligatory</span>
            </div>

            <div class="col-sm-8" style="text-align:center;">
                <div style="margin-top:-13px;margin-left: 200px;">
                    <button id="btnExport" class="nutchamcong" style="width: 30%;border: none;"> EXPORT EXCEL</button>
                </div>
            </div>

           
        </div>
    </div>
    <script>
        $("#btnExport").click(function(e) {
    window.open('data:application/vnd.ms-excel,' + 
                '<table>' + $('#mytable > table').html() + '</table>');
    e.preventDefault();
});
    </script>
</asp:Content>

