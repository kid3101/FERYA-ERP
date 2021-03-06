﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="update-point-employee.aspx.cs" Inherits="Employee_upload_point_employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/employee.css/add-point-employee.css" rel="stylesheet" />
    <link href="../css/employee.css/add-leave.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid">
        
            <h1 class ="h3 mb-4 text-gray-800">Employee grading history
                <span> > </span>
                Update
            </h1>
    </div>
     <div class="segment">
            <form class="ui form">
                <div class="top" style="margin-top:10px; display:flex">
                    <div class="left" style="width:25%;">
                        <h2>Detailed scoring staff</h2>
                            <p>Detailed scoring information for employees</p>
                    </div>
                    <div class="right" style="width:70%">
                        <div class="col-xs-5">
                            <label>Headquarters</label>
                            <input class="form-control" type="text" value="dsd" />
                        </div>
                        <div class="col-xs-5">
                            <label>Creator <a class="star-sign">*</a></label>
                            <input class="form-control" type="text" value="Ferya" />
                        </div>
                        <div class="col-xs-5">
                            <label>Criteria <a class="star-sign">*</a></label>
                           <select class="form-control">
                                <option>sas</option>
                                <option></option>
                            </select>
                        </div>
                        <div class="col-xs-5">
                            <label>Note</label>
                            <input class="form-control" type="text">
                        </div>
                        <div class="col-xs-5">
                            <label>Attached file (3 file limit)</label>
                            <div class="box">
                                <input type="file" name="file-2[]" id="file-2" class="inputfile inputfile-2" data-multiple-caption="{count} files selected" multiple="">
                                <label for="file-2"><i class="fa fa-paperclip"></i><span>File attached...</span></label>
                            </div>
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
                    <a href="list-point-employee.aspx" class="btn btn-info"> Save</a>
                </div>
            </div>
        </div>
            </form>
        </div>
</asp:Content>

