<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Main/Users-Login.Master" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="FYP_Volunteering.Admin_Login_Register.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /> <br /> 
     <div class="container" style="background-image: url('../img/gifs/1.gif');">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="../img/user/adminuser.png" width="150px;" alt="usericon" /> 
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3> Admin Login</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />  
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">                               
                                <div class="form-group"> 
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Admin ID"></asp:TextBox>
                                </div>
                                <div class="form-group"> 
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"
                                        placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <br /> 
                                <div class="form-group"> 
                                    <asp:Button class="btn btn-success btn-lg btn-block" ID="Button1"
                                        runat="server" Text="Login" style="width: 100%;" OnClick="Button1_Click"/>
                                </div>
                                <br /> 
                            </div>
                        </div>

                    </div>
                </div>

                <a href="../HomePage.aspx"><< Back to Home</a><br><br>
            </div>
        </div>
    </div>
    <br /> <br /> 
</asp:Content>
