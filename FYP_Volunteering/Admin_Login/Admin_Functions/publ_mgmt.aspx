<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Main/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="publ_mgmt.aspx.cs" Inherits="FYP_Volunteering.publisher_mgmt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
     <div class="container">
        <div class="row">
            <div class="col-md-5">
 
                <div class="card">
                    <div class="card-body">
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Recruiter Details</h4>
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <img width="100px" src="../../img/banner1.png" />                                    
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col-md-4">
                                <label>Recruiter ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
 
                            <div class="col-md-8">
                                <label>Recruiter Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Name"></asp:TextBox>
 
                                </div>
                            </div>
                        </div>
                        <br /> 
                        <div class="row">
                            <div class="col-4">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button2_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button3_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button4_Click" />
                            </div>
                        </div>
 
 
                    </div>
                </div>
                <br>
            </div>
 
            <div class="col-md-6">
 
                <div class="card">
                    <div class="card-body">
 
 
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Recruiters List</h4>
                                    </center>
                            </div>
                        </div> 
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
 
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:evolunteerDBConnectionString2 %>" SelectCommand="SELECT * FROM [recruiter_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="recruiter_id" DataSourceID="SqlDataSource2">
                                    <Columns>
                                        <asp:BoundField DataField="recruiter_id" HeaderText="recruiter_id" ReadOnly="True" SortExpression="recruiter_id" />
                                        <asp:BoundField DataField="recruiter_name" HeaderText="recruiter_name" SortExpression="recruiter_name" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:evolunteerDBConnectionString2 %>" SelectCommand="SELECT * FROM [recruiter_master_tbl]"></asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
 
        </div>
    </div>
    <br /> <br /> <br /> 
</asp:Content>
