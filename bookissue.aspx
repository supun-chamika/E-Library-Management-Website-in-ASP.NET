<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="bookissue.aspx.cs" Inherits="ElibraryManagementSystem.bookissue" %>
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
                                    <h5>Book Issuing</h5>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="img/books.png" width="70px" />
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
                                <lable>Member ID</lable>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox runat="server" CssClass="form-control" placeholder="Member ID" ID="TextBox1"></asp:TextBox>          
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <lable>Book ID</lable>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox runat="server" CssClass="form-control" placeholder="Book ID" ID="TextBox2"></asp:TextBox>
                                        <asp:Button class="btn btn-dark" runat="server" Text="GO" ID="Button3" OnClick="Button3_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <lable>Member name</lable>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox runat="server" CssClass="form-control" placeholder="Member name" ReadOnly="true" ID="TextBox3"></asp:TextBox>          
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <lable>Book name</lable>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" placeholder="Book name" ReadOnly="true" ID="TextBox4"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <lable>Start Date</lable>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox runat="server" CssClass="form-control" placeholder="Start Date" TextMode="Date" ID="TextBox5"></asp:TextBox>          
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <lable>Due Date</lable>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" placeholder="End Date" TextMode="Date" ID="TextBox6"></asp:TextBox>
                                    
                                </div>
                            </div>
                        </div>

                        
                        <br />
                        <div class="row">
                            <div class="col-6">
                                <asp:Button class="btn btn-success button-w" ID="Button1" runat="server" Text="Issue" OnClick="Button1_Click" />
                            </div>
                            <div class="col-6">
                                <asp:Button class="btn btn-primary button-w" ID="Button2" runat="server" Text="Return" OnClick="Button2_Click" />
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
                                    <h5>Issued Book List</h5>                
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eLibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-sm" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="Member ID" SortExpression="member_id" />
                                        <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name" />
                                        <asp:BoundField DataField="book_id" HeaderText="Book ID" SortExpression="book_id" />
                                        <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                                        <asp:BoundField DataField="issue_date" HeaderText="Issue Date" SortExpression="issue_date" />
                                        <asp:BoundField DataField="due_date" HeaderText="Due Date" SortExpression="due_date" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
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
        <br />
    </div>
    </div>

</asp:Content>
