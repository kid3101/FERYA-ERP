<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="history-changework.aspx.cs" Inherits="project_history_changework" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container-fluid">
        <!-- Page Heading -->
      <div style="display:flex;">
             <h1 class="h3 mb-4 text-gray-800">System Architect</h1>
             <i style="padding-left: 20px;color: black;padding-right: 20px;margin-top:10px;" class="fa fa-angle-right"></i>
             <h1 class="h3 mb-4 text-gray-800">TAG 1</h1><i style="padding-left: 20px;color: black;padding-right: 20px;margin-top:10px;" class="fa fa-angle-right"></i>
             <h1 class="h3 mb-4 text-gray-800">Update Status</h1>
          <i style="padding-left: 20px;color: black;padding-right: 20px;margin-top:10px;" class="fa fa-angle-right"></i>
          <h1 class="h3 mb-4 text-gray-800">History</h1>

         </div>
        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                 <th>No.</th>
                                <th>HistoryStatus</th>
                                <th>TimeUpdate</th>
                              
                                <th>Note</th>
                              
                            
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                 <td>1</td>
                                <td>assign =>complete</td>
                                <td>12/10/2020</td>
                               
                                <td>complete</td>
                               
                            </tr>
                           

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

