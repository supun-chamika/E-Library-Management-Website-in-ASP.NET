<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="ElibraryManagementSystem.usersignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="home">
    <div class="container-fluid">
        <br />
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="img/generaluser.png" width="70px" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h5>Member Signup</h5>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <lable>Full name</lable>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" placeholder="Full name" ID="TextBox1"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <lable>Date of Birth</lable>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" placeholder="Date of Birth" TextMode="Date" ID="TextBox2"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <lable>Contact Number</lable>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" placeholder="Contact number" TextMode="Number" ID="TextBox3"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <lable>Email</lable>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" placeholder="Email" TextMode="Email" ID="TextBox4"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <lable>state</lable>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="select" />
                                        <asp:ListItem Text="Colombo" Value="Colombo" />
                                        <asp:ListItem Text="Kalutara" Value="Kalutara" />
                                        <asp:ListItem Text="Gampaha" Value="Gampaha" />
                                        <asp:ListItem Text="Galle" Value="Galle" />
                                        <asp:ListItem Text="Matara" Value="Matara" />
                                        <asp:ListItem Text="Hambanthota" Value="Hambanthota" />
                                        <asp:ListItem Text="Ampara" Value="Ampara" />
                                        <asp:ListItem Text="Madakalapuva" Value="Madakalapuva" />
                                        <asp:ListItem Text="Nuwara Eliya" Value="Nuwara Eliya" />
                                        <asp:ListItem Text="Kandy" Value="Kandy" />
                                        <asp:ListItem Text="Matale" Value="Matale" />
                                        <asp:ListItem Text="Ratnapura" Value="Ratnapura" />
                                        <asp:ListItem Text="Kagalla" Value="Kagalla" />
                                        <asp:ListItem Text="Monaragala" Value="Monaragala" />
                                        <asp:ListItem Text="Badulla" Value="Badulla" />
                                        <asp:ListItem Text="Kurunagala" Value="Kurunagala" />
                                        <asp:ListItem Text="Puttalama" Value="Puttalama" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <lable>City</lable>
                                <div class="form-group">
                                    <asp:TextBox runat="server" class="form-control" placeholder="City" ID="TextBox5"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pincode</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" runat="server" placeholder="Pincode" TextMode="Number" ID="TextBox6"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <label>Full-Address</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox7" class="form-control" runat="server" placeholder="Full-Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col">
                                <center>
                                    <span class="badge rounded-pill bg-info text-dark">Login Credentials</span>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>User ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox8" class="form-control" runat="server" placeholder="User ID"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox9" class="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            
                        </div>

                        <br />
                        <div class="row">
                            <div class="col">
                                <center>
                                    <div class="d-grid gap-2">
                                        <div class="form-group">
                                            <a href="homepage.aspx">
                                                <asp:Button class="btn btn-primary btn-lg button-w" runat="server" Text="Sign Up" ID="Button1" OnClick="Button1_Click"/>
                                            </a>
                                        </div>
                                    </div>
                                </center>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <a href="homepage.aspx">
                    <button type="button" class="btn btn-light">
                        Back to Home 
                        <span class="badge bg-secondary">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left-square-fill" viewBox="0 0 16 16">
                                <path d="M16 14a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12zm-4.5-6.5H5.707l2.147-2.146a.5.5 0 1 0-.708-.708l-3 3a.5.5 0 0 0 0 .708l3 3a.5.5 0 0 0 .708-.708L5.707 8.5H11.5a.5.5 0 0 0 0-1z" />
                            </svg>
                        </span>
                    </button>
                </a>

            </div>
        </div>
        <br />
    </div>
    </div>

</asp:Content>
