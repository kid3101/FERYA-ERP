<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="list-work.aspx.cs" Inherits="project_list_work" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../css/css-project/list-work.css" rel="stylesheet" />
    <div class="container-fluid">
        <!-- Page Heading -->
         <div style="display:flex;">  <h1 class="h3 mb-4 text-gray-800">System Architect > List Work</h1>

         </div>
        <div> 
            <button type="button" class="btn btn-info" onclick="addwork()">Add Work</button>
           
             <%--<a class="version" href="/project/list-version.aspx"><i class="far fa-folder-open"></i>Version</a>--%>
               
      </div>
        <%--<div style="color:white"> 0</div>
        
        <select class="form-control" style="width:400px" >
            <option>Search Work</option>
            <option>Assigned the job</option>
            <option>Solving</option>
            <option>Need to be approved</option>
            <option>Browsing</option>
            <option>Complete but error</option>
            <option>Completed</option>
            <option>Cancel</option>
        </select>--%>         
        <br />

        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive">
                    <br />
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            
                            <tr>
                                <%--<th>No</th>
                                <th>Critical Level</th>--%>
                                <th>Name project</th>
                                <th>Name task</th>
                                <%--<th>Code Work</th>--%>
                                <%--<th>Version</th>--%>
                                <%--<th>Type</th>--%>
                                <th>Content</th>
                                <th>Create date</th>
                                <%--<th>Appoint</th>--%>
                                <th>Start time</th>
                                <th>Finish time</th>
                                <th>End time</th>
                                <%--<th>Created by employee</th>--%>
                                <th>Action</th>
                            </tr>
                           
                        </thead>

                        <tbody>
                            <%for (int i = listTask.Count - 1; i > -1; i--)
                            {%>
                            <tr>
                                <%--<td>1</td>
                                <td>12</td>--%>
                                <td><%=listTask[i].Project.ProjectTitle %></td>
                                <td><%=listTask[i].TaskName %></td>
                                <td><%=listTask[i].TaskContent %></td>
                                <td><%=listTask[i].CreatedDate %></td>
                                <td><%=listTask[i].StartTime %></td>
                                <td><%=listTask[i].FinishTime %></td>
                                <td><%=listTask[i].EndTime %></td>
                                <%--<td><%=listTask[i].Employee.LastName %></td>--%>
                                <td>

                                    <a href="/project/change-work.aspx" title="Change Status"><i style="width: 25px" class="fas fa-book-open"></i></a>                                 
                                    <a href="#" onclick="edit(<%=listTask[i].TaskId %>)" title="Edit"><i style="width: 25px" class="fas fa-pen"></i></a>
                                    <a href=" /project/comment-work.aspx" title="Comment"><i style="width: 25px" class="fas fa-comments"></i></a>
                                    <button type="button" style="border:none;background-color:floralwhite" onclick="clickdelete(<%=listTask[i].TaskId %>)" title="Delete"><i class="fas fa-trash-alt" style="color:red"></i></button>

                                </td>
                            </tr>
                             <%}%>
                        </tbody>

                      <%--<tbody>
                            <tr>--%>
                                <%--<td>2</td>
                                <td>122</td>--%>
                                <%--<td>TAG21</td>
                                <td>api2</td>
                                <td>version2</td>
                                <td>type21</td>
                                <td>Appoint2</td>
                                <td>25/3</td>
                                <td>Finish</td>
                                <td>

                                    <a href="/project/change-work.aspx" title="Change Status"><i style="width: 25px" class="fas fa-book-open"></i></a>                                 
                                    <a href=" /project/edit-work.aspx" title="Edit"><i style="width: 25px" class="fas fa-pen"></i></a>
                                    <a href=" /project/comment-work.aspx" title="Comment"><i style="width: 25px" class="fas fa-comments"></i></a>
                                    <button type="button" style="border:none;background-color:floralwhite" onclick="del()" title="Delete"><i class="fas fa-trash-alt" style="color:red"></i></button>

                                </td>
                            </tr>
                        </tbody>--%>

                    </table>
                </div>
            </div>
        </div>
    </div>
    <script>
        function addwork() {
            location.href = "/project/add-work.aspx";
        }
        function version() {
            location.href = "/project/list-version.aspx";
        }
        function del(){
            alert("Are You Sure?");
        }
        function edit(id) {
            location.href = "/project/edit-work.aspx?id=" + id;
        }
        function clickdelete(id) {
            var txt;
            var r = confirm("Are you sure Delete?");
            if (r == true) {
            txt = $.post("/do/Project/delete-task.aspx", {
                    id: id,
                }, function (data) {
                    if (data == 1) {
                        alert("Delete success!")
                        location.href = "/project/list-work.aspx";
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

