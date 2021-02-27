<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin.Master" CodeBehind="RemoveFavorites.aspx.cs" Inherits="WebCrusier.RemoveFavorites" %>
<%@ Register Src="~/HeaderCustomer.ascx" TagPrefix="custh" TagName="head" %>
<%@ Register Src="~/footer.ascx" TagPrefix="adminf" TagName="foot" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <custh:head ID="h" runat="server" ></custh:head>

    
    <h2> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Favorites </h2>
    <asp:Panel ID="notification" visible="false" runat="server" Font-Bold="True" Font-Size="20px" ForeColor="#33CC33">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Movie Removed from Favorites successfully</asp:Panel>
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BorderStyle="None" CellPadding="5" CellSpacing="2" GridLines="None"  HorizontalAlign="Center" Font-Size="25px" Width="774px" OnSelectedIndexChanged="GridView4_SelectedIndexChanged"  >

      
    
    
         <Columns>
            
               <asp:BoundField HeaderText="Title" DataField="MovieTitle" />
               <asp:BoundField HeaderText="BoxOffice" DataField="BoxOfficeCollection" />
             <asp:BoundField HeaderText="Genre" DataField="MovieGenre" />
              <asp:HyperLinkField
            DataNavigateUrlFields="MovieId"
            DataNavigateUrlFormatString="~\RemoveFavorites.aspx?id={0}&showpanel=true"
            Text="Delete"
            HeaderText=""/>
        </Columns> 

         <HeaderStyle HorizontalAlign="Left" />
      
    </asp:GridView>
      <p style="text-indent: 200px; font-weight: bold;">No of Favorites: <asp:Label ID="NofFavorites" runat="server"></asp:Label></p>
    <adminf:foot ID="f" runat="server"></adminf:foot>
         
</asp:Content>