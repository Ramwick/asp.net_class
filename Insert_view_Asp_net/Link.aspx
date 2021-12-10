<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Link.aspx.cs" Inherits="rammuthu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div> 
            <asp:HyperLink ID="HyperLink1" runat="server" Text="link" NavigateUrl="https://www.google.com/"></asp:HyperLink>  
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Response" />
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="sever" />
        </p>
    </form>
</body>
</html>
