<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="Nhom2_CC._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Trang chủ</h1>
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:Panel ID="Panel1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MaSP" DataSourceID="trangchu_showsanpham">
        <Columns>
            <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
            <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" SortExpression="MaLoai" />
            <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
            <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
            <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
            <asp:BoundField DataField="DonViTinh" HeaderText="DonViTinh" SortExpression="DonViTinh" />
            <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="trangchu_showsanpham" runat="server" ConnectionString="<%$ ConnectionStrings:NHOM2_CLOUDConnectionString %>" SelectCommand="SELECT [MaSP], [MaLoai], [TenSP], [Gia], [MoTa], [DonViTinh], [SoLuong] FROM [SanPham]"></asp:SqlDataSource>
</asp:Panel>
</asp:Content>
