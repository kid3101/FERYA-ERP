<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="edit-category.aspx.cs" Inherits="project_edit_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="container-fluid">
        <h1 class="h3 mb-4 text-gray-800">Edit Category</h1>
        <div class="row">
         
            <div class="col-sm-8">
                
                <label>Name</label>
                <div>
                    <input class="form-control" type="text">
                    <br>
                </div>
                

                  <label>Name Project</label>
                <div>
                    <input  class="form-control" type="text">
                </div>
                 
            </div>
            
           
        </div>
       <div>
          <br />
            <button type="button" onclick="editcategory()" class="btn btn-facebook">Edit Category</button>
       </div>
       
          
    </div>
   <script>
       function editcategory() {
           location.href = "/project/category-list.aspx";
       }
    </script>
</asp:Content>

