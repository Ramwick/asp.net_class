<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dropdown.aspx.cs" Inherits="Dropdown" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>  
            <asp:DropDownList ID="DropDownList1" runat="server" >
            <asp:ListItem Value="">Please Select</asp:ListItem>  
            <asp:ListItem>New Delhi </asp:ListItem>  
            <asp:ListItem>Greater Noida</asp:ListItem>  
            <asp:ListItem>NewYork</asp:ListItem>  
            <asp:ListItem>Paris</asp:ListItem>  
            <asp:ListItem>London</asp:ListItem>  
        </asp:DropDownList>  
        </div>  
        <br />  
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />  
        <br />  
        <br />  
        <asp:Label ID="Label1" runat="server" EnableViewState="False"></asp:Label>  
        </div>
    </form>
</body>
</html>
