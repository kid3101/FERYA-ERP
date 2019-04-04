<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="point-employee.aspx.cs" Inherits="Employee_point_employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/Attendance/History.css" rel="stylesheet" />
     <link href="../css/Attendance/Payroll.css" rel="stylesheet" />
    <link href="../css/employee.css/employee.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container-fluid" >
        <h1 class ="h3 mb-4 text-gray-800">Employee grading history</h1>


       <%-- <ul class="nav nav-tabs" style="margin-block-start: 1em;padding-inline-start: 40px;position: absolute;padding-top: 32px;">
            <li class="active" style="margin-right: 20px;">
                <a data-toggle="tab" href="#" style="cursor:pointer;text-decoration:none;">
                    <span style="color:black;">All</span>
                    <span class="number">0</span>
                </a>
            </li>
            <li class="dropdown">
                <a  style="padding-right: 30px;color:black;cursor:pointer;" title="Turn on / off the search function">Filter & search ...</a>
                
            </li>
        </ul>--%>
         <div class="col-sm-5" id="searchblog"> 
        <div class="search-container">
                <form action="#">
                    <input type="text" placeholder="Search.." name="search">
                    <button type="submit"><i class="fa fa-search"></i></button>
                </form>
            </div>
        </div>

        <div class="container-fluid" style="margin-top: -34px;margin-left: 380px;">
            <div class="container" style="float:left;">
                <a class="ls" style="margin-left: 15px;text-decoration:none;" href="#"><i class="fa fa-cog"></i> Setting criteria</a>
                <a class="ls" style="margin-left: 15px;text-decoration:none;" data-toggle="modal" data-target="#myModal"><i class="fa fa-download"></i>Export Excel</a>
                <a class="ls" style="margin-left: 15px;text-decoration:none;" href="synthetic-point-employee.aspx"  ><i class="fas fa-chart-pie"></i> Synthetic by employess</a>
                
                <a class="btn btn-info"  href="add-point-employee.aspx" title="Add new"><i class="fa fa-plus-circle"></i> ADD THE REVIEW</a>
            </div> 
            <div class="container" style="display: inline-flex;padding-left: 500px; padding-top: 20px;">
                <a href="#" class="chevron-left" ><i class="fa fa-chevron-left"></i></a>
                <div class="page">
                    <a href="#" style="color:#555;text-decoration:none;">
                        <span>Page</span>
                        <span>1</span>
                        <span>/</span>
                        <span>1</span>
                    </a>
                </div>
                <a href="#" class="chevron-right" ><i class="fa fa-chevron-right"></i></a>
            </div>
        </div>
        <br>
    </div>
        <div class="segment" style="display: block; min-height: 558px;">
            <div class="zerodata" style="text-align:center">
                <div>
                    <div class="zerodataimage">
                        <img src="/img/employee.png" width="240" height="240">
                    </div>
                    <h3 style="color: darkgray; font-size:30px;">
                        No evaluation information yet.
                    </h3>
                    <p style="color: darkgray;">
                        You start evaluating employees by pressing the button below.
                    </p>
                     <div class="zerodatabutton" >
                        <a class="btn btn-facebook" href="add-point-employee.aspx">
                            Add new
                        </a>
                    </div>
                </div>
            </div>
        </div>

    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog" id="dvData">

            <div class="modal-content">
                <div class="modal-header">

                    <h4 class="modal-title" style="color:black;"><b>Export Excel</b></h4>
                </div>
                <div class="modal-body">
                    <div>
                        <label style="color:black;">
                            Headquarters
                        </label>
                        <select class="form-control">
                            <option>All</option>
                            <option></option>
                        </select>
                    </div>
                    <div>
                        <label style="color:black;">
                            Employees
                        </label>
                        <select class="form-control">
                            <option>-----</option>
                            <option></option>
                        </select>
                    </div>
                    <div>
                        <label style="color:black;">Date created</label>
                        <br />
                        <input type="date"/>                                            

                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-facebook" data-dismiss="modal" >Close</button>

                </div>
            </div>

        </div>
    </div>

    <script>
        $("#btnExport").click(function(e) {
            window.open('data:application/vnd.ms-excel,' + 
                        '<table>' + $('#dvData > table').html() + '</table>');
            e.preventDefault();
        });
    </script>


</asp:Content>

