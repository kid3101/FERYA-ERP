<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="paycheck.aspx.cs" Inherits="Employee_paycheck" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            <div class="headered" style="display:flex;margin:10px">
          <div class="lefted" style="width:30%; color:black">
              <h2> My paycheck</h2>
          </div>
          <div class="righted" style="margin-top: 12px;width: 100%;">
              <div class="icon" style="text-align: right; margin-bottom:10px">
                  <div class="added" style=" margin-top: -25px;">
                    <a class="btn asc" style="margin-left:100px;" href="add-paycheck.aspx">
                      <i class="fa fa-cog"></i>  FOR MANAGEMENT
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
                            <span>1</span>
                            <span class="total">
                                <span>/</span>
                                <span>1</span>
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
                    <span class="number"></span>
                </a>
            </li>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" style="" title="Turn on / off the search function">Filter & search ...</a>
            </li>
          </ul>
        </div>
        <span></span>
        <div class="segment" style="display: block; min-height: 558px;">
            <div class="zerodata">
                <div>
                    <div class="zerodataimage">
                        <img src="../img/Untitled.png" width="240" height="240" />
                    </div>
                    <h3 style="color: darkgray; font-size:30px;">No salary data yet.</h3>
                    <p style="color: darkgray;">Create salary data for employees of the company with the button below.</p>
                    <div class="zerodatabutton">
                        <a class="btn them" href="add-paycheck.aspx">
                            Add new
                        </a>
                    </div>
                </div>
            </div>
        </div>



</asp:Content>

