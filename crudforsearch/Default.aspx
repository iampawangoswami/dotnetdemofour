<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="crudforsearch._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <%-- <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">ASP.NET</h1>
            <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
            <p><a href="http://www.asp.net" class="btn btn-primary btn-md">Learn more &raquo;</a></p>
        </section>

        <div class="row">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
                <h2 id="gettingStartedTitle">Getting started</h2>
                <p>
                    ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
                A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="librariesTitle">
                <h2 id="librariesTitle">Get more libraries</h2>
                <p>
                    NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="hostingTitle">
                <h2 id="hostingTitle">Web Hosting</h2>
                <p>
                    You can easily find a web hosting company that offers the right mix of features and price for your applications.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
                </p>
            </section>
        </div>
    </main>--%>
    <div>
        <div style ="font-size:x-large" align="center"> Student Info Manage Form</div>
        <table class="w-100">
            <tr>
                <td style="width: 253px">&nbsp;</td>
                <td style="width: 126px">Student ID</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="174px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 253px">&nbsp;</td>
                <td style="width: 126px">Student Name</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="174px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 253px">&nbsp;</td>
                <td style="width: 126px">Address</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="180px">
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>CANADA</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 253px">&nbsp;</td>
                <td style="width: 126px">Age</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="174px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 253px; height: 27px;"></td>
                <td style="width: 126px; height: 27px;">Contact</td>
                <td style="height: 27px">
                    <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="174px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 253px">&nbsp;</td>
                <td style="width: 126px">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#CC00FF" BorderColor="White" Font-Bold="True" Font-Size="Larger" OnClick="Button1_Click" Text="Insert" Width="99px" />
                    <asp:Button ID="Button2" runat="server" BackColor="#CC00FF" BorderColor="White" Font-Bold="True" Font-Size="Larger" OnClick="Button2_Click" Text="Update" Width="99px" />
                    <asp:Button ID="Button3" runat="server" BackColor="#CC00FF" BorderColor="White" Font-Bold="True" Font-Size="Larger" OnClick="Button3_Click" onClientClick="return confirm('are you sure to delete?');" Text ="Delete" Width="99px" />
                    <asp:Button ID="Button5" runat="server" BackColor="#CC00FF" BorderColor="White" Font-Bold="True" Font-Size="Larger" OnClick="Button5_Click" Text="Search" Width="99px" />
                    <asp:Button ID="Button6" runat="server" BackColor="#CC00FF" OnClick="Button6_Click" Text="DISPLAY IN OTHER PAGE" Width="185px" />
&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentID" DataSourceID="SqlDataSource1" Width="706px">
                        <Columns>
                            <asp:BoundField DataField="StudentID" HeaderText="StudentID" ReadOnly="True" SortExpression="StudentID" />
                            <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                            <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pawanConnectionString %>" ProviderName="<%$ ConnectionStrings:pawanConnectionString.ProviderName %>" SelectCommand="SELECT [StudentID], [StudentName], [Address], [Age], [Contact] FROM [Studentinfo_tab]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <br />
    </div>

</asp:Content>
