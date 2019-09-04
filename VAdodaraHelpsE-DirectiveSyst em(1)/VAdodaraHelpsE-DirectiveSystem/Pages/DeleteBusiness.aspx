<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteBusiness.aspx.cs" Inherits="VAdodaraHelpsE_DirectiveSystem.Pages.DeleteBusiness" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
           <link rel = "stylesheet" type = "text/css" href = "/css/style.css" />

</head>
<body>
    <form id="form1" runat="server">
    <header>
    <div class="container">
      <h1 class="logo">
          
      </h1>

      <nav class="page-nav">
        <ul class="menu">
          <li><a href="#">Home</a></li>
          <li><a href="Login_page">See Your Advertise</a></li>
        
          <li><a href="#">Contact-Us</a></li>
          <li><a href="Login_page.aspx">Sign-In</a></li>
          <li><a href="CreateUser.aspx">Sign-up</a></li> 
                      <li><a href="Log_Out.aspx">Log Out</a></li> 
        </ul>
      </nav>
    </div>
  </header>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ButtonType="Button" HeaderText="Delete" ShowDeleteButton="True" ShowHeader="True" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Ad_request]"></asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ButtonType="Button" HeaderText="Delete" ShowDeleteButton="True" ShowHeader="True" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [customer]"></asp:SqlDataSource>

        <div class="footer">
               <div id="button"></div>
               <div id="container">
               <div id="cont">
               <div class="footer_center">
	                  <p>Developed By : Karan Ganwani & Parth Dixit.
                          @copyright 2017 by The Nadiad Helps
	                  </p>
                      
               </div>
               </div>
               </div>
               </div>
    </form>
</body>
</html>
