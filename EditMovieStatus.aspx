<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin.Master" CodeBehind="EditMovieStatus.aspx.cs" Inherits="WebCrusier.EditMovieStatus" %>
<%@ Register Src="~/Header1.ascx" TagPrefix="adminh" TagName="head" %>
<%@ Register Src="~/footer.ascx" TagPrefix="adminf" TagName="foot" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      

   
        
      <adminh:head ID="Head1" runat="server" ></adminh:head>
    
       <p style="font-size: 30px; text-align:center"> Edit Movie Status</p>
      
        <p style="color: #00CC00; font-size: 23px;text-align:center">
    Movie details saved successfully</p>
        
 
    <adminf:foot ID="f" runat="server"></adminf:foot>   
</asp:Content>