<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="project-list.aspx.cs" Inherits="ListProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../css/css-project/project-list.css" rel="stylesheet" />
    <div class="container-fluid">
        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800">Project List</h1>
     
        <button  type="button" class="btn btn-info" style="margin-top:-85px;margin-left:860px" onclick="addproject()">Create Project</button>
        <div class="page">    
                        
                        </div>
                    

        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" >
                        <thead>
                            <tr>
                                
                                <th>Name</th>
                                <th>Manager</th>
                                <th>Company</th>
                                <th>Start Day</th>
                                <th>Finish Day</th>
                                <th>Create Day</th>

                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>

                        <tbody>
                              <%for (int i = listProject.Count - 1 ; i > -1; i-- )
                   {%>
                            <tr>
                               
                                <td><%=listProject[i].ProjectTitle%></td>
                              <td><%=listProject[i].Employee.LastName%></td>
                               <td><%=listProject[i].Company.CompanyName%></td>
                               <td><%=listProject[i].StartTime%></td>
                              <td><%=listProject[i].FinishTime%></td>
                                 <td><%=listProject[i].CreatedDate%></td>
                                 <td><%=listProject[i].Status%></td>
                                <td>
                                   <%-- <a href="/project/category-list.aspx"><i style="width: 25px" class="fas fa-book-open"></i></a>--%>

                                    <a href="/project/list-work.aspx" title="Add work"><i style="width: 25px" class="fas fa-exclamation-circle"></i></a>
                                    <a onclick="editproject(<%=listProject[i].ProjectId%>)"title="Edit"><i style="width: 25px" class="fas fa-pen"></i></a>
                                    <button type="button" style="border:none;background-color:floralwhite"  onclick="del(<%=listProject[i].ProjectId%>)" title="Delete"><i class="fas fa-trash-alt" style="color:red"></i></button>
                                </td>
                                <%}%>
                            </tr>


                        </tbody>
                       

                    </table>
                </div>
            </div>
        </div>
    </div>
    <script>
        function addproject() {
            location.href = "/project/create-project.aspx";
        }
        function editproject(id) {
            location.href = "/project/edit-project.aspx?id=" + id;
        }

         function del(id){
            var txt;
            var r = confirm("Are you sure Delete?");
            if (r == true) {
            txt = $.post("/do/Project/delete-project.aspx", {
                    id: id,
                }, function (data) {
                    if (data == 1) {
                        alert("Delete success!")
                        location.href = "/project/project-list.aspx";
                    }
                    else {
                        alert("Error", data)
                    }
                })
                ;
                }
        }

        
    </script>

</asp:Content>

