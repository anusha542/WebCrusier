<%@ Control Language="C#" AutoEventWireup="true" Codebehind="HeaderCustomer.ascx.cs" Inherits="WebCrusier.HeaderCustomer" %>
<link href="StyleSheet1.css" rel="stylesheet" />
<style type="text/css">
    .auto-style2 {
        float: right;
        height: 48px;
        margin-left: 23px;
    }
</style>
<header style="background-color: #000080; padding: 15px">
    <nav class="auto-style2">
        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" Font-Underline="True" NavigateUrl="~/ViewCustomerMovies.aspx">Movies</asp:HyperLink>&nbsp
        <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" Font-Underline="True" NavigateUrl="~/RemoveFavorites.aspx">Favorites</asp:HyperLink>&nbsp
         <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="White" Font-Underline="True" NavigateUrl="~/LoginAdmin.aspx">AdminLogin</asp:HyperLink>
        </nav>
    <span style="color: #FFFFFF; font-size: 35px;">Movie Cruiser</span>
    <asp:Image ID="Image1" runat="server" Height="57px" ImageUrl="~/Image/download.png" Width="52px" />
           
</header>