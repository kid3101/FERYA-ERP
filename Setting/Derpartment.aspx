<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Derpartment.aspx.cs" Inherits="Setting_Derpartment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Personnel settings -> Department</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
    <!-- Morris chart -->
    <link rel="stylesheet" href="bower_components/morris.js/morris.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="bower_components/jvectormap/jquery-jvectormap.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="bower_components/bootstrap-daterangepicker/daterangepicker.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- Google Font -->
    <link href="Style/Trang.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link href="../css/Setting/Derpartment.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <h1 class="h3 mb-4 text-gray-800">Setting > Department</h1>
        
       <%--<ul class="nav" style=" margin-block-start: 1em;padding-inline-start: 40px;margin-top: 48px;">
            <li class="active " style="margin-right: 20px;">
                <a data-toggle="tab" href="#" style="cursor:pointer;">
                    <span style="color:black;">All</span>
                    <span class="number">0</span>
                </a>
            </li>

        </ul>--%>
        <div class="container-fluid tong">
            <div class="container k">
                <div class="row">
                    <div class="col-sm-5 sidenav coll">
                        <a data-toggle="modal" data-target="#myModal" class="btn btn-info aa" href="#"><i class="fa fa-plus-circle"></i> CREATE BOARD ROOM</a>
                    </div>
                    <!-- Modal -->
                    <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    
                                    <h2 class="modal-title kk">Add a new department</h2>
                                </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="form-group">
                                            <label class="kk">Name</label>
                                            <span class="mau">*</span>
                                            <input id="txtName" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>Office</label>
                                            <select class="officee form-control" id="selectListOffice">
                                                <%for (int j = 0; j < listOffice.Count; j++)
                                                { %>
                                                    <option value="<%=listOffice[j].OfficeId %>"><%=listOffice[j].OfficeName %></option>
                                                <%} %>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Company</label>
                                            <select class="officee form-control" id="selectListCompany">
                                                <%for (int j = 0; j < listCompany.Count; j++)
                                            { %>
                                                <option value="<%=listCompany[j].CompanyId %>"><%=listCompany[j].CompanyName %></option>
                                            <%} %>            
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Manager</label>
                                            <select class="officee form-control" id="selectListManager">
                                                <%for (int j = 0; j < listEmployees.Count; j++)
                                            { %>
                                                <option value="<%=listEmployees[j].ManagerId %>"><%=listEmployees[j].LastName %></option>
                                            <%} %>            
                                            </select>
                                        </div>
                                
                                        
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default closee" data-dismiss="modal" >Close</button>
                                    <button type="submit" class="btn btn-info addd"><a onclick="addnew()" class="hv">Create departments</a></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="col-sm-6 sidenav">

                    </div>
                </div>

            </div>

        </div>
        <br>
        <div class="dii">
            <table class="table table-bordered">
                <thead>
                   
                    <tr>
                        <th>Department name</th>
                        <th>Office name</th>
                        <th>Company name</th>
                        <th>Create Date</th>
                        <th>Curent Employee</th>
                        <th>Manager Employee</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                     <%for (int i = listDepartment.Count - 1; i > -1; i--)
                    {%>
                    <tr>
                        <td><%=listDepartment[i].DeparmentName %></td>
                        <td><%=listDepartment[i].Office.OfficeName %></td>
                        <td><%=listDepartment[i].Company.CompanyName %></td>
                        <td><%=listDepartment[i].CreatedDate %></td>
                        <td><%=listDepartment[i].Employee.LastName %></td>
                        <td><%=listDepartment[i].Employee.LastName %></td>
                        <td>
                            <a data-toggle="modal" data-target="#myModal2">
                                <i class="fa fa-pen"></i>
                            </a>
                            <button type="button" style="border:none;background-color:floralwhite" onclick="del()"><i class="fas fa-trash-alt" style="color:red"></i></button>
                        </td>
                        <%}%>
                    </tr>
                </tbody>
            </table>
        </div>
        <!-- Modal -->
    <div class="modal fade" id="myModal2" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    
                    <h2 class="modal-title kk">Update departments</h2>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label style="float:left;">Name</label>
                            <span class="mau">*</span>
                            <input class="form-control" value="Department 1">
                        </div>
                        <div class="form-group">
                            <label >Office</label>
                            <select class="officee" id="selectList3">
                                <%for (int j = 0; j < listOffice.Count; j++)
                                { %>
                                    <option value="<%=listOffice[j].OfficeId %>"><%=listOffice[j].OfficeName %></option>
                                <%} %>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Company</label>
                            <select class="officee" id="selectList4">
                                <%for (int j = 0; j < listCompany.Count; j++)
                                { %>
                                    <option value="<%=listCompany[j].CompanyId %>"><%=listCompany[j].CompanyName %></option>
                                <%} %>
                            </select>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <a href="#" onclick="del()" class="av">Delete this department</a>
                    <button type="button" class="btn btn-default closee" data-dismiss="modal" >Close</button>
                    <button type="submit" class="btn btn-facebook addd" ><a href="Derpartment.aspx" class="hv">Update</a></button>
                </div>
            </div>

        </div>
    </div>
    </div>
    <script>
        function del(){
            alert("Are You Sure?");
        }

        function addnew()
        {
            var name = $("#txtName").val();
            var office = $("#lstOffice").val();
            var company = $("#lstCompany")
   
            $.post ("../do/add-new-department.aspx", {
                name: name,
                office: office,
                company: company,
             
            }, function (data) {
                if (data == 1) {
                    alertify.alert("Success");
                    location.href = "Derpartment.aspx";
                }
                else {
                    alertify.alert("Error", data);
                }
            });
            }
    </script>
</asp:Content>

