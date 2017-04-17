<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="sanpham.aspx.vb" Inherits="Nhom2_CC.sanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaSP" DataSourceID="sanpham_showsanpham" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
                <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" SortExpression="MaLoai" />
                <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
                <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                <asp:BoundField DataField="HinhAnh" HeaderText="HinhAnh" SortExpression="HinhAnh" />
                <asp:BoundField DataField="DonViTinh" HeaderText="DonViTinh" SortExpression="DonViTinh" />
                <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaSP" DataSourceID="sanpham_showsanpham">
            <EditItemTemplate>
                MaSP:
                <asp:Label ID="MaSPLabel1" runat="server" Text='<%# Eval("MaSP") %>' />
                <br />
                MaLoai:
                <asp:TextBox ID="MaLoaiTextBox" runat="server" Text='<%# Bind("MaLoai") %>' />
                <br />
                TenSP:
                <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
                <br />
                Gia:
                <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
                <br />
                MoTa:
                <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
                <br />
                HinhAnh:
                <asp:TextBox ID="HinhAnhTextBox" runat="server" Text='<%# Bind("HinhAnh") %>' />
                <br />
                DonViTinh:
                <asp:TextBox ID="DonViTinhTextBox" runat="server" Text='<%# Bind("DonViTinh") %>' />
                <br />
                SoLuong:
                <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                MaSP:
                <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
                <br />
                MaLoai:
                <asp:TextBox ID="MaLoaiTextBox" runat="server" Text='<%# Bind("MaLoai") %>' />
                <br />
                TenSP:
                <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
                <br />
                Gia:
                <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
                <br />
                MoTa:
                <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
                <br />
                HinhAnh:
                <asp:TextBox ID="HinhAnhTextBox" runat="server" Text='<%# Bind("HinhAnh") %>' />
                <br />
                DonViTinh:
                <asp:TextBox ID="DonViTinhTextBox" runat="server" Text='<%# Bind("DonViTinh") %>' />
                <br />
                SoLuong:
                <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Button ID="Button1" runat="server" CommandName="New" Text="Thêm Sản Phẩm" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="sanpham_showsanpham" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:NHOM2_CLOUDConnectionString %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @original_MaSP AND [MaLoai] = @original_MaLoai AND [TenSP] = @original_TenSP AND (([Gia] = @original_Gia) OR ([Gia] IS NULL AND @original_Gia IS NULL)) AND (([MoTa] = @original_MoTa) OR ([MoTa] IS NULL AND @original_MoTa IS NULL)) AND (([HinhAnh] = @original_HinhAnh) OR ([HinhAnh] IS NULL AND @original_HinhAnh IS NULL)) AND [DonViTinh] = @original_DonViTinh AND [SoLuong] = @original_SoLuong" InsertCommand="INSERT INTO [SanPham] ([MaSP], [MaLoai], [TenSP], [Gia], [MoTa], [HinhAnh], [DonViTinh], [SoLuong]) VALUES (@MaSP, @MaLoai, @TenSP, @Gia, @MoTa, @HinhAnh, @DonViTinh, @SoLuong)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [MaLoai] = @MaLoai, [TenSP] = @TenSP, [Gia] = @Gia, [MoTa] = @MoTa, [HinhAnh] = @HinhAnh, [DonViTinh] = @DonViTinh, [SoLuong] = @SoLuong WHERE [MaSP] = @original_MaSP AND [MaLoai] = @original_MaLoai AND [TenSP] = @original_TenSP AND (([Gia] = @original_Gia) OR ([Gia] IS NULL AND @original_Gia IS NULL)) AND (([MoTa] = @original_MoTa) OR ([MoTa] IS NULL AND @original_MoTa IS NULL)) AND (([HinhAnh] = @original_HinhAnh) OR ([HinhAnh] IS NULL AND @original_HinhAnh IS NULL)) AND [DonViTinh] = @original_DonViTinh AND [SoLuong] = @original_SoLuong">
            <DeleteParameters>
                <asp:Parameter Name="original_MaSP" Type="Int32" />
                <asp:Parameter Name="original_MaLoai" Type="Int32" />
                <asp:Parameter Name="original_TenSP" Type="String" />
                <asp:Parameter Name="original_Gia" Type="Int64" />
                <asp:Parameter Name="original_MoTa" Type="String" />
                <asp:Parameter Name="original_HinhAnh" Type="String" />
                <asp:Parameter Name="original_DonViTinh" Type="String" />
                <asp:Parameter Name="original_SoLuong" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaSP" Type="Int32" />
                <asp:Parameter Name="MaLoai" Type="Int32" />
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="Gia" Type="Int64" />
                <asp:Parameter Name="MoTa" Type="String" />
                <asp:Parameter Name="HinhAnh" Type="String" />
                <asp:Parameter Name="DonViTinh" Type="String" />
                <asp:Parameter Name="SoLuong" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MaLoai" Type="Int32" />
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="Gia" Type="Int64" />
                <asp:Parameter Name="MoTa" Type="String" />
                <asp:Parameter Name="HinhAnh" Type="String" />
                <asp:Parameter Name="DonViTinh" Type="String" />
                <asp:Parameter Name="SoLuong" Type="Int32" />
                <asp:Parameter Name="original_MaSP" Type="Int32" />
                <asp:Parameter Name="original_MaLoai" Type="Int32" />
                <asp:Parameter Name="original_TenSP" Type="String" />
                <asp:Parameter Name="original_Gia" Type="Int64" />
                <asp:Parameter Name="original_MoTa" Type="String" />
                <asp:Parameter Name="original_HinhAnh" Type="String" />
                <asp:Parameter Name="original_DonViTinh" Type="String" />
                <asp:Parameter Name="original_SoLuong" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="FeaturedContent">
    <p>
        Sản Phẩm</p>
</asp:Content>

