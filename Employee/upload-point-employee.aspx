<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="upload-point-employee.aspx.cs" Inherits="Employee_upload_point_employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="headered" style="display:flex;margin:10px">
          <div class="lefted" style="color:black">
              <h2>Employee grading history</h2>
          </div>
      </div>
    <div class="container">
          <ul class="nav nav-tabs">
            <li class="active">
                <a data-toggle="tab" href="#" style="cursor:pointer;">
                    <span style="color:black;">Upload</span>
                </a>
            </li>
        </ul>
    </div>
     <div class="segment">
            <form class="ui form">
                <div class="top" style="margin-top:10px;">
                    <div class="left" style="width:25%;">
                        <h2>Detailed scoring staff</h2>
                            <p>Detailed scoring information for employees</p>
                    </div>
                    <div class="right">
                        <div class="col-xs-5">
                            <label>Headquarters</label>
                            <input class="form-control" type="text" value="dsd" />
                        </div>
                        <div class="col-xs-5">
                            <label>Creator<a style="margin-top: -0.2em; margin-left:0.2em;color: #DB2828;">*</a></label>
                            <input class="form-control" type="text" value="Thông Huyền Trang" />
                        </div>
                        <div class="col-xs-5">
                            <label>Criteria <a style="margin-top: -0.2em; margin-left:0.2em;color: #DB2828;">*</a></label>
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

