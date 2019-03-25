<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add-leave.aspx.cs" Inherits="Employee_add_leave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="headered" style="display:flex;margin:10px">
          <div class="lefted" style="width:30%; color:black">
              <h2> Please take leave</h2>
          </div>
          
      </div>
    <div class="container">
          <ul class="nav nav-tabs">
            <li class="active">
                <a data-toggle="tab" href="#" style="cursor:pointer;">
                    <span style="color:black;">Create a new leave form</span>
                </a>
            </li>
             </ul>
        </div>

    <div class="segment">
                <div class="center" style="border-top-style:outset; margin-top: -1px; display:flex">
                    <div class="left" style="width:35%;">
                        <h4>Leave information</h4>
                        <p>Details of reasons, leave time</p>
                    </div>
                    <div class="right" style="width:100% ; margin-top: 8px; margin-right:-250px">
                        <div class="col-sm-12">
                            <label>Time<a style="margin-top: -0.2em; margin-left:0.2em;color: #DB2828;">*</a></label>
                            <input class="form-control" type="date" value="" style="width:20%" />


                        </div>
                        <div class="col-sm-10">
                            <label>
                                Contact phone
                            </label>
                            <br />
                            <input class="form-control" name="title" style="width:24%;" />
                        </div>
                        <div class="col-sm-10" style="display:flex">
                            <div>
                                <label>
                                    Number of days off
                                </label>
                                <div class="ui labeled input">
                                    <input type="number"  style="border-radius:1px 0 0 1px;" value="1">
                                    <div class="ui nocolor label" style="border-radius:0 1px 1px 0;">
                                        <span> x 1 </span>
                                        <span>Day</span>
                                        <span> (</span>
                                        <span>0</span>
                                        <span> </span>
                                        <span>Hours</span>
                                        <span>) = </span>
                                        <span>0</span>
                                        <span> </span>
                                        <span>Hours</span>
                                    </div>
                                </div>
                            </div>
                            <div style="margin-right:20px">
                                <label>Vacation time</label>
                                <br />
                                <input type="number" />
                            </div>
                            <div>
                                <label>Vacation without pay</label>
                                 <br />
                                <input type="number" />
                            </div>
                        </div>
                        <div class="col-sm-10" style="margin-top: 25px">
                            <label>
                                Reason
                            </label>
                            <br />
                            <input class="form-control" name="title" style="width:88%;" />
                        </div>
                        <div class="col-sm-10">
                            <label>
                                Note
                            </label>
                            <br />
                            <input class="form-control" name="title" style="width:88%;" />
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
                    <div class="add" style=" margin-top: -40px; margin-left: 400px;">
                        <a href="list-leave.aspx" class="addnew" style="text-decoration:none" >
                            MORE
                        </a>
                    </div>
                </div>
        </div>

    

</asp:Content>

