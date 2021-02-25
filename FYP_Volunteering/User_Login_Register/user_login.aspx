<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Main/Users-Login.Master" AutoEventWireup="true" CodeBehind="user_login.aspx.cs" Inherits="FYP_Volunteering.User_Login_Register.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /> <br /> 
    <div class="container" style="background-image: url('../img/gifs/dots.gif');">
        <div class="row">
            <div class="col-md-6 mx-auto">
                
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="../img/user/generaluser.png" width="150px;" alt="usericon" /> 
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3> User Login</h3>
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
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" 
                                        runat="server" placeholder="Enter Email"></asp:TextBox>
                                </div>   
                                <div class="form-group"> 
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"
                                        placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <br /> 
                                <div class="form-group"> 
                                    <asp:Button class="btn btn-success btn-lg btn-block" ID="Button1"
                                        runat="server" Text="Login" style="width: 100%;" OnClick="Button1_Click"/>
                                </div>
                                <div class="form-group"> 
                                    <a href="sign_up.aspx"><input class="btn btn-primary btn-lg btn-block" id="Button2" 
                                        type="button" value="Sign Up" style="width: 100%;"/></a>
                                </div>
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
