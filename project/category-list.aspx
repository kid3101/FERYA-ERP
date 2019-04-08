<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid">
         <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800"> List Category</h1>
        <div>
        <button type="button" class="btn btn-info "onclick="addcategory()">Add Category</button>
           
        </div>

       <div>   </div><br />
        <div class="row">
            <div class="col-md-12">
                 <div class="table-responsive">
                    
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <div></div>
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Name</th> 
                     <th>Name Project</th> 
                      <th>Number of Posts</th>                     
                       <th>Action</th>
                    </tr>
                  </thead>
                 
                  <tbody>
                    <tr>
                      <td>1</td>
                      <td>Cat1</td>
                          <td>Proj1</td>
                      <td>2</td>            
                    
                         <td>
                             
                        <a href="/project/list-post.aspx">    <i style="width:25px" class="fas fa-book-open"></i></a>
                             <a href="/project/category-list.aspx">   <i style="width:25px" class="fas fa-trash-alt"></i></a>
                          <a href="/project/edit-category.aspx"  <i style="width:25px" class="fas fa-pen"></i></a>
                        </td>
                    </tr>
                 

                  </tbody>
                </table>
              </div>
            </div>
        </div>
    </div>
    <script>
        function addcategory() {
            location.href = "/project/add-category.aspx";
        }
    </script>
</asp:Content>

