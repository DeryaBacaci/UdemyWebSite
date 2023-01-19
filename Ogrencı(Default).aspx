<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrencı.master" AutoEventWireup="true" CodeFile="Ogrencı(Default).aspx.cs" Inherits="Ogrencı_Default_" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <form id="FORM1" runat="server">

        <div class="form-group" style="background-color: #4f7154">
            <div>
                <asp:TextBox ID="txt1" runat="server" CssClass="form-control" Enabled="False">Numara :</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="txt2" runat="server" CssClass="form-control" Enabled="False">Ad Soyad :</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="txt3" runat="server" CssClass="form-control" Enabled="False">Mail :</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="txt4" runat="server" CssClass="form-control" Enabled="False">Telefon :</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="txt5" runat="server" CssClass="form-control" Enabled="False">Şifre :</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="txt7" runat="server" CssClass="form-control" Enabled="False">Fotoğraf :</asp:TextBox>
            </div>
        </div>
          <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-primary"  />
        
    </form>

</asp:Content>

