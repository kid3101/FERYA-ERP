<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add-paycheck.aspx.cs" Inherits="Employee_add_paycheck" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="headered" style="display:flex;margin:10px">
          <div class="lefted" style="width:30%; color:black">
              <h2> Company paychecks</h2>
          </div>
    </div>

    <div class="container">
          <ul class="nav nav-tabs">
            <li class="active">
                <a data-toggle="tab" href="#" style="cursor:pointer;">
                    <span style="color:black;">Add new</span>
                </a>
            </li>
          </ul>
        </div>

        <div class="segment">
            <form class="ui form">
                <div class="fields" style="margin-top:10px;">
                    <div class="left" style="width:25%;">
                        <h4>
                            <span>
                                Payroll details
                            </span>
                        </h4>
                        <p>
                            Details
                        </p>
                    </div>
                    <div class="right" style="width:100% ; margin-top: 8px;">
                        <div class="col-sm-10">
                            <label>
                                Title of paycheck
                            </label>
                            <br />
                            <input class="form-control" name="title" style="width:50%;" />
                        </div>
                        <div class="col-sm-7">
                            <label>
                                Employees<a style="margin-top: -0.2em; margin-left:0.2em;color: #DB2828;">*</a>
                            </label>
                            <select class="form-control">
                                <option>-----</option>
                                <option>User Name</option>
                            </select>
                        </div>
                        <div class="col-sm-7" style="margin-right:1px;">
                            <label>
                                Form of payment<a style="margin-top: -0.2em; margin-left:0.2em;color: #DB2828;">*</a>
                            </label>
                            <select class="form-control">
                                <option>-----</option>
                                <option >
                                    Pay once
                                </option>
                                <option>
                                    Pay by day
                                </option>
                                <option>
                                    Pay by month
                                </option>
                                <option>Pay by year</option>
                            </select>

                        </div>
                        <div class="col-sm-7">
                            <label>Total salary<a style="margin-top: -0.2em; margin-left:0.2em;color: #DB2828;">*</a></label>
                            <br />
                            <input class="form-control" name="total" style=" text-align:right;" value="0" />
                        </div>

                        <div class="col-sm-7">
                            <div class=" four wide field">
                                <label>Order in pay period</label>
                                <br />
                                <input class="form-control" name="paidindex" type="number" style="text-align:right;" value="1">
                            </div>
                        </div>
                        <div class="col-sm-7">
                            <label>
                                Status
                            </label>
                            <select class="form-control">
                                <option>
                                    Effective
                                </option>
                                <option>
                                    Disabled
                                </option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="bottom" style="border-top-style:outset; margin-top: 10px;">
                    <div class="field wide hideonsmall four" style=" margin-top: 10px;">
                        <p class="requirebox">
                            <span>* : </span>
                            <span>
                                Obligatory
                            </span>
                        </p>
                    </div>
                    <div class="add" style=" margin-top: -25px; margin-left:200px">
                        <a class="addnew" href="list-paycheck.aspx">
                            MORE
                        </a>
                    </div>
                </div>
            </form>
        </div>

    
</asp:Content>

