<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="paycheck.aspx.cs" Inherits="Employee_paycheck" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="../css/Attendance/History.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            
    <div class="container-fluid">

        <h1  class ="h3 mb-4 text-gray-800"> My paycheck</h1>

        <ul class="nav nav-tabs" style="margin-block-start: 1em;padding-inline-start: 40px;position: absolute;padding-top: 32px;">
            <li class="active" style="margin-right: 20px;">
                <a data-toggle="tab" href="#" style="cursor:pointer;text-decoration:none;">
                    <span style="color:black;">All</span>
                    <span class="number">0</span>
                </a>
            </li>
            <li class="dropdown">
                <a  style="padding-right: 30px;color:black;cursor:pointer;" title="Turn on / off the search function">Filter & search ...</a>
                
            </li>
        </ul>
        <div class="container-fluid" style="margin-top: -34px;margin-left: 380px;">
            <div class="container" style="float:left;">
                <a class="btn btn-info"  href="add-paycheck.aspx" title="For management" style="color:white;margin-left: 450px;padding-left: 20px;padding-right: 20px;text-decoration:none;" >  <i class="fa fa-cog"></i>  FOR MANAGEMENT</a>
            </div>
            <div class="container" style="display: inline-flex;padding-left: 500px; padding-top: 20px;">
                <a href="#" style="height: 20px;width: 20px;color: #555;"><i class="fa fa-chevron-left"></i></a>
                <div style="margin-right: 6px;">
                    <a href="#" style="color:#555;text-decoration:none;">
                        <span>Page</span>
                        <span>0</span>
                        <span>/</span>
                        <span>0</span>
                    </a>
                </div>
                <a href="#" style="height: 48px;width: 48px;color: #555;"><i class="fa fa-chevron-right"></i></a>
            </div>
        </div>
        <br>
    </div>

        <div class="segment" style="display: block; min-height: 558px; margin-top:30px">
            <div class="zerodata" style="text-align:center">
                <div>
                    <div class="zerodataimage">
                        <img src="../img/Untitled.png" width="240" height="240" />
                    </div>
                    <h3 style="color: darkgray; font-size:30px;">No salary data yet.</h3>
                    <p style="color: darkgray;">Create salary data for employees of the company with the button below.</p>

                    <div class="zerodatabutton" >
                        <a class="btn btn-info" href="add-paycheck.aspx" >
                            Add new
                        </a>
                    </div>

                </div>
            </div>
        </div>



</asp:Content>

