<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        
      <asp:Image runat="server" ImageUrl="~/Content/logo-vn.png" />
        <h1>TFC FOOD</h1>
 
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Liên Hệ Đặt Hàng &raquo;</a></p>
    </div>

    <div class="row">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaSP" DataSourceID="SqlDataSource2">
            <EditItemTemplate>
                MaSP:
                <asp:Label ID="MaSPLabel1" runat="server" Text='<%# Eval("MaSP") %>' />
                <br />
                LoaiSanPham_MaLSP:
                <asp:TextBox ID="LoaiSanPham_MaLSPTextBox" runat="server" Text='<%# Bind("LoaiSanPham_MaLSP") %>' />
                <br />
                TenSP:
                <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
                <br />
                MoTa:
                <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
                <br />
                DonGia:
                <asp:TextBox ID="DonGiaTextBox" runat="server" Text='<%# Bind("DonGia") %>' />
                <br />
                NgaySX:
                <asp:TextBox ID="NgaySXTextBox" runat="server" Text='<%# Bind("NgaySX") %>' />
                <br />
                HSD:
                <asp:TextBox ID="HSDTextBox" runat="server" Text='<%# Bind("HSD") %>' />
                <br />
                hinhanh:
                <asp:TextBox ID="hinhanhTextBox" runat="server" Text='<%# Bind("hinhanh") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                MaSP:
                <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
                <br />
                LoaiSanPham_MaLSP:
                <asp:TextBox ID="LoaiSanPham_MaLSPTextBox" runat="server" Text='<%# Bind("LoaiSanPham_MaLSP") %>' />
                <br />
                TenSP:
                <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
                <br />
                MoTa:
                <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
                <br />
                DonGia:
                <asp:TextBox ID="DonGiaTextBox" runat="server" Text='<%# Bind("DonGia") %>' />
                <br />
                NgaySX:
                <asp:TextBox ID="NgaySXTextBox" runat="server" Text='<%# Bind("NgaySX") %>' />
                <br />
                HSD:
                <asp:TextBox ID="HSDTextBox" runat="server" Text='<%# Bind("HSD") %>' />
                <br />
                hinhanh:
                <asp:TextBox ID="hinhanhTextBox" runat="server" Text='<%# Bind("hinhanh") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                MaSP:
                <asp:Label ID="MaSPLabel" runat="server" Text='<%# Eval("MaSP") %>' />
                <br />
                LoaiSanPham_MaLSP:
                <asp:Label ID="LoaiSanPham_MaLSPLabel" runat="server" Text='<%# Bind("LoaiSanPham_MaLSP") %>' />
                <br />
                TenSP:
                <asp:Label ID="TenSPLabel" runat="server" Text='<%# Bind("TenSP") %>' />
                <br />
                MoTa:
                <asp:Label ID="MoTaLabel" runat="server" Text='<%# Bind("MoTa") %>' />
                <br />
                DonGia:
                <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Bind("DonGia") %>' />
                <br />
                NgaySX:
                <asp:Label ID="NgaySXLabel" runat="server" Text='<%# Bind("NgaySX") %>' />
                <br />
                HSD:
                <asp:Label ID="HSDLabel" runat="server" Text='<%# Bind("HSD") %>' />
                <br />
                hinhanh:
                <asp:Label ID="hinhanhLabel" runat="server" Text='<%# Bind("hinhanh") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>


        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ASSGD1ConnectionString9 %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @original_MaSP AND [LoaiSanPham_MaLSP] = @original_LoaiSanPham_MaLSP AND [TenSP] = @original_TenSP AND (([MoTa] = @original_MoTa) OR ([MoTa] IS NULL AND @original_MoTa IS NULL)) AND [DonGia] = @original_DonGia AND (([NgaySX] = @original_NgaySX) OR ([NgaySX] IS NULL AND @original_NgaySX IS NULL)) AND (([HSD] = @original_HSD) OR ([HSD] IS NULL AND @original_HSD IS NULL)) AND (([hinhanh] = @original_hinhanh) OR ([hinhanh] IS NULL AND @original_hinhanh IS NULL))" InsertCommand="INSERT INTO [SanPham] ([MaSP], [LoaiSanPham_MaLSP], [TenSP], [MoTa], [DonGia], [NgaySX], [HSD], [hinhanh]) VALUES (@MaSP, @LoaiSanPham_MaLSP, @TenSP, @MoTa, @DonGia, @NgaySX, @HSD, @hinhanh)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [MaSP], [LoaiSanPham_MaLSP], [TenSP], [MoTa], [DonGia], [NgaySX], [HSD], [hinhanh] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [LoaiSanPham_MaLSP] = @LoaiSanPham_MaLSP, [TenSP] = @TenSP, [MoTa] = @MoTa, [DonGia] = @DonGia, [NgaySX] = @NgaySX, [HSD] = @HSD, [hinhanh] = @hinhanh WHERE [MaSP] = @original_MaSP AND [LoaiSanPham_MaLSP] = @original_LoaiSanPham_MaLSP AND [TenSP] = @original_TenSP AND (([MoTa] = @original_MoTa) OR ([MoTa] IS NULL AND @original_MoTa IS NULL)) AND [DonGia] = @original_DonGia AND (([NgaySX] = @original_NgaySX) OR ([NgaySX] IS NULL AND @original_NgaySX IS NULL)) AND (([HSD] = @original_HSD) OR ([HSD] IS NULL AND @original_HSD IS NULL)) AND (([hinhanh] = @original_hinhanh) OR ([hinhanh] IS NULL AND @original_hinhanh IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_MaSP" Type="String" />
                <asp:Parameter Name="original_LoaiSanPham_MaLSP" Type="String" />
                <asp:Parameter Name="original_TenSP" Type="String" />
                <asp:Parameter Name="original_MoTa" Type="String" />
                <asp:Parameter Name="original_DonGia" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="original_NgaySX" />
                <asp:Parameter DbType="Date" Name="original_HSD" />
                <asp:Parameter Name="original_hinhanh" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaSP" Type="String" />
                <asp:Parameter Name="LoaiSanPham_MaLSP" Type="String" />
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="MoTa" Type="String" />
                <asp:Parameter Name="DonGia" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="NgaySX" />
                <asp:Parameter DbType="Date" Name="HSD" />
                <asp:Parameter Name="hinhanh" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="LoaiSanPham_MaLSP" Type="String" />
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="MoTa" Type="String" />
                <asp:Parameter Name="DonGia" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="NgaySX" />
                <asp:Parameter DbType="Date" Name="HSD" />
                <asp:Parameter Name="hinhanh" Type="String" />
                <asp:Parameter Name="original_MaSP" Type="String" />
                <asp:Parameter Name="original_LoaiSanPham_MaLSP" Type="String" />
                <asp:Parameter Name="original_TenSP" Type="String" />
                <asp:Parameter Name="original_MoTa" Type="String" />
                <asp:Parameter Name="original_DonGia" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="original_NgaySX" />
                <asp:Parameter DbType="Date" Name="original_HSD" />
                <asp:Parameter Name="original_hinhanh" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>


        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="MaSP" DataSourceID="SqlDataSource1" Width="1115px" Height="400px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
                <asp:BoundField DataField="LoaiSanPham_MaLSP" HeaderText="Mã Loại Sản Phẩm" SortExpression="LoaiSanPham_MaLSP" />
                <asp:BoundField DataField="TenSP" HeaderText="Tên Sản Phẩm"/>
                <asp:BoundField DataField="MoTa" HeaderText="Mô Tả"/>
                <asp:BoundField DataField="DonGia" HeaderText="Giá" SortExpression="Giá" />
                <asp:BoundField DataField="NgaySX" HeaderText="Ngày Sản Xuất"/>
                <asp:BoundField DataField="HSD" HeaderText="Hạn Sử Dụng"/>
                <asp:ImageField DataImageUrlField="hinhanh" HeaderText="Hình Ảnh" ControlStyle-Width="60px"/>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>




        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ASSGD1ConnectionString9 %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @original_MaSP AND [LoaiSanPham_MaLSP] = @original_LoaiSanPham_MaLSP AND [TenSP] = @original_TenSP AND (([MoTa] = @original_MoTa) OR ([MoTa] IS NULL AND @original_MoTa IS NULL)) AND [DonGia] = @original_DonGia AND (([NgaySX] = @original_NgaySX) OR ([NgaySX] IS NULL AND @original_NgaySX IS NULL)) AND (([HSD] = @original_HSD) OR ([HSD] IS NULL AND @original_HSD IS NULL)) AND (([hinhanh] = @original_hinhanh) OR ([hinhanh] IS NULL AND @original_hinhanh IS NULL))" InsertCommand="INSERT INTO [SanPham] ([MaSP], [LoaiSanPham_MaLSP], [TenSP], [MoTa], [DonGia], [NgaySX], [HSD], [hinhanh]) VALUES (@MaSP, @LoaiSanPham_MaLSP, @TenSP, @MoTa, @DonGia, @NgaySX, @HSD, @hinhanh)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [MaSP], [LoaiSanPham_MaLSP], [TenSP], [MoTa], [DonGia], [NgaySX], [HSD], [hinhanh] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [LoaiSanPham_MaLSP] = @LoaiSanPham_MaLSP, [TenSP] = @TenSP, [MoTa] = @MoTa, [DonGia] = @DonGia, [NgaySX] = @NgaySX, [HSD] = @HSD, [hinhanh] = @hinhanh WHERE [MaSP] = @original_MaSP AND [LoaiSanPham_MaLSP] = @original_LoaiSanPham_MaLSP AND [TenSP] = @original_TenSP AND (([MoTa] = @original_MoTa) OR ([MoTa] IS NULL AND @original_MoTa IS NULL)) AND [DonGia] = @original_DonGia AND (([NgaySX] = @original_NgaySX) OR ([NgaySX] IS NULL AND @original_NgaySX IS NULL)) AND (([HSD] = @original_HSD) OR ([HSD] IS NULL AND @original_HSD IS NULL)) AND (([hinhanh] = @original_hinhanh) OR ([hinhanh] IS NULL AND @original_hinhanh IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_MaSP" Type="String" />
                <asp:Parameter Name="original_LoaiSanPham_MaLSP" Type="String" />
                <asp:Parameter Name="original_TenSP" Type="String" />
                <asp:Parameter Name="original_MoTa" Type="String" />
                <asp:Parameter Name="original_DonGia" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="original_NgaySX" />
                <asp:Parameter DbType="Date" Name="original_HSD" />
                <asp:Parameter Name="original_hinhanh" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaSP" Type="String" />
                <asp:Parameter Name="LoaiSanPham_MaLSP" Type="String" />
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="MoTa" Type="String" />
                <asp:Parameter Name="DonGia" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="NgaySX" />
                <asp:Parameter DbType="Date" Name="HSD" />
                <asp:Parameter Name="hinhanh" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="LoaiSanPham_MaLSP" Type="String" />
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="MoTa" Type="String" />
                <asp:Parameter Name="DonGia" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="NgaySX" />
                <asp:Parameter DbType="Date" Name="HSD" />
                <asp:Parameter Name="hinhanh" Type="String" />
                <asp:Parameter Name="original_MaSP" Type="String" />
                <asp:Parameter Name="original_LoaiSanPham_MaLSP" Type="String" />
                <asp:Parameter Name="original_TenSP" Type="String" />
                <asp:Parameter Name="original_MoTa" Type="String" />
                <asp:Parameter Name="original_DonGia" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="original_NgaySX" />
                <asp:Parameter DbType="Date" Name="original_HSD" />
                <asp:Parameter Name="original_hinhanh" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>




        <div class="col-md-4">
            <h2>Gà Truyền Thống</h2>
           
            <asp:Image runat="server" ImageUrl="~/Content/ga.jpg" />
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Mua Ngay &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">

            <h2>Gà Giòn Cay</h2>
 
             <asp:Image runat="server" Height="200" Width="90%" ImageUrl="~/Content/gion.png" />
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Mua Ngay &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Gà Sốt Đậu</h2>
            <asp:Image runat="server" Height="200" Width="90%" ImageUrl="~/Content/dau.png" />
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Mua Ngay &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Khoai Tây Chiên</h2>
             <asp:Image runat="server" Height="200" Width="90%" ImageUrl="~/Content/khoai.png" />
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Mua Ngay &raquo;</a>
            </p>
        </div>
    </div>
    <div style="width:300px"><script src="https://uhchat.net/code.php?f=247196"></script></div>
</asp:Content>
