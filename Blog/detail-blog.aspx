<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="detail-blog.aspx.cs" Inherits="Blog_detail_blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="../css/Css-Blog/detail-blog-css.css" rel="stylesheet" />
            <div class="header-blog">
                <div class="col-sm-7">
                      <a class="title-blog" href="list-blog.aspx"><b>Blog List</b></a>
                 </div>  
            </div>
            <div class="body-detail">
                    <div class="row" style="margin-top:10px;">
        <div class="col-sm-9" id="bodydetail">
            <div class="contentblog">
                <div><b style="color:red">DEGITAL MARKETING</b></div>
                <br />
                <div>
                    Amy normally hated Monday mornings, but this year was different. Kamal was in her art class and she liked Kamal. She was waiting outside the classroom when her friend Tara arrived.

                    “Hi Amy! Your mum sent me a text. You forgot your inhaler. Why don’t you turn your phone on?” Amy didn’t like technology. She never sent text messages and she hated Facebook too.

                    “Did Kamal ask you to the disco?” Tara was Amy’s best friend, and she wanted to know everything that was happening in Amy’s life. “I don’t think he likes me,” said Amy. “And I never see him alone. He’s always with Grant.” Amy and Tara didn’t like Grant.

                    “Do you know about their art project?” asked Amy. “It’s about graffiti, I think,” said Tara. “They’re working on it at the old house behind the factory.” “But that building is dangerous,” said Amy. “Aah, are you worried he’s going to get hurt?" Tara teased. “Shut up, Tara! Hey look, here they come!”
                </div>             
                <div style="margin-top:20px;">
                    <a style="margin-right:10px;">1 Comment</a>
                    <a style="margin-right:10px;">1 View </a>
                    <a style="margin-right:10px;">Kate Winlesss</a>
                    <span style="margin-right:10px;">Created: 10:00, Today</span>
                </div>
            </div>
            <hr style="margin-left:100px" />
            <span style="margin-bottom:50px;margin-top:20px; margin-left:50%"><b>Comment For Blog</b></span>
            <hr style="margin-left:100px" />
            <div style="margin-left:400px;">
                <div style="margin-left:-300px;">
                    <b>User 123:</b> today, 20:20pm : Hello, .................
                    <br />
                    <b>User 456:</b> today, 20:20pm : Hi, ......................
                      <br />
                     <b>User 789:</b> today, 20:20pm : Hello, ........................
                    <br />
                    <b>User 999:</b> today, 20:20pm : Hi, ......................
                </div>
            </div>
            <div style="margin-left:100px;">
                <form style="margin-bottom:20px;">
                    <textarea class="form-control" id="exampleFormControlTextarea3" rows="7" placeholder="Write comment ..." style="border-radius:20px; margin-top:30px;"></textarea>
                </form>
                <button style="float:right;  border-radius: 20px; font-size:24px; border:none;padding-left:10px;padding-right:10px;" ><b style="color:#3498db;">Comment Enter</b></button>
            </div>
        </div>
        <div class="col-sm-3">

        </div>
    </div>
            </div>
</asp:Content>

