<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="full_ad.aspx.cs" Inherits="VAdodaraHelpsE_DirectiveSystem.full_ad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel = "stylesheet" type = "text/css" href = "/css/style.css" />

</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 216px">
        <div>
       <header>
    <div class="container">
      <h1 class="logo">
          
      </h1>

      <nav class="page-nav">
        <ul class="menu">
          <li><a href="#">Home</a></li>
          <li><a href="#advert">Advertise</a></li>
        
          <li><a href="#">Contact-Us</a></li>
          <li><a href="Login_page.aspx">Sign-In</a></li>
          <li><a href="CreateUser.aspx">Sign-up</a></li>
                      <li><a href="Log_Out.aspx">Log Out</a></li>  
        </ul>
      </nav>
    </div>
  </header>
    <div>
    
        &nbsp;<asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
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
    
    </div>
    &nbsp;<br /><br /><br /> <br />
        Want to Rate It
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [customer]"></asp:SqlDataSource>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
        </asp:RadioButtonList>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Rate It" />
        </p>
        <p>
            &nbsp;</p>
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
