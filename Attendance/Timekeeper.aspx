﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Timekeeper.aspx.cs" Inherits="Attendance_Timekeeper" %>

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

    <link href="../css/Attendance/Timekeeper.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div class="row content tong">
            <div class="col-sm-2 sidenav">

            </div>

            <div class="col-sm-8">

                <h1 class="h3 mb-4 text-gray-800">ATTENDANCE</h1>
                <div>
                     <label>Choose an office for attendance</label>
                    <select class="officee form-control" id="selectListOffice" <%--onchange="showEmployee(this.value)"--%> name ="office">
                        <%for (int j = 0; j < listOffice.Count; j++)
                        { %>
                            <option value="<%=listOffice[j].OfficeId %>"><%=listOffice[j].OfficeName %></option>
                        <%} %>            
                    </select>
                </div>
                 <div  style="margin-top:20px;">
                    <%--<input class="form-control" placeholder="Find staff for attendance" style="height: 35px;cursor: pointer;margin-top:20px;" />--%>
                      <label>Choose an employee for attendance</label>
                    <select class="officee form-control" id="hienthi">
                      
                  </select>

                    <a href="#" class="main"><button type="button" class="btn btn-primary but"  onclick="continuee()">Continue</button></a>

                </div>
            </div>
            <div class="col-sm-2 sidenav">

            </div>
        </div>
    </div>
    <script>
$(document).ready(function(){ 
    $("select[name=office]").change(function(){ 
        var id = $(this).val();        
         $.post("../do/Attendance/getlistemployee.aspx", {
                    id: id,
                }, function(data) {                   
                     $("#hienthi").html(data);
             }
         )
    });    
       $.post("../do/Attendance/getlistemployee.aspx", {
                    id: $("select[name=office]").val(),
                }, function(data) {                   
                     $("#hienthi").html(data);
             }
         )
        });

        function continuee() {
            var idemployee = $('#hienthi').val();
            var idoffice = $('#selectListOffice').val();
               location.href="/Attendance/MainOffice2.aspx?id='"+idemployee+"'& idoffice='"+idoffice+"'";
            //$.post("../Attendance/MainOffice2.aspx",{
            //    idoffice: idoffice,
            //    idemployee: idemployee              
            //}, function (data) {
            //    if (data == 1) {
                 
            //    }
            //}
            //);
           
        }
</script>
</asp:Content>

