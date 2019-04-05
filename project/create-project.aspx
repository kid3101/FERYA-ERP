<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="create-project.aspx.cs" Inherits="project_CreateProject_CreateProject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">


    <link href="../css/Setting/AccessRight.css" rel="stylesheet" />
    <link href="../dist/fastselect.css" rel="stylesheet" />
    <script src="../dist/fastselect.js"></script>
    <link href="../dist/fastselect.min.css" rel="stylesheet" />
    <script src="../dist/fastselect.min.js"></script>
    <script src="../dist/fastselect.standalone.js"></script>
    <script src="../dist/fastselect.standalone.min.js"></script>
    <link href="../css/css-project/edit-project.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="container-fluid">
        <h1 class="h3 mb-4 text-gray-800">Create Project</h1>
        <div class="row">
            <div class="col-sm-3">
                <div>
                    <div><b>Overview</b></div>

                </div>
            </div>
            <div class="col-sm-8">
                <br>
                <label for="txtName">Name <i style="color: red">*</i></label>
                <div>
                    <input id="txtName" class="form-control" type="text">
                    <br>
                </div>

                <label>Description</label>
                <div>
                    <textarea id="txtDesc" style="width: 700px" class="tinymce form-control "></textarea>
                </div>
                <label>Content</label>
                <div>
                    <textarea id="txtContent" style="width: 700px" class="tinymce form-control "></textarea>
                </div>
                <br />
                <div class="col-sm" style="display: flex; margin-left: -22px;">
                    <div class="col-sm-6">
                        <label for="ex1">Start Day</label>

                        <div id="txtStartDay" class="input-group date" data-date-format="dd-mm-yyyy">
                            <input class="form-control" type="date">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                        </div>
                    </div>

                    <div class="col-sm-6">

                        <label for="ex2">Finish Day</label>
                        <div id="txtFinishDay" class="input-group date" data-date-format="dd-mm-yyyy">
                            <input class="form-control" type="date">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                        </div>
                    </div>
                </div>
                <br />
                <div class="col-sm-5" style="margin-left: -10px;">
                    <label>Status </label>
                    <select id="txtStatus" class="form-control">
                        <option>New </option>
                        <option>Working </option>
                        <option>Finish </option>
                        <option>Close </option>
                    </select>
                </div>

            </div>

            <br />


        </div>
        <hr />
        <div class="row">

            <div class="col-sm-3">

                <div>Manager Project </div>
                <br />
                <br />
                <br />
                <br />
                <br />
                <div>Company <i style="color: red">*</i></div>
            </div>

            <div class="col-sm-6">
                <div>
                    <div>Member</div>
                    
                    <div>
                        <select id="txtManager" class="form-control">
                            <option>Select </option>
                             <%for (int i = 0; i < listemployees.Count; i++)
                                 {%>
                            <option value="<%=listemployees[i].ManagerId%>"><%=listemployees[i].LastName%> </option>
                            <%}%>
                        </select>
                    </div>
                </div>
            </div>
        </div>

        <%-- <div>
                        <div class="fstElement fstMultipleMode">
                            <div class="fstControls"><div data-text="Mr TomMy" data-value="Barbados" class="fstChoiceItem">Mr TomMy<button class="fstChoiceRemove" type="button">×</button></div><div data-text="Mr Anh" data-value="Belarus" class="fstChoiceItem">Mr Anh<button class="fstChoiceRemove" type="button">×</button></div><input class="fstQueryInput" style="width: 20px;"></div>
                            <select id="txtMa" style="height:8px" class="multipleSelect" multiple="" name="language">
                <option value="Bangladesh">Mr Peter</option>
                <option selected="" value="Barbados">Mr TomMy</option>
                <option selected="" value="Belarus">Mr Anh</option>
                <option value="Belgium">Mrs </option>
            </select></div>
                    </div>--%>


        <%-- <div class="col-sm-3">
                <div class="flew" style=" margin-top:31px">
                    <label class="switch">
                        <input type="checkbox" checked>
                        <span class="slider round"></span>

                    </label>

                    <span>Can create work</span>
                </div>
            </div>--%>

        <div class="row">

            <div class="col-sm-3">
            </div>
            <div class="col-sm-6">
                <div>

                    <div>Member</div>
                    <div>
                        <select id="txtComPaNy" class="form-control">
                           
                             <option>Select </option>
                             <%for (int j = 0; j < listemployees.Count; j++)
                                 {%>
                            <option value="<%=listCompany[j].CompanyId%>"><%=listCompany[j].CompanyName%> </option>
                          <%}%>
                        </select>
                    </div>
                </div>

            </div>
        </div>

        <%-- <div>
                        <div class="fstElement fstMultipleMode">
                            <div class="fstControls">
                                <div data-text="Mr TomMy" data-value="Barbados" class="fstChoiceItem">Mr TomMy
                                    <button class="fstChoiceRemove" type="button">×</button>

                                </div>
                                <div data-text="Mr Anh" data-value="Belarus" class="fstChoiceItem">Mr Anh<button class="fstChoiceRemove" type="button">×</button>

                                </div>
                                <input class="fstQueryInput" style="width: 20px;">

                            </div>
                            <select style="height:8px" class="multipleSelect" multiple="" name="language">
                <option value="Bangladesh">Mr Peter</option>
                <option selected="" value="Barbados">Mr TomMy</option>
                <option selected="" value="Belarus">Mr Anh</option>
                <option value="Belgium">Belgium</option>
            </select>

                        </div>
                    </div>--%>


        <%--  <div class="col-sm-3">
                <div class="flew" style=" margin-top:31px" >
                    <label class="switch">
                        <input type="checkbox" checked>
                        <span class="slider round"></span>
                    </label>
                    <span>Can create work</span>
                </div>
            </div>--%>
    </div>
    <hr />

    <button type="button" onclick="createproject()" class="btn btn-info">Create new Project</button>

   

    <script>
        //$('.multipleSelect').fastselect();

        //function createproject() {
        //    ShowLoading();
        //    $(input).prop("disabled", true);
        //    $(input).text("Submitting");
        //    var name = $("#txtName").val();
        //    var desc = tinymce.get("txtDesc").getContent();
        //    var content = tinymce.get("txtContent").getContent();
        //    var startday = $("#txtStartDay").val();
        //    var finish = $("#txtFinishDay").val();
        //    var manager = $("#txtManager").val();
        //    var company = $("#txtComPaNy").val();
        //    $.ajax({
        //        url="/do/project/add-project.aspx",
        //        methor="post",
        //        data: {
        //            name: name,
        //            desc: desc,
        //            content: content,
        //            startday: startday,
        //            finish: finish,
        //            manager: manager,
        //            company: company,
        //        },
        //        success: function (data) {
        //            data = JSON.parse(data);
        //            if (data.success == -1) {
        //                console.log(data.error);
        //                alertify.error("Error.Please Try Again")
        //                $(input).prop("disabled", false);
        //                $(input).text("Submit");
        //                HideLoading();
        //            }
        //        }
        //    })
        //}
        function createproject() {
            var name = $("#txtName").val();
            var desc = tinymce.get("txtDesc").getContent();
          var content = tinymce.get("txtContent").getContent();
           var startday = $("#txtStartDay").val();
          var finish = $("#txtFinishDay").val();
           var manager = $("#txtManager").val();
            var company = $("#txtComPaNy").val();
            var status = $("#txtStatus").val();

           
            $.post("/do/Project/add-project.aspx", {
                name: name,
                desc: desc,
                content: content,
                startday: startday,
                finish: finish,
                manager: manager,
                company: company,
                status: status,
            }, function (data) {
                if (data == 1) {
                    alert("Success");
                    location.href = "/project/project-list.aspx";
                }
                else {
                   alert("Error", data);
                    location.href = "/do/Project/add-project.aspx";
                }
            }
            );

        }
    </script>

</asp:Content>

