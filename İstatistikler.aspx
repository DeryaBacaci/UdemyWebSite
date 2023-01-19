<%@ Page Title="" Language="C#" MasterPageFile="~/ÖGRETMEN.master" AutoEventWireup="true" CodeFile="İstatistikler.aspx.cs" Inherits="İstatistikler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <form id="FORM1" runat="server">

        <div class="form-group" style="background-color:#1c0e4a" >
            <div >
                <asp:TextBox ID="txtOgrencıSayısı" runat="server" CssClass="form-control">Toplam Öğrenci Sayısı:136</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="txtOgretmenSayısı" runat="server" CssClass="form-control">Toplam Öğretmen Sayısı:14</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="txtDersSayısı" runat="server" CssClass="form-control">Toplam Ders Sayısı:17</asp:TextBox>
            </div>
             <br />
            <div>
                <asp:TextBox ID="TxtBaşarılıOgrencı" runat="server" CssClass="form-control">En Başarılı Öğrenci :</asp:TextBox>
            </div>
             <br />
            <div>
                <asp:TextBox ID="TxtBaşfizik" runat="server" CssClass="form-control">Toplam Atılan Mesaj Sayısı=2549</asp:TextBox>
            </div>
             <br />
            <div>
                <asp:TextBox ID="txtbşldilanlatım" runat="server"  CssClass="form-control">Sistem Duyuru Sayısı=75</asp:TextBox>
            </div>
             <br />
            <div>
                <asp:TextBox ID="txtbaşlıedebiyat" runat="server" CssClass="form-control">Matematik Not Ortalaması=65.35</asp:TextBox>
            </div>
             <br />
            <div>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control">Türkçe Not Ortalaması=63.12</asp:TextBox>
            </div>
             <br />
            <div>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control">Algoritma Not Ortalaması=58,98</asp:TextBox>
            </div>
            
             <br />
            <div>
                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control">Okulun Aldığı Madalya Sayıları=40</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control">LGS Başarı Yüzdesi Aralığı=%60-%70</asp:TextBox>
            </div>

        </div>

    </form>
</asp:Content>

