<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Admin.Master" CodeBehind="EditMovie.aspx.cs" Inherits="WebCrusier.EditMovie" %>

<%@ Register Src="~/Header1.ascx" TagPrefix="adminh" TagName="head" %>
<%@ Register Src="~/footer.ascx" TagPrefix="adminf" TagName="foot" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <adminh:head ID="h" runat="server" ></adminh:head>
    <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label><br />
    <asp:TextBox ID="TxtTitle" runat="server" MaxLength="100" Width="500px"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Gross"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Active&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date Of Launch&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Genre<br />
    <asp:TextBox ID="TxtGross" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="Radioyes" runat="server" Text="Yes" />
&nbsp;&nbsp;
    <asp:RadioButton ID="Radiono" runat="server" Text="No" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TxtDate" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Superhero</asp:ListItem>
        <asp:ListItem>Science Fiction</asp:ListItem>
        <asp:ListItem>Superhero</asp:ListItem>
        <asp:ListItem>Romance</asp:ListItem>
        <asp:ListItem>Adventure</asp:ListItem>
        <asp:ListItem>Comedy</asp:ListItem>
        <asp:ListItem>Thriller</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <br />
    <br />
    <asp:CheckBox ID="CheckBox1" runat="server" Text="Has Teaser" />
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" BackColor="Blue" Text="Save" Font-Size="10pt" ForeColor="White" Height="70px" OnClick="Button1_Click" Width="200px" />
    <br />
    
     <adminf:foot ID="f" runat="server"></adminf:foot>        

</asp:Content>
