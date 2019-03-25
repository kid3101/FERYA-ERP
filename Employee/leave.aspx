<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="leave.aspx.cs" Inherits="Employee_leave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="headered" style="display:flex;margin:10px">
          <div class="lefted" style="width:30%; color:black">
              <h2> Please take leave</h2>
          </div>
          <div class="righted" style="margin-top: 12px;width: 100%;">
              <div class="icon" style="text-align: right; margin-bottom:10px">
                  <div class="imported" style="margin-right: 400px;">
                     <span class="time">
                            <a  href="#"  class="cog" style="text-decoration:none;">
                                <i class="fa fa-cog"></i> Setting </a>
                             <a   class="cog" style="text-decoration:none ;" href="browser-leave.aspx">
                                <i class="fa fa-clock"></i> Wait for you to browse </a>
                    </span>
                           
                  </div>
                  <div class="added" style=" margin-top: -35px;">
                    <a class="btn asc" style="margin-left:100px;" href="add-leave.aspx">
                       <i class="fa fa-plus-circle"></i>
                            CREATE A NEW LICENSE APPLICATION
                    </a>
                  </div>
              </div>
              <div class="paged" style="display: inline-flex; margin-left: 700px;cursor: pointer;">
                    <a href="#" style="height:20px; width:20px; color:#555;">
                        <i class="fa fa-angle-left"></i>
                    </a>
                    <div style="margin-left:7px;">
                        <a style="display:block; text-decoration: none; color:#555; ">
                            <span>Page</span>
                            <span>0</span>
                            <span class="total">
                                <span>/</span>
                                <span>0</span>
                            </span>
                        </a>
                    </div>
                    <a href="#" style="height:15px; color:#555; margin-left: 20px;">
                        <i class="fa fa-angle-right"></i>
                    </a>
                </div>
          </div>
      </div>
    <div class="container">
          <ul class="nav nav-tabs">
            <li class="active">
                <a data-toggle="tab" href="#" style="cursor:pointer;">
                    <span style="color:black;">All</span>
                    <span class="number">0</span>
                </a>
            </li>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" style="" title="Turn on / off the search function">Filter & search ...</a>
             </li>
             </ul>
        </div>
        <div class="segment" style="display: block; min-height: 558px;">
            <div class="zerodata">
                <div>
                    <div class="zerodataimage">
                        <img src="../img/Untitled.png"  width="240" height="240" />
                    </div>
                    <h3 style="color: darkgray; font-size:30px;">No application for leave yet.</h3>
                    <p style="color: darkgray;">Create your first leave application by pressing the button below.</p>
                     <div class="zerodatabutton">
                        <a class="btn them" href="add-leave.aspx">
                            Add new
                        </a>
                    </div>
                </div>
            </div>
        </div>


</asp:Content>

