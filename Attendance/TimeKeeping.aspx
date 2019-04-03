<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TimeKeeping.aspx.cs" Inherits="Attendance_TimeKeeping" %>

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

    <link href="../css/Attendance/TimeKeeping.css" rel="stylesheet" />
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
       <h1 class="h3 mb-4 text-gray-800">Attendance > Timekeeping information</h1>
        
        <div class="container tong" >
        <form>
            <div class="container">
                <div class="container tongg" >
                    <p class="textt">Enter the information to conduct the in-out attendance.</p>
                    <div id="my_camera" >
                <video autoplay="autoplay" style="width: 320px;height: 240px;margin-top: -239px;margin-left: 2px;"></video>
            </div>
                </div>
                <div class="container tong2" >
                    <div class="hp">
                        <div class="form-group">
                            <label for="usr">Office 1 (<a href="Attendant.aspx" class="nut">Change office</a>)<span class="mau"> *</span></label>
                            <div>
                                <select class="form-control" id="sel1">
                                    <option>---</option>
                                    <option>Shift 1 (7:00 - 17:00)</option>
                                    <option>Shift 2 (10:00 - 19:00)</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="comment">Note</label>
                            <textarea class="form-control" rows="5" id="comment"></textarea>
                        </div>
                        <div>
                            <div id="results">Your captured image will appear here...</div>
                        </div>
                        <div>
                            <label>Webcam / camera snapshot</label>
                        </div>
                    </div>
                    <div class="nuttt">
                        <a href="#" class="chuphinh" onClick="take_snapshot()">Take a picture</a>
                    </div>
                </div>
            </div>
            <div class="aa">
                <br />
                <div class="container">
                    <p class="sizee">
                        <span>* : </span>
                        <span>Obligatory</span>
                    </p>
                </div>
                <div class="container nut2" >
                    <button class="nutchamcong nut3" ><a href="TimeAttendance.aspx" class="nut4">ATTENDANCE</a></button>
                </div>
            </div>
            
            
            
            <script language="JavaScript">
		        Webcam.set({
			        width: 320,
                    height: 240,
			        image_format: 'jpeg',
                    jpeg_quality: 90,
                      force_flash: true
		        });
		        Webcam.attach( '#my_camera' );
	</script>
            
        </form>
    </div>
    </div>
    <script language="JavaScript">
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

