<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add-paycheck.aspx.cs" Inherits="Employee_add_paycheck" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/employee.css/add-leave.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid" >
        <h1 class ="h3 mb-4 text-gray-800">
            Company paychecks
            <span> > </span>
            Add new
        </h1>
    </div>

    <div class="segment">
                <div class="center" >
                    <div class="left">
                        <h4>Payroll details</h4>
                        <p>Details</p>
                    </div>
                    <div class="right" >
                        <div class="col-sm-6">
                            <label>Title of paycheck</label>
                            <input class="form-control"  />
                        </div>
                        <div class="col-sm-4">
                            <label>
                                Employees<span class="star-sign">*</span>
                            </label>
                            <select class="form-control">
                                <option>-----</option>
                                <option>User Name</option>
                            </select>
                        </div>
                         <div class="col-sm-4">
                           <label>
                                Form of payment<span class="star-sign">*</span>
                            </label>
                            <select class="form-control">
                                <option>-----</option>
                                <option > Pay once</option>
                                <option> Pay by day</option>
                                <option>Pay by month</option>
                                <option>Pay by year</option>
                            </select>
                        </div>
                        <div class="col-sm-4">
                            <label>Total salary<span class="star-sign">*</span></label>
                            <br />
                            <input class="form-control" name="total" value="0" />
                        </div>
                        <div class="col-sm-4">
                            <label>Order in pay period</label>
                            <br />
                            <input class="form-control" name="paidindex" type="number" value="1">
                        </div>
                        <div class="col-sm-4">
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
                <div class="bottom" >
                    <div >
                        <p class="requirebox">
                            <span>* : </span>
                            <span>
                                Obligatory
                            </span>
                        </p>
                    </div>
                    <div class="add">
                        <a href="list-paycheck.aspx" class="btn btn-info" >
                            Add
                        </a>
                    </div>
                </div>
        </div>
    
</asp:Content>

