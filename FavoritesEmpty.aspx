﻿<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Admin.Master" CodeBehind="FavoritesEmpty.aspx.cs" Inherits="WebCrusier.FavoritesEmpty" %>

<%@ Register Src="~/HeaderCustomer.ascx" TagPrefix="custh" TagName="head" %>
<%@ Register Src="~/footer.ascx" TagPrefix="adminf" TagName="foot" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <custh:head ID="h" runat="server" ></custh:head>
    <p style="font-size: 32px">Favorites</p>
    <p style="color: #808080">No items in favorites.Use 'Add to Favorites' option in <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/ViewCustomerList.aspx">Movies</asp:HyperLink></p>
    <adminf:foot ID="f" runat="server"></adminf:foot>  

</asp:Content>
