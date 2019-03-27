<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="update-paycheck.aspx.cs" Inherits="Employee_detail_paycheck" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/employee.css/add-point-employee.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="headered" style="display:flex;margin:10px">
          <div class="lefted" style="color:black">
              <h2>Company paycheck</h2>
          </div>
      </div>
    <div class="container">
          <ul class="nav nav-tabs">
            <li class="active">
                <a data-toggle="tab" href="#" style="cursor:pointer;">
                    <span style="color:black;">Update</span>
                </a>
            </li>
        </ul>
    </div>
     <div class="segment">
            <form class="ui form">
                <div class="top" style="margin-top:10px; display:flex">
                    <div class="left" style="width:25%;">
                        <h2>Payroll details</h2>
                        <p>Details</p>
                    </div>
                    <div class="right" style="width:70%">
                        <div class="col-xs-5">
                            <label>Title of paycheck</label>
                            <input class="form-control" type="text" value="s" />
                        </div>
                        <div class="col-xs-5">
                            <label>Employee <a style="margin-top: -0.2em; margin-left:0.2em;color: #DB2828;">*</a></label>
                           <select class="form-control">
                                <option>Thong Huyen Trang </option>
                                <option></option>
                            </select>
                        </div>
                        <div class="col-xs-5">
                            <label>Form of payment<a style="margin-top: -0.2em; margin-left:0.2em;color: #DB2828;">*</a></label>
                            <select class="form-control">
                                <option>Pay 1 time</option>
                                <option>Pay by day</option>
                                <option>Pay by month</option>
                                <option>Pay by year</option>
                            </select>
                        </div>
                        <div class="col-xs-5">
                            <label>Total salary<a style="margin-top: -0.2em; margin-left:0.2em;color: #DB2828;">*</a></label>
                            <input class="form-control" type="text" style="text-align:right" value="314,364,570" />
                        </div>
                        <div class="col-xs-5">
                            <label>Order in pay period</label>
                            <input class="form-control" type="text" style="text-align:right" value="23" />
                        </div>
                        <div class="col-xs-5">
                            <label>Status</label>
                           <select class="form-control">
                                <option>Effective</option>
                                <option>Disabled</option>
                            </select>
                        </div>
                    </div>  
                </div>
                <div class="bottom" style="border-top-style:outset; margin-top: 10px;">
                    <div class="Begin" style=" margin-top: 10px;">
                        <p class="requirebox">
                            <span>* : </span>
                            <span>
                                Obligatory
                            </span>
                        </p>
                    </div>
                    <div class="add" style=" margin-top: -35px">
                        <a class="addnew" href="#">
                            SAVE
                        </a>
                    </div>
                </div>
            </form>
        </div>
</asp:Content>



