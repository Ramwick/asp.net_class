<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Insert_view_Asp_net.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>  &nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

       
       </div>
        <p>

             <asp:Label ID="Label2" runat="server" Text="Middle Name"></asp:Label>  
                 &nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px"></asp:TextBox>
        </p>
         <p>

             <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>  
                 &nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <p>

             <asp:Button ID="Btnsave" runat="server" Text="Submit"   onclick="Btnsave_Click"  />
        </p>
        <p>

             &nbsp;</p>
        <p>

             <asp:GridView ID="GridView1" runat="server">
             </asp:GridView>
        </p>
        <p>

             <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </p>
       
    </form>
</body>
</html>
