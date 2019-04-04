<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditOffice.aspx.cs" Inherits="Setting_EditOffice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <h1 class="h3 mb-4 text-gray-800">Setting  > Update Office</h1>
        <div style="display: flex;">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
        <div style="display:flex;margin-bottom: 30px;">
        <div style="margin-right: 10px;" >
            <span>Name</span>
            <span style="color:red;">*</span>
            <input class="form-control" id="txtName1" value="<%=editoffice.OfficeName %>"" style="display:block;height:25px" type="text" />
        </div>
        <div style="margin-right: 10px;">
            <span>Address</span>
            <input class="form-control" id="txtAddress1" value="<%=editoffice.OfficeAddress %>" style="display:block;height:25px" type="text" />
        </div>
        <div style="margin-right: 10px;">
            <span>City</span>
            <select class="form-control" style="display:block;height:25px;width:140px;">
                <option>---</option>
                <option>Ho Chi Minh </option>
                <option>Ha Noi</option>
                <option>Da Nang</option>
                <option>Can Tho</option>
            </select>
        </div>
        <div style="margin-right: 10px;">
                    <label for="pwd">Company</label>
                        <select  id="selectList1"  class="form-control" style="height: 35px;margin-top: -10px;width: 175px;">
                            <%for (int j = 0; j < listCompany.Count; j++)
                                { %>
                            <option value="<%=listCompany[j].CompanyId %>"><%=listCompany[j].CompanyName %></option>
                            <%} %>
                        </select>
                </div>
        <%--<div style="margin-right: 10px;">
            <span>IP is timed <i class="fa fa-info-circle" style="cursor:pointer;" title="Your current IP is 15.169.34.171"></i></span>
            <input style="display:block;height:25px" type="text" />
        </div>--%>
    </div>
    <div style="display:flex;">
        <div style="margin-right: 10px;">
            <span>Work time</span>
            <select class="form-control" style="display:block;height:25px;width:179px;">
                <option>---</option>
                <option>00 Hours</option>
                <option>01 Hours</option>
                <option>02 Hours</option>
                <option>03 Hours</option>
                <option>04 Hours</option>
                <option>05 Hours</option>
                <option>06 Hours</option>
                <option>07 Hours</option>
                <option>08 Hours</option>
                <option>09 Hours</option>
                <option>10 Hours</option>
                <option>11 Hours</option>
                <option>12 Hours</option>
                <option>13 Hours</option>
                <option>14 Hours</option>
                <option>15 Hours</option>
                <option>16 Hours</option>
                <option>17 Hours</option>
                <option>18 Hours</option>
                <option>19 Hours</option>
                <option>20 Hours</option>
                <option>21 Hours</option>
                <option>22 Hours</option>
                <option>23 Hours</option>
            </select>
        </div>
        <div style="margin-right: 10px;">
            <input type="hidden" />
            <select class="form-control" style="display:block;height:25px;width:178px;margin-top: 23px;">
                <option>---</option>
                <option>00 Minutes</option>
                <option>01 Minutes</option>
                <option>02 Minutes</option>
                <option>03 Minutes</option>
                <option>04 Minutes</option>
                <option>05 Minutes</option>
                <option>06 Minutes</option>
                <option>07 Minutes</option>
                <option>08 Minutes</option>
                <option>09 Minutes</option>
                <option>10 Minutes</option>
                <option>11 Minutes</option>
                <option>12 Minutes</option>
                <option>13 Minutes</option>
                <option>14 Minutes</option>
                <option>15 Minutes</option>
                <option>16 Minutes</option>
                <option>17 Minutes</option>
                <option>18 Minutes</option>
                <option>19 Minutes</option>
                <option>20 Minutes</option>
                <option>21 Minutes</option>
                <option>22 Minutes</option>
                <option>23 Minutes</option>
                <option>24 Minutes</option>
                <option>25 Minutes</option>
                <option>26 Minutes</option>
                <option>27 Minutes</option>
                <option>28 Minutes</option>
                <option>29 Minutes</option>
                <option>30 Minutes</option>
                <option>31 Minutes</option>
                <option>32 Minutes</option>
                <option>33 Minutes</option>
                <option>34 Minutes</option>
                <option>35 Minutes</option>
                <option>36 Minutes</option>
                <option>37 Minutes</option>
                <option>38 Minutes</option>
                <option>39 Minutes</option>
                <option>40 Minutes</option>
                <option>41 Minutes</option>
                <option>42 Minutes</option>
                <option>43 Minutes</option>
                <option>44 Minutes</option>
                <option>45 Minutes</option>
                <option>46 Minutes</option>
                <option>47 Minutes</option>
                <option>48 Minutes</option>
                <option>49 Minutes</option>
                <option>50 Minutes</option>
                <option>51 Minutes</option>
                <option>52 Minutes</option>
                <option>53 Minutes</option>
                <option>54 Minutes</option>
                <option>55 Minutes</option>
                <option>56 Minutes</option>
                <option>57 Minutes</option>
                <option>58 Minutes</option>
                <option>59 Minutes</option>
            </select>
        </div>
        <div style="margin-right: 10px;">
            <span>Shift hour</span>
            <select class="form-control" style="display:block;height:25px;width:140px;">
                <option>---</option>
                <option>00 Hours</option>
                <option>01 Hours</option>
                <option>02 Hours</option>
                <option>03 Hours</option>
                <option>04 Hours</option>
                <option>05 Hours</option>
                <option>06 Hours</option>
                <option>07 Hours</option>
                <option>08 Hours</option>
                <option>09 Hours</option>
                <option>10 Hours</option>
                <option>11 Hours</option>
                <option>12 Hours</option>
                <option>13 Hours</option>
                <option>14 Hours</option>
                <option>15 Hours</option>
                <option>16 Hours</option>
                <option>17 Hours</option>
                <option>18 Hours</option>
                <option>19 Hours</option>
                <option>20 Hours</option>
                <option>21 Hours</option>
                <option>22 Hours</option>
                <option>23 Hours</option>
            </select>
        </div>
        <div style="margin-right: 10px;">
            <input type="hidden" />
            <select class="form-control" style="display:block;height:25px;width:177px;margin-top: 24px;">
                <option>---</option>
                <option>00 Minutes</option>
                <option>01 Minutes</option>
                <option>02 Minutes</option>
                <option>03 Minutes</option>
                <option>04 Minutes</option>
                <option>05 Minutes</option>
                <option>06 Minutes</option>
                <option>07 Minutes</option>
                <option>08 Minutes</option>
                <option>09 Minutes</option>
                <option>10 Minutes</option>
                <option>11 Minutes</option>
                <option>12 Minutes</option>
                <option>13 Minutes</option>
                <option>14 Minutes</option>
                <option>15 Minutes</option>
                <option>16 Minutes</option>
                <option>17 Minutes</option>
                <option>18 Minutes</option>
                <option>19 Minutes</option>
                <option>20 Minutes</option>
                <option>21 Minutes</option>
                <option>22 Minutes</option>
                <option>23 Minutes</option>
                <option>24 Minutes</option>
                <option>25 Minutes</option>
                <option>26 Minutes</option>
                <option>27 Minutes</option>
                <option>28 Minutes</option>
                <option>29 Minutes</option>
                <option>30 Minutes</option>
                <option>31 Minutes</option>
                <option>32 Minutes</option>
                <option>33 Minutes</option>
                <option>34 Minutes</option>
                <option>35 Minutes</option>
                <option>36 Minutes</option>
                <option>37 Minutes</option>
                <option>38 Minutes</option>
                <option>39 Minutes</option>
                <option>40 Minutes</option>
                <option>41 Minutes</option>
                <option>42 Minutes</option>
                <option>43 Minutes</option>
                <option>44 Minutes</option>
                <option>45 Minutes</option>
                <option>46 Minutes</option>
                <option>47 Minutes</option>
                <option>48 Minutes</option>
                <option>49 Minutes</option>
                <option>50 Minutes</option>
                <option>51 Minutes</option>
                <option>52 Minutes</option>
                <option>53 Minutes</option>
                <option>54 Minutes</option>
                <option>55 Minutes</option>
                <option>56 Minutes</option>
                <option>57 Minutes</option>
                <option>58 Minutes</option>
                <option>59 Minutes</option>
            </select>
        </div>
    </div>
    <div style="margin-top:20px;display:flex;">
        <div style="margin-right: 7px;margin-top: 24px;">
            <div>Public reviewer</div>
            <select class="form-control" style="height:25px;width:179px;">
                <option>---</option>
            </select>
        </div>
        <div style="margin-right: 7px;">
            <div>Limit date of public review</div>
            <input class="form-control" type="text" value="0" style="height:25px;" />
        </div>
        <div style="margin-right: 7px;">
            <div>Time to work late <span><i class="fa fa-info-circle" style="cursor:pointer;" title="Calculated in minutes (equal to 0 if not installed)"></i></span></div>
            <input class="form-control" type="text" value="0" style="height:25px;width: 135px;" />
        </div>
        <div style="margin-top: 24px;">
            <div>Time to leave early <span><i class="fa fa-info-circle" style="cursor:pointer;" title="Calculated in minutes (equal to 0 if not installed)"></i></span></div>
            <input class="form-control" type="text" value="0" style="height:25px;" />
        </div>
    </div>
                </div>
           
            <div class="col-sm-2"></div>
  </div>
    
    <div class=" container-fluid table-responsive" style="margin-top:40px;">
        <table class="table  table-bordered">
            <thead>
                <tr>
                    <th>Order</th>
                    <th >Name</th>
                    <th>Color</th>
                    <th>Start</th>
                    <th>Finish</th>
                    <th>Status</th>
                    <th>coefficient</th>
                    <th>Break <i class="fa fa-info-circle" style="cursor:pointer;" title="Enter the break time entered in 24-hour style (2 hours 2 minutes = 14:02) and in the format: hour: minute-hour: minute, hour: minute-hour: minute, ..... (eg : 2 hours break: 1 break from 14:00 to 15:00, 2 breaks from 16:00 to 17:00 = 14: 00-15: 00.16: 00-17: 00)"></i></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                        <tr>
                            <td>
                                <input type="text" style="width: 50%;" />
                            </td>
                            <td>
                                <input type="text" />
                            </td>
                            <td>
                                <input type="color" name="favcolor" value="#ff0000">
                            </td>
                            <td>
                                <div style="display:flex;">
                                    <select>
                                        <option>---</option>
                                    <option>00 Hours</option>
                                    <option>01 Hours</option>
                                    <option>02 Hours</option>
                                    <option>03 Hours</option>
                                    <option>04 Hours</option>
                                    <option>05 Hours</option>
                                    <option>06 Hours</option>
                                    <option>07 Hours</option>
                                    <option>08 Hours</option>
                                    <option>09 Hours</option>
                                    <option>10 Hours</option>
                                    <option>11 Hours</option>
                                    <option>12 Hours</option>
                                    <option>13 Hours</option>
                                    <option>14 Hours</option>
                                    <option>15 Hours</option>
                                    <option>16 Hours</option>
                                    <option>17 Hours</option>
                                    <option>18 Hours</option>
                                    <option>19 Hours</option>
                                    <option>20 Hours</option>
                                    <option>21 Hours</option>
                                    <option>22 Hours</option>
                                    <option>23 Hours</option>
                                    </select>
                                    <select>
                                        <option>---</option>
                                    <option>00 Minutes</option>
                                    <option>01 Minutes</option>
                                    <option>02 Minutes</option>
                                    <option>03 Minutes</option>
                                    <option>04 Minutes</option>
                                    <option>05 Minutes</option>
                                    <option>06 Minutes</option>
                                    <option>07 Minutes</option>
                                    <option>08 Minutes</option>
                                    <option>09 Minutes</option>
                                    <option>10 Minutes</option>
                                    <option>11 Minutes</option>
                                    <option>12 Minutes</option>
                                    <option>13 Minutes</option>
                                    <option>14 Minutes</option>
                                    <option>15 Minutes</option>
                                    <option>16 Minutes</option>
                                    <option>17 Minutes</option>
                                    <option>18 Minutes</option>
                                    <option>19 Minutes</option>
                                    <option>20 Minutes</option>
                                    <option>21 Minutes</option>
                                    <option>22 Minutes</option>
                                    <option>23 Minutes</option>
                                    <option>24 Minutes</option>
                                    <option>25 Minutes</option>
                                    <option>26 Minutes</option>
                                    <option>27 Minutes</option>
                                    <option>28 Minutes</option>
                                    <option>29 Minutes</option>
                                    <option>30 Minutes</option>
                                    <option>31 Minutes</option>
                                    <option>32 Minutes</option>
                                    <option>33 Minutes</option>
                                    <option>34 Minutes</option>
                                    <option>35 Minutes</option>
                                    <option>36 Minutes</option>
                                    <option>37 Minutes</option>
                                    <option>38 Minutes</option>
                                    <option>39 Minutes</option>
                                    <option>40 Minutes</option>
                                    <option>41 Minutes</option>
                                    <option>42 Minutes</option>
                                    <option>43 Minutes</option>
                                    <option>44 Minutes</option>
                                    <option>45 Minutes</option>
                                    <option>46 Minutes</option>
                                    <option>47 Minutes</option>
                                    <option>48 Minutes</option>
                                    <option>49 Minutes</option>
                                    <option>50 Minutes</option>
                                    <option>51 Minutes</option>
                                    <option>52 Minutes</option>
                                    <option>53 Minutes</option>
                                    <option>54 Minutes</option>
                                    <option>55 Minutes</option>
                                    <option>56 Minutes</option>
                                    <option>57 Minutes</option>
                                    <option>58 Minutes</option>
                                    <option>59 Minutes</option>
                                    </select>
                                </div>
                            </td>
                            <td>
                                <div style="display:flex;">
                                    <select>
                                        <option>---</option>
                                    <option>00 Hours</option>
                                    <option>01 Hours</option>
                                    <option>02 Hours</option>
                                    <option>03 Hours</option>
                                    <option>04 Hours</option>
                                    <option>05 Hours</option>
                                    <option>06 Hours</option>
                                    <option>07 Hours</option>
                                    <option>08 Hours</option>
                                    <option>09 Hours</option>
                                    <option>10 Hours</option>
                                    <option>11 Hours</option>
                                    <option>12 Hours</option>
                                    <option>13 Hours</option>
                                    <option>14 Hours</option>
                                    <option>15 Hours</option>
                                    <option>16 Hours</option>
                                    <option>17 Hours</option>
                                    <option>18 Hours</option>
                                    <option>19 Hours</option>
                                    <option>20 Hours</option>
                                    <option>21 Hours</option>
                                    <option>22 Hours</option>
                                    <option>23 Hours</option>
                                    </select>
                                    <select>
                                        <option>---</option>
                                    <option>00 Minutes</option>
                                    <option>01 Minutes</option>
                                    <option>02 Minutes</option>
                                    <option>03 Minutes</option>
                                    <option>04 Minutes</option>
                                    <option>05 Minutes</option>
                                    <option>06 Minutes</option>
                                    <option>07 Minutes</option>
                                    <option>08 Minutes</option>
                                    <option>09 Minutes</option>
                                    <option>10 Minutes</option>
                                    <option>11 Minutes</option>
                                    <option>12 Minutes</option>
                                    <option>13 Minutes</option>
                                    <option>14 Minutes</option>
                                    <option>15 Minutes</option>
                                    <option>16 Minutes</option>
                                    <option>17 Minutes</option>
                                    <option>18 Minutes</option>
                                    <option>19 Minutes</option>
                                    <option>20 Minutes</option>
                                    <option>21 Minutes</option>
                                    <option>22 Minutes</option>
                                    <option>23 Minutes</option>
                                    <option>24 Minutes</option>
                                    <option>25 Minutes</option>
                                    <option>26 Minutes</option>
                                    <option>27 Minutes</option>
                                    <option>28 Minutes</option>
                                    <option>29 Minutes</option>
                                    <option>30 Minutes</option>
                                    <option>31 Minutes</option>
                                    <option>32 Minutes</option>
                                    <option>33 Minutes</option>
                                    <option>34 Minutes</option>
                                    <option>35 Minutes</option>
                                    <option>36 Minutes</option>
                                    <option>37 Minutes</option>
                                    <option>38 Minutes</option>
                                    <option>39 Minutes</option>
                                    <option>40 Minutes</option>
                                    <option>41 Minutes</option>
                                    <option>42 Minutes</option>
                                    <option>43 Minutes</option>
                                    <option>44 Minutes</option>
                                    <option>45 Minutes</option>
                                    <option>46 Minutes</option>
                                    <option>47 Minutes</option>
                                    <option>48 Minutes</option>
                                    <option>49 Minutes</option>
                                    <option>50 Minutes</option>
                                    <option>51 Minutes</option>
                                    <option>52 Minutes</option>
                                    <option>53 Minutes</option>
                                    <option>54 Minutes</option>
                                    <option>55 Minutes</option>
                                    <option>56 Minutes</option>
                                    <option>57 Minutes</option>
                                    <option>58 Minutes</option>
                                    <option>59 Minutes</option>
                                    </select>
                                </div>
                            </td>
                            <td>
                                <div>
                                    <select>
                                        <option>Enable</option>
                                        <option>Disable</option>
                                    </select>
                                </div>
                            </td>
                            <td>
                                <input type="text" style="width: 50%;text-align:center;" value="1.00" />
                            </td>
                            <td>
                                <input type="text" />
                            </td>
                            <td>
                                <button type="button" style="border:none;background-color:floralwhite" onclick="del()"><i class="fas fa-trash-alt" style="color:red"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Shift 1</td>
                            <td><input type="color" name="favcolor" value="#0cf380"></td>
                            <td>8:15</td>
                            <td>17:30</td>
                            <td>Enable</td>
                            <td>1.00</td>
                            <td>30 Minutes</td>
                            <td>
                                <button type="button" style="border:none;background-color:floralwhite" onclick="del()"><i class="fas fa-trash-alt" style="color:red"></i></button>

                            </td>
                            
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Shift 2</td>
                            <td><input type="color" name="favcolor" value="#e2dc15"></td>
                            <td>12:00</td>
                            <td>18:30</td>
                            <td>Enable</td>
                            <td>1.00</td>
                            <td>30 Minutes</td>
                            <td>
                                <button type="button" style="border:none;background-color:floralwhite" onclick="del()"><i class="fas fa-trash-alt" style="color:red"></i></button>

                            </td>
                            
                        </tr>
                        <tr>
                            <td><button type="submit" class="btn btn-info" style="border:none;padding-left: 20px;padding-right: 20px;width: 200px;"><a href="#" style="color:white;text-decoration:none;"><i class="fa fa-plus"></i> Add shift</a></button></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            
                        </tr>
                    </tbody>
        </table>
    </div>
    <div style="text-align: center;margin-top: 20px;">
        
        <button type="button" class="btn btn-facebook" style="border:none;padding-left: 20px;padding-right: 20px;" onclick="edit(<%=editoffice.OfficeId%>)">Update</button>
    </div>
  
       </div>
    <script>
function edit(id)
        {
            var name = $("#txtName1").val();
            var address = $("#txtAddress1").val();
            var company = $("#selectList1").val();
            $.post('/do/Setting/edit-office.aspx', {
                id:id,
                name: name,
                address: address,
                company: company

            }, function (data) {
                    if (data == 1) {
                        alert("Successful update!");
                        location.href = "/Setting/Office.aspx";
                    }
                    else {
                        alert("Error", data)
                    }
                });


        }
    </script>
</asp:Content>

