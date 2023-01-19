<%@ Page Title="" Language="C#" MasterPageFile="~/ÖGRETMEN.master" AutoEventWireup="true" CodeFile="GıdenMesajlar.aspx.cs" Inherits="GıdenMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">



    <table class="table table-bordered table-hover">

        <tr>
            <th scope="col">ID</th>
            <th scope="col">ALICI</th>
            <th scope="col">BAŞLIK</th>
            <th scope="col">İÇERİK</th>
            <th scope="col">TARİH</th>
         

        </tr>

        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>
                    <tr>
                        <td><%#Eval("MESAJID")%></td>    
                        <td><%#Eval("GONDEREN")%></td>    
                        <td><%#Eval("BASLIK")%></td>
                        <td><%#Eval("ICERIK")%></td>
                        <td><%#Eval("TARIH")%></td>


                        <%-- <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/DersSil.aspx?DERSID="+Eval("DERSID")%>' runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>

                        </td>--%>
                    </tr>

                </ItemTemplate>

            </asp:Repeater>

        </tbody>
    </table>

</asp:Content>

