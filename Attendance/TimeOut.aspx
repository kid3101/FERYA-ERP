<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TimeOut.aspx.cs" Inherits="Attendance_TimeOut" %>

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
    <link href="../css/Attendance/TimeOut.css" rel="stylesheet" />
    <script src="../dist/webcam.js"></script>
    
    <style type="text/css">
		body { font-family: Helvetica, sans-serif; }
		h2, h3 { margin-top:0; }
		form { margin-top: 15px; }
		form > input { margin-right: 15px; }
		#results { float:right; margin:20px; padding:20px; border:1px solid; background:#ccc; }
	</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div class="row content" style="text-align:center;">
            <div class="col-sm-2 sidenav">

            </div>

            <div class="col-sm-8">

                <h1 style="padding-top:40px;text-align:center;text-transform:uppercase;">Main office</h1>
                <div id="my_camera" >

                <video autoplay="autoplay" style="width: 320px;height: 240px;"></video>
                        <script src="../dist/webcam.js"></script>
                </div>
                <a href="Timekeeper.aspx"><i class="fa fa-chevron-left" style="font-size:20px;float: left;margin-top: -33px;color:#767676"></i></a>
                <div>

                    <%--<input class="form-control" style="height: 58px;font-size: 27px;cursor: pointer;" />
                    <a href="MainOffice.aspx" style="color:grey;"><i class="fa fa-times" style="cursor: pointer;font-size: 33px;float: right;margin-top: -46px;margin-right: 20px;"></i></a>--%>
                    <div class="form-control" style="display: flex;margin-top: 15px;height: 123px;background-color: #eee;">
                        <div class="col-sm-3 sidenav" style="background-color: white;height: 121px;margin-top: -6px;margin-left: -12px;">
                            <i class="fa fa-sign-in" style="font-size:39px;color:grey;"></i>
                            <br />
                            <span ><a href="MainOffice2.aspx" style="font-size: 26px;text-decoration:none;color:grey;">Time attendance</a></span>
                        </div>
                        <div class="col-sm-9" style="height: 121px;color:black;background-color:#eee;margin-top: -6px;">
                            <i class="fa fa-sign-in" style="font-size:39px;"></i>
                            <br />
                            <span style="font-size: 26px;">Time out</span>
                        </div>
                    </div>
                    <div class="form-control" style="display:flex;margin-top: 15px;height: 100%;background-color:#eee" ">
                        <div class="col-sm-8 sidenav" style="color:black;">
                            <div>
                                <label style="float: left;">The shift worked</label>
                                <br />
                                <label style="color:red;">(09:00 - 17:00)</label>
                            </div>

                            <div>
                                <label style="margin-top: 8px;float: left;">Note</label>
                                <br />
                                <textarea style="width: 100%;height: 83px;"></textarea>
                            </div>
                            <div>
                                <label style="float: left;margin-top: 8px;margin-bottom: 18px;">Webcam / camera snapshot</label>
                                <br />
                                <div>
                                    <div id="results">Your captured image will appear here...</div>
                                </div>
                                <a class="maychamcong" style="color:white;">ATTENDANCE</a>
                            </div>
                        </div>
                        <div class="col-sm-4 " style="margin-top: 192px;">
                            <div>
                                <a href="#" class="chuphinh" style="text-decoration:none;" onClick="take_snapshot()">Take a picture</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-2 sidenav">

            </div>
        </div>
    </div>
    <script>
		        Webcam.set({
			        width: 320,
			        height: 240,
			        image_format: 'jpeg',
			        jpeg_quality: 90
		        });
		        Webcam.attach( '#my_camera' );
	        </script>
    <script>
		function take_snapshot() {
			// take snapshot and get image data
			Webcam.snap( function(data_uri) {
				// display results in page
				document.getElementById('results').innerHTML = 
					'<h2>Here is your image:</h2>' + 
					'<img src="'+data_uri+'"/>';
			} );
		}
	</script>
</asp:Content>

