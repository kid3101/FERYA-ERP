<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="create-vision.aspx.cs" Inherits="project_create_vision" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <div class="container-fluid">
        <h1 class="h3 mb-4 text-gray-800">Create Verion</h1>
        <div class="row">
            <div class="col-sm-3">
                <div>
                    

                </div>
            </div>
            <div class="col-sm-4">
                <br>
                <label>Name</label>
                <div>
                    <input class="form-control" type="text">
                    <br>
                </div>

                <label>Description</label>
                <div>
                    <textarea style="height: 60px" class="form-control" type="text"></textarea>
                </div>
                <div class="col-sm" style="display: flex">
                    <div class="col-sm-8" style="margin-left:-20px;">
                        <label for="ex1">Start Day</label>

                        <div id="datepicker" class="input-group date" data-date-format="dd-mm-yyyy">
                            <input class="form-control" type="date">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                        </div>
                    </div>

                    <div class="col-sm-8">

                        <label for="ex2">Finish Day</label>
                        <div id="datepicker1" class="input-group date" data-date-format="dd-mm-yyyy">
                            <input class="form-control" type="date">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                        </div>
                    </div>
                    <div class="col-sm-4">

                        <label>Status </label>
                        <select class="form-control">
                            <option value="">New</option>
                            <option value="">Working</option>
                            <option value="">Finish</option>
                            <option value="">Close</option>
                        </select>
                    </div>
                </div>
                <br />
  <button type="button"class="btn btn-info" onclick="createversion()">Create Vision</button>
            </div>
            
         
         


        </div>


    </div>

    <script>
    
        function createversion() {
            location.href = "/project/list-version.aspx";
        }
    </script>

</asp:Content>

