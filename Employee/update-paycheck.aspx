<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="update-paycheck.aspx.cs" Inherits="Employee_detail_paycheck" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/employee.css/addemployee.css" rel="stylesheet" />
    <link href="../css/employee.css/add-point-employee.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid" >
        <h1 class ="h3 mb-4 text-gray-800">Company paycheck 
          <span> > </span>
            Update
        </h1>
    </div>

    <div class="segment">
            <form class="ui form">
                <div class="top" >
                    <div class="left">
                        <h4>Payroll details </h4>
                        <p>Details</p>
                    </div>
                    <div class="right">
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

        <div >

            <div class="col-sm-8" id="col-8" >
                <div >
                    <a class="btn btn-facebook"> Save</a>
                </div>
            </div>
        </div>
           

            </form>
        </div>
</asp:Content>