<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication1.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="1">
                <asp:View ID="View2" runat="server">
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </asp:View>
                <br />
                <asp:View ID="View3" runat="server">
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                </asp:View>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </asp:MultiView>
        </div>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="btnYukle" runat="server" OnClick="btnYukle_Click" Text="Yükle" />
    </form>
</body>
</html>
