<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPanel.aspx.cs" Inherits="LoginPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }

        .auto-style2 {
            width: 700px;
        }

        body {
            background-image: url("resimler/1.jpg");
            background-repeat: no-repeat;
            background-position: center center;
            background-attachment: fixed;
            background-size: cover;
        }
        .auto-style3 {
            width: 447px;
            height: 251px;
        }
        .auto-style4 {
            width: 643px;
            height: 160px;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server">
        <div style="margin: auto; padding-top: 50px" class="auto-style2">
            <h2 class="auto-style1">Öğrenci Sınav Not Giriş Sistemi</h2>
            <br />
            <br />
            <div class="auto-style1">
                <asp:Image ID="Image1" runat="server" Width="60px" Height="60px" ImageUrl="~/resimler/indir.png" /><br />
                
            </div>
            <br />
            <br />
            <div>
                <asp:Label for="TxtNumara" runat="server">Kullanıcı Adı</asp:Label><br />
                <asp:TextBox ID="TxtNumara" runat="server" CssClass="form-control" Width="700px" Height="40px"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label for="TxtSıfre" runat="server">Şifre</asp:Label><br />
                <asp:TextBox ID="TxtSıfre" runat="server" CssClass="form-control" Width="700px" Height="40px" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="BtnGırısYap" runat="server" Text="Giriş Yap" CssClass="btn btn-warning" Width="700px" Height="40px" BackColor="Khaki" ForeColor="Black" Style="font-weight: bold" OnClick="BtnGırısYap_Click"  />
            <br />
            <br />
            <strong>
                <asp:Button ID="BtnOgretmenGırısı" runat="server" Width="211px" Text="Öğretmen Girişi" CssClass="btn btn-danger" Style="background-color: #990000; font-weight: bold;" OnClick="BtnOgretmenGırısı_Click" />
                <asp:Button ID="Button3" runat="server" Width="270px" Text="Şifremi Unuttum" CssClass="btn btn-default" Style="font-weight: bold" />
                <asp:Button ID="Button4" runat="server" Width="211px" Text="Yardım" CssClass="btn btn-info" Style="background-color: #009900; font-weight: bold;" />
            </strong>
        </div>
    </form>
</body>
</html>
