<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin.Master" CodeBehind="ViewCustomerMovies.aspx.cs" Inherits="WebCrusier.ViewCustomerMovies" %>


<%@ Register Src="~/HeaderCustomer.ascx" TagPrefix="custh" TagName="head" %>
<%@ Register Src="~/footer.ascx" TagPrefix="adminf" TagName="foot" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <custh:head ID="h" runat="server" ></custh:head>

    
    <h1> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Movies </h1>
    <asp:Panel ID="notification" visible="false" runat="server" Font-Bold="True" Font-Size="30px" ForeColor="#33CC33">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Movie added to Favorites successfully</asp:Panel>
    
    <asp:GridView ID="GridView2" runat="server" BorderStyle="None" CellPadding="5" CellSpacing="2" GridLines="None"  HorizontalAlign="Center" Font-Size="20px" Width="900px"  AutoGenerateColumns="False">
        <HeaderStyle BorderStyle="None" />
        <RowStyle HorizontalAlign="Center" />
         <Columns>
                <asp:BoundField HeaderText="ID" DataField="MovieId" />
               <asp:BoundField HeaderText="Title" DataField="MovieTitle" />
               <asp:BoundField HeaderText="Box Office" DataField="BoxOfficeCollection" />
               
              
               <asp:BoundField HeaderText="Genre" DataField="MovieGenre" />
               <asp:BoundField HeaderText="Has Teaser" DataField="HasTeaser" />
                  <asp:HyperLinkField
            DataNavigateUrlFields="MovieId"
            DataNavigateUrlFormatString="~\ViewCustomerMovies.aspx?id={0}&showpanel=true"
            Text="Add to Favorites"
            HeaderText="Action" />
</Columns>
        <HeaderStyle HorizontalAlign="Center" />

    </asp:GridView>
    <adminf:foot ID="f" runat="server"></adminf:foot>


                        
</asp:Content>

       
