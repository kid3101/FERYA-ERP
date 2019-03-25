<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="container-fluid">
        <h1 class="h3 mb-4 text-gray-800">Add Category</h1>
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
            <button type="button" onclick="addcategory()" class="btn btn-facebook">Add Category</button>
       </div>
       
          
    </div>
   <script>
       function addcategory() {
           location.href = "/project/category-list.aspx";
       }
    </script>
</asp:Content>
