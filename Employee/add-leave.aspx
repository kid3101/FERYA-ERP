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
                <div class="center" style="border-top-style:outset; margin-top: -1px; ">
                    <div class="left" style="width:25%;">
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
                        <div class="col-sm-10">
                            <div>
                                <label>
                                    Number of days off
                                </label>
                                <div style="width: 100%; font-size: 1em; position: relative; font-weight: 400; font-style: normal; padding-top: 1em; padding-bottom:1em;">
                                    <input type="number" name="count_day_leave" style=" width:3%" value="1" />
                                    <div style="margin: -28px 0px 0px 35px; background-color: #efeded; width: 24%;">
                                        <span>x1</span>
                                        <span>Day</span>
                                        <span>(</span>
                                        <span>0</span>
                                        <span>
                                            Hours
                                        </span>
                                        <span>) =</span>
                                        <span>--</span>
                                        <span> </span>
                                        <span>
                                            Hours
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row" style="margin-top: -68px; margin-left: 200px;">
                                <div>
                                    <label>
                                        Vacation time
                                    </label>
                                    <input type="number" name="count_paid">
                                </div>
                                <div>
                                    <label>Vacation without pay</label>
                                    <input type="number" name="count_no_paid">
                                </div>
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
                    <div class="add" style=" margin-top: -40px">
                        <a href="list-leave.aspx" class="addnew" >
                            MORE
                        </a>
                    </div>
                </div>
        </div>

    

</asp:Content>

