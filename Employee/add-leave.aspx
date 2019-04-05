<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add-leave.aspx.cs" Inherits="Employee_add_leave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/employee.css/add-point-employee.css" rel="stylesheet" />
    <link href="../css/employee.css/add-leave.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid" >
        <h1 class ="h3 mb-4 text-gray-800">
             Please take leave
            <span> > </span>
            Create a new leave form
        </h1>
    </div>

    <div class="segment">
                <div class="center" >
                    <div class="left">
                        <h4>Leave information</h4>
                        <p>Details of reasons, leave time</p>
                    </div>
                    <div class="right" >
                        <div class="col-sm-8">
                            <label>Time<span class="star-sign">*</span></label>
                            <input class="form-control" type="date" />
                        </div>
                        <div class="col-sm-8">
                            <label>
                                Contact phone
                            </label>
                            <br />
                            <input class="form-control" type="text"   />
                        </div>
                        <div class="col-sm-10" id="col-10">
                            <div>
                                <label>
                                    Number of days off
                                </label>
                                <div class="labeled input">
                                    <input type="number"  value="1">
                                    <div class="nocolor-label" >
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
                            <div class="vacation" >
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
                        <div class="col-sm-12" >
                            <label>
                                Reason
                            </label>
                            <br />
                            <input class="form-control" />
                        </div>
                        <div class="col-sm-12">
                            <label>Note</label>
                            <br />
                            <input class="form-control" />
                        </div>
                    </div>
                </div>

        <div >

            <div class="col-sm-8" id="col-8" >
                <div >
                    <a href="list-leave.aspx" class="btn btn-info"> Add</a>
                </div>
            </div>
        </div>
                
        </div>

    

</asp:Content>

