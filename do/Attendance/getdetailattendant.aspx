<%@ Page Language="C#" AutoEventWireup="true" CodeFile="getdetailattendant.aspx.cs" Inherits="do_Attendance_getdetailattendant" %>
<div id="aaa">
    <table class="table table-bordered tablee" >
        <thead>
            <tr>
                <th>NO</th>
                <th>CHECK IN</th>
                <th>CHECK OUT</th>
             </tr>
        </thead>
        <tbody>
            <tr>
                 <%for (int i = 0; i < list.Count; i++)
                    { %>                       
                        <td><%=i+1 %></td>
                        <td>
                           <div class="row">
                         
                          <div class="col-sm-6"><%=list[i].PhotoURLIN %></div>

                           <div class="col-sm-6">Time: <%=list[i].PhotoTimeIn %><br />
                              Longitude: 16.060606006 <br />
                              Latitude: 108.58858585
                          </div>

                        </div>

                        </td>
                        <td>
                            <div class="row">
                          
                          <div class="col-sm-6"><%=list[i].PhotoURLOUT %></div>

                           <div class="col-sm-6">Time: <%=list[i].PhotoTimeOut %><br />
                              Longitude: 16.060606006 <br />
                              Latitude: 108.58858585
                          </div>

                        </div>

                        </td>
                    </tr>
                    <%} %>  
        </tbody>
    </table>
     <div class="modal-footer">
		 <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
		<%--<button class="btn btn-primary">Save changes</button>--%>
	</div>
</div>

