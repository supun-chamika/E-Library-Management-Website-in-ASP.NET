<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="membermanagement.aspx.cs" Inherits="ElibraryManagementSystem.membermanagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        $(document).ready(function () {          
            $('.table').prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="home">
    <div class="container-fluid">
        <br />
        <div class="row">
            <div class="col-md-5 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h5>Member Details</h5>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="img/generaluser.png" width="70px" />
                                </center>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <lable>Member ID</lable>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox runat="server" CssClass="form-control me-1" placeholder="" ID="TextBox1"></asp:TextBox>   
                                        <asp:Button class="btn btn-dark" runat="server" Text="GO" ID="Button2" OnClick="Button2_Click"  />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <lable>Full Name</lable>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox runat="server" CssClass="form-control" placeholder="Full Name" ReadOnly="true" ID="TextBox2"></asp:TextBox>        
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-5">
                                <lable>Account Status</lable>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox runat="server" CssClass="form-control me-1" placeholder="Status" ReadOnly="true" ID="TextBox3"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-success me-1" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fa-solid fa-circle-check"></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-warning me-1" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><i class="fa-solid fa-circle-pause"></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-danger me-1" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><i class="fa-solid fa-xmark"></i></asp:LinkButton>
 
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row mt-1">
                            <div class="col-md-4">
                                <lable>DOB</lable>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox runat="server" CssClass="form-control" placeholder="DOB" ReadOnly="true" ID="TextBox4"></asp:TextBox>          
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <lable>Contact Number</lable>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" placeholder="Contact Number" ReadOnly="true" ID="TextBox5"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <lable>Email</lable>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox runat="server" CssClass="form-control" placeholder="Email" ReadOnly="true" ID="TextBox6"></asp:TextBox>          
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row mt-1">
                            <div class="col-md-4">
                                <lable>State</lable>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox runat="server" CssClass="form-control" placeholder="State" ReadOnly="true" ID="TextBox7"></asp:TextBox>          
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <lable>City</lable>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" placeholder="City" ReadOnly="true" ID="TextBox8"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <lable>Pin Code</lable>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox runat="server" CssClass="form-control" placeholder="Pin Code" ReadOnly="true" ID="TextBox9"></asp:TextBox>          
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="row mt-1">
                            <div class="col">
                                <label>Full-Address</label>
                                <div class="form-group">
                                    <asp:TextBox ReadOnly="true" class="form-control" runat="server" placeholder="Full-Address" TextMode="MultiLine" Rows="2" ID="TextBox10"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row mt-2">
                            <div class="col">
                                <asp:Button class="btn btn-danger button-w" ID="Button1" runat="server" Text="Delete User" OnClick="Button1_Click" />
                            </div>                     
                        </div>
                    </div>
                </div>
                <br />
                
                
            </div>
            <div class="col-md-7 mx-auto">
                <div class="card">
                    <div class="card-body">               
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h5>Member List</h5>                
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eLibraryDBConnectionString %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-sm" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="Member ID" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                        <asp:BoundField DataField="account_status" HeaderText="Status" SortExpression="account_status" />
                                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                        <asp:BoundField DataField="contact_no" HeaderText="Contact No" SortExpression="contact_no" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <a href="homepage.aspx" class="mt-2">
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
        <br />
    </div>
        </div>

</asp:Content>
