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
    <link href="Style/Trang.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <style>
        @media screen and (max-width:200px) {
        }

        .dropbtn {
            background-color: #3c8dbc;
            color: white;
            padding: 19px;
            font-size: 16px;
            border: none;
            cursor: pointer;
        }

            .dropbtn:hover, .dropbtn:focus {
                background-color: #2980B9;
            }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #367fa9;
            color: white;
            min-width: 160px;
            overflow: auto;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

            .dropdown-content a {
                color: white;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
                width: 200px;
            }

        .dropdown a:hover {
        }

        .show {
            display: block;
        }

        .dropdown-content a:hover {
            background-color: #1377da;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .dropdown:hover .dropbtn {
            background-color: #367fa9;
        }

        .bangtin {
            float: right;
            margin-left: 10px;
        }

        .thongbao {
            width: 300px;
            top: 30px;
        }

        .hienthibangtin {
            float: right;
            margin-left: 15px;
        }

        h3 a {
            background-color: white;
        }

        #logo {
            height: 60px;
            font-size: 20px;
            background-color: #3c8dbc;
            color: white;
            width: 230px;
            text-align: center;
            float: left;
            border: none;
            cursor: pointer;
        }

        .dropct {
            position: absolute;
        }

        #logo:hover, #logo:focus {
            background-color: #2980B9;
        }

        .abc {
            color: black;
        }

        .chuphinh {
            background-color: #767676;
            color: white;
            text-shadow: none;
            background-image: none;
            border-radius: 20px;
            padding: 11px;
            font-size: 18px;
        }

            .chuphinh:hover {
                color: white;
                background-color: #7676769e;
            }

        .chamcong {
            display: inline-block;
            min-height: 1em;
            outline: 0;
            border-radius: 20px;
            border: none;
            background: cornflowerblue;
            color: white;
            font-weight: 700;
            line-height: 4em;
            text-align: center;
        }

            .chamcong:hover {
                background-color: #6764ed;
            }

        .hoverimage img {
            -webkit-transform: scale(0.8); /*Webkit: Thu nhỏ kích thước ảnh còn 0.8 so với ảnh gốc*/
            -moz-transform: scale(0.8); /*Thu nhỏ đối với Mozilla*/
            -o-transform: scale(0.8); /*Thu nhỏ đối với Opera*/
            -webkit-transition-duration: 0.5s; /*Webkit: Thời gian phóng to, nhỏ ảnh*/
            -moz-transition-duration: 0.5s; /*Như trên*/
            -o-transition-duration: 0.5s; /*Như trên*/
            /*opacity: 0.7;*/ /*Độ mờ của hình ảnh*/
            margin: 0 10px 5px 0; /*căn đều giữa ảnh*/
        }

            .hoverimage img:hover {
                -webkit-transform: scale(1.1); /*Webkit: Tăng kích cỡ ảnh lên 1.1 lần*/
                -moz-transform: scale(1.1);
                -o-transform: scale(1.1);
                /*box-shadow: 0px 0px 30px gray;*/ /*Đổ bóng bằng CSS3*/
                /*-webkit-box-shadow: 0px 0px 30px gray;
                -moz-box-shadow: 0px 0px 30px gray;*/
                /*opacity: 1;*/ /*Độ mờ của hình ảnh*/
            }

        .nutchamcong {
            background-color: #1377da;
            color: white;
            text-shadow: none;
            background-image: none;
            border-radius: 20px;
            padding: 6px;
        }

            .nutchamcong:hover {
                background-color: cornflowerblue;
                cursor: pointer;
            }

        .nut {
            background-color: gray;
            color: white;
            text-shadow: none;
            background-image: none;
            border-radius: 20px;
            padding: 6px;
        }

            .nut:hover {
                background-color: #767676;
                cursor: pointer;
            }
        .onboardcontent {
            width: 320px;
            opacity: .9;
            position: fixed;
            background: #fff;
            border-radius: 4px;
            box-shadow: 0 1px 2px rgba(0,0,0,.3);
            top: 50px;
            right: 10px;
            padding: 10px;
        }
        .tip{

        }
        .onboardcontent .tip {
            font-size: 12px;
            line-height: 1.5;
            color: #555;
        }
        .sidepanel {
            width: 0;
            position: fixed;
            z-index: 1;
            height: 424px;
            top: 0;
            right: 0;
            overflow-x: hidden;
            transition: 0.5s;
            padding-top: 60px;
        }
    </style>
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
            <span class="stepline" style="width: 2px;height: 32px;display: block;margin-top: -34px;margin-left: 541px;background: #3498db;"></span>
        </div>
        <div class="center-column">
            <div class="label" style="width: 16px;height: 16px;display: block;margin-top: -7px;margin-left: 534px;background: #3498db;border-radius: 50%;"></div>
        </div>
        <div style="text-align: center;margin-top: 20px;margin-left: -45px">
            <a class="nutchamcong" href="TimeKeeping.html" style="color:white;margin-left: 15px;text-decoration:none;"><i class="fa fa-plus"></i><span style="padding-left: 24px;padding-right: 24px;font-size: 22px;">Timekeeping</span></a>
        </div>
        <div style="text-align: center;margin-top: 20px;margin-left: -45px">
            <a class="nut" href="#" style="color:white;margin-left: 15px;text-decoration:none;"><i class="fa fa-envelope"></i><span style="padding-left: 50px;padding-right: 50px;font-size: 22px;">Mailing</span></a>
        </div>
        <div style="text-align: center;margin-top: 20px;margin-left: -45px">
            <a class="nut" href="#" style="color:white;margin-left: 15px;text-decoration:none;"><i class="fa fa-briefcase"></i><span style="padding-left: 14px;padding-right: 14px;font-size: 22px;">See the project</span></a>
        </div>
    </div>

    <script>
        function closeNav() {
            document.getElementById("mySidepanel").style.width = "0";
        }
        function openNav() {
            document.getElementById("mySidepanel").style.width = "302px";
        }
    </script>
</asp:Content>

