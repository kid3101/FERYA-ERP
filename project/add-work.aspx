<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add-work.aspx.cs" Inherits="project_add_work" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container-fluid">
        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800">Add Work</h1>
        <div style="float: right">
            <a href="#" data-toggle="modal" data-target="#myModal" style="color: black;"><i class="fas fa-cog"></i><span>Setting</span></a>
            <a href="#" style="color: black"><i class="far fa-edit"></i><span>Manager Post</span></a>
        </div>
        <br />
        <div class="row">

            <div class="col-md-8" style="border-right-style: inset">
                <div class="row">
                    <div class="col-md-8">
                        Name work
                   <input type="text" class="form-control" />
                    </div>

                    <div class="col-md-3">
                        Critical level<br />
                        <select class="form-control">
                            <option>Emergency</option>
                            <option>High</option>
                            <option>Normal</option>
                            <option>Low</option>
                        </select>
                    </div>


                    <div class="col-md-3">
                        Status<br />
                        <select class="form-control">
                            <option>Assigned the job</option>
                            <option>Solving</option>
                            <option>Need to be approved</option>
                            <option>Browsing</option>
                            <option>Complete but error</option>
                            <option>completed</option>
                            <option>Cancel</option>
                        </select>
                    </div>
                    <div class="col-md-8">
                        Tag<br />
                        <input class="form-control">
                          
                        </input>
                    </div>
                </div>


                <div>
                    Content
                    <div>
                        <textarea id="txtDesc" class="tinymce required"></textarea>
                    </div>
                </div>
                File Attach
                <input type="file" class="form-check" />
                <br />

            </div>
            <div class="col-md-4">
                <div>
                    Type
                  <select class="form-control">
                      Function
                      <option>problem</option>
                      <option>improve</option>
                      <option>offer</option>
                      <option>design</option>
                  </select>
                </div>

                <div>
                    Appoint
                  <input type="text" class="form-control">Vision
                      
                  </input>
                </div>


                <div>

                    <select class="form-control">
                        Vision
                      <option>123</option>
                    </select>
                </div>



                <div>
                    Start day
                        <input type="date" class="form-control" />
                </div>
                <div>
                    Complete Day
                        <input type="date" class="form-control" />
                </div>
                <div>
                    
                  Attach
                    <input type="file" />
                </div>
            </div>

            <div class="col-md-8">
                Category Id
                   <input type="text" class="form-control" />
            </div>
            <button type="button" onclick="addwork1()" class="btn btn-info">Save infomation</button>

        </div>

    </div>
<script>
    function addwork1() {
        location.href = "/project/list-work.aspx";
    }
</script>

</asp:Content>

