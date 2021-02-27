<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ViewAdminList.aspx.cs" Inherits="WebCrusier.ViewAdminList" %>
<%@ Register Src="~/Header1.ascx" TagPrefix="custh" TagName="head" %>
<%@ Register Src="~/footer.ascx" TagPrefix="adminf" TagName="foot" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <custh:head ID="h" runat="server" ></custh:head>

    <h2> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Movies </h2>
    <asp:GridView ID="GridView1" runat="server"  BorderStyle="None" CellPadding="5" CellSpacing="2" GridLines="None"  HorizontalAlign="Center" Font-Size="20px" Width="900px"  AutoGenerateColumns="False">
        <HeaderStyle BorderStyle="None" />
        <RowStyle HorizontalAlign="Center" />
         <Columns>
               <asp:BoundField HeaderText="ID" DataField="MovieId" />
               <asp:BoundField HeaderText="Title" DataField="MovieTitle" />
               <asp:BoundField HeaderText="Box Office" DataField="BoxOfficeCollection" />
               <asp:BoundField HeaderText="Active" DataField="MovieActive" />
               <asp:BoundField HeaderText="Date Of Launch" DataField="DateOfLaunch" />
               <asp:BoundField HeaderText="Genre" DataField="MovieGenre" />
               <asp:BoundField HeaderText="Has Teaser" DataField="HasTeaser" />
                  <asp:HyperLinkField
            DataNavigateUrlFields="MovieId"
            DataNavigateUrlFormatString="~\EditMovie.aspx?id={0}"
            Text="Edit"
            HeaderText="Action" />
</Columns>
    </asp:GridView>
     <adminf:foot ID="f" runat="server"></adminf:foot>

                        
</asp:Content>
