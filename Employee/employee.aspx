<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="employee.aspx.cs" Inherits="Employee_employee" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="Server">
    <link href="../css/employee.css/employee1.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

  




    <div class="container-fluid">    
           
        <h1 class="h3 mb-4 text-gray-800">Employee </h1>
             
        
        <div class="icon1">
          <a class="ls dropdown-toggle" title="For management"  data-toggle="dropdown"><i class="fas fa-cloud-upload-alt"></i> Import</a>
            <ul class="dropdown-menu " role="menu" aria-labelledby="menu1" style="width: 200px;">
                <li role="presentation" class="icons"><a role="menuitem" tabindex="-1" class="iconses" href="import-list.aspx"><i class="fas fa-cloud-upload-alt"></i> Import employee list</a></li>
                <li role="presentation" class="icons"><a role="menuitem" tabindex="-1" class="iconses" href="import-vitae.aspx"><i class="fas fa-cloud-upload-alt"></i> Import curriculum vitae</a></li>
                <li role="presentation" class="icons"><a role="menuitem" tabindex="-1" class="iconses" href="import-transfer.aspx"><i class="fas fa-cloud-upload-alt"></i> Import work transfer</a></li>
            </ul>
        <button type="button"class="btn btn-info"  onclick="addemployees()"> Add Employees</button>
      </div>
          
        <div class="row">
            <div class="col-md-12">
                <div >
                    <div class="panel-heading">
                    <input id="txtSearch" style="width: 500px; margin-left: 200px; float: left; overflow: hidden;" type="text" class="form-control" placeholder="Input name employee and press Enter" />
                    <button style="" class="btn btn-search btn-success" onclick="SearchEmployees()">Search</button>
                    </div>
                    <p></p>
                    <div id="tblEmployees">
                    <table class="table table-bordered table-responsive" id="dataTable" >
                        <thead>
                            <tr>
                                <th>Id </th>
                                <th>EmployeeCode </th>
                                <th>FirstName </th>
                                <th>LastName</th>
                                <th>Email</th>
                                <th>Address </th>
                                <th>Phone</th>
                                <th>ManagerId</th>
                                <th>BasicSalary</th>
                                <th>KPISalary</th>
                                <th>Action</th>
                            </tr>
                        </thead>

                        <tbody>
                             <%for (int i = listEmployees.Count - 1; i > -1; i--)
                    {%>
                            <tr>
                                <td><%=listEmployees[i].EmployeeId %></td>
                                <td><%=listEmployees[i].EmployeeCode %></td>
                                <td><%=listEmployees[i].FirstName %></td>
                                <td><%=listEmployees[i].LastName %></td>
                                <td><%=listEmployees[i].Email %></td>
                                <td><%=listEmployees[i].Address %></td>
                                <td><%=listEmployees[i].Phone %></td>
                                <td><%=listEmployees[i].ManagerId %></td>
                                <td><%=listEmployees[i].BasicSalary %></td>
                                <td><%=listEmployees[i].KPISalary %></td>
                                <td>

                                  <button onclick="edit(<%=listEmployees[i].EmployeeId %>)" title="Edit"><i class="fas fa-pen"></i></button>
                                  <button type="button" style="border:none;background-color:floralwhite" onclick="clickdelete(<%=listEmployees[i].EmployeeId %>)" title="Delete"><i class="fas fa-trash-alt" style="color:red"></i></button>

                                </td>
                                <%}%>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="export a">
            <button class="btn btn-facebook" data-toggle="modal" data-target="#myModal">
                <i class="fa fa-download"></i>
                <span>Export data
                </span>
                <span>
                    <span>(</span><span>1</span><span> </span><span>current</span><span>)</span>
                </span>
            </button>
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">

                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">You want to export 1 lines from the system.</h4>
                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-default" data-dismiss="modal">Close</button>
                            <button class="btn btn-facebook">Download</button>
                        </div>

                    </div>

                </div>
            </div>
        </div>

   <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });

        function addemployees() {
            location.href = "/Employee/add-employees.aspx";
       }



       function clickdelete(id) {
           var txt;
           var r = confirm("Are you sure Delete?");
           if (r == true) {
               txt = $.post("/do/Employee/delete-employee.aspx", {
                   id: id,
               }, function (data) {
                   if (data == 1) {
                       alert("Delete success!")
                       location.href = "/Employee/employee.aspx";
                   }
                   else {
                       alert("Error", data)
                   }
               });
           }
        }
        function edit(id) {
            location.href = "/Employee/edit-employee.aspx?id=" + id;
        }

       function SearchEmployees() {
            var name = $("#txtSearch").val();
            $.post("/do/Employee/search-employee.aspx", {
                name: name,
            }, function (data) {
               
                $("#tblEmployees").html(data);
            });
        }
        //
        /* Search reward */
        document.getElementById('txtSearch').onkeydown = function (event) {
            if (event.keyCode == 13) {
                SearchEmployees();
            } else {
                $("#tblEmployees").load(" #tblEmployees");
            }
        }

   </script>
</asp:Content>

