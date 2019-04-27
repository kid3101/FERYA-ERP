<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search-employee.aspx.cs" Inherits="do_Employee_search_employee" %>

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
