<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage-Main/Member/Logged_Member.Master" AutoEventWireup="true" CodeBehind="apply_volunteer.aspx.cs" Inherits="FYP_Volunteering.User_Login_Register.Logged_to_System.apply_volunteer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
           <script type="text/javascript">
       $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
       });
       </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /> 
    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Apply for an Opportunity:</h4>
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
                     <div class="col-md-3">
                        <label>Experience ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                               <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-primary" OnClick="LinkButton1_Click">Go!</asp:LinkButton>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-9">
                        <label>Experience Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Name"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Region</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Asia-Pacific" Value="Asia-Pacific" />
                              <asp:ListItem Text="Europe" Value="Europe" />
                              <asp:ListItem Text="Africa" Value="Africa" />
                              <asp:ListItem Text="America" Value="America" />
                              <asp:ListItem Text="Australia" Value="Australia" />
                           </asp:DropDownList>
                        </div>
                        <label>Manager</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Manager"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Publish Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                        </div>
                         <label>Mobile No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Mobile Number" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Genre</label>
                        <div class="form-group">
                           <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                              <asp:ListItem Text="Virtual" Value="Virtual" />
                              <asp:ListItem Text="Abroad" Value="Abroad" />
                              <asp:ListItem Text="Donation" Value="Donation" />
                               <asp:ListItem Text="COVID-19" Value="COVID-19" />
                              <asp:ListItem Text="School" Value="School" />
                           </asp:ListBox>
                        </div>
                     </div>
                  </div>
 
                  <div class="row">
                     <div class="col-12">
                        <label>Comments</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Comments" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <br /> 
                  <div class="row">
                     <div class="col-4">
                         <asp:Button ID="Button4" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button4_Click" /> <!-- button 1--> 
                     </div>
                      <div class="col-4">
                          <asp:Button ID="Button1" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button1_Click" />
                        </div>
                     <div class="col-4">
                         <asp:Button ID="Button5" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button5_Click" />
                          </div>
                  </div>
               </div>
            </div>
            <br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Applied Volunteering List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:evolunteerDBConnectionString2 %>"
                          SelectCommand="SELECT * FROM [user_apply_experience_tbl]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="experience_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="experience_id" HeaderText="Experience ID" SortExpression="experience_id" ReadOnly="True" />
                                <asp:BoundField DataField="experience_name" HeaderText="Name" SortExpression="experience_name" />
                                <asp:BoundField DataField="genre" HeaderText="Genre" SortExpression="genre" />
                                <asp:BoundField DataField="recruiter_name" HeaderText="Recruiter" SortExpression="recruiter_name" />
                                <asp:BoundField DataField="country" HeaderText="Region" SortExpression="country" />
                                <asp:BoundField DataField="publish_date" HeaderText="Date" SortExpression="publish_date" />
                            </Columns>
                         </asp:GridView>
                         <p>Please Remember the Exact Experience ID for Successful Application! Thank you!</p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
    <br /> <br /> 
</asp:Content>
