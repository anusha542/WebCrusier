﻿<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="LoginAdmin.aspx.cs" Inherits="WebCrusier.LoginAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   

    
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }
        form {
            border: 3px solid #f1f1f1;
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        button:hover {
            opacity: 0.8;
        }
        .cnbtn {
            background-color: #ec3f3f;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 49%;
        }
        .lgnbtn {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }
        img.avatar {
            width: 40%;
            border-radius: 50%;
        }
        .container {
            padding: 16px;
        }
        span.psw {
            float: right;
            padding-top: 16px;
        }
        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cnbtn {
                width: 100%;
            }
        }
        .frmalg {
            margin: auto;
            width: 40%;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server" class="frmalg">

        <div class="container">
            <center>
                <h3>Asp.net Login form </h3>
            </center>
            <label for="Txtname"><b>Usernmae</b></label>
            <asp:TextBox runat="server" ID="Txtname" placeholder="Enter Username"></asp:TextBox>
            <label for="psw"><b>Password</b></label>
            <asp:TextBox runat="server" ID="Txtpassword" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            <asp:Button runat="server" ID="btn_Login" CssClass="lgnbtn" Text="Login" OnClick="btn_Login_Click" />
            
        </div>
    </form>
</body>
</html>

