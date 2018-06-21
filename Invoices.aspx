<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Invoices.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
       <div class="jumbotron">

      <asp:Image runat="server" ImageUrl="~/Content/logo-vn.png" />
        <h1>TFC FOOD</h1>
 
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Liên Hệ Đặt Hàng &raquo;</a>&nbsp; </p>
    </div>
    <h1 style="text-align:center">Hóa Đơn</h1>
    <div class="contain">
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="HoaDon_MaHD,SanPham_MaSP" DataSourceID="SqlDataSource1" Width="1081px" Height="367px">
              <Columns>
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                  <asp:BoundField DataField="HoaDon_MaHD" HeaderText="Mã Hóa Đơn" ReadOnly="True" SortExpression="HoaDon_MaHD" />
                  <asp:BoundField DataField="SanPham_MaSP" HeaderText="Mã Sản Phẩm" ReadOnly="True" SortExpression="SanPham_MaSP" />
                  <asp:BoundField DataField="SoLuong" HeaderText="Số Lượng" SortExpression="SoLuong" />
                  <asp:BoundField DataField="ThanhTien" HeaderText="Thành Tiền" SortExpression="ThanhTien" />
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
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ASSGD1ConnectionString9 %>" DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [HoaDon_MaHD] = @original_HoaDon_MaHD AND [SanPham_MaSP] = @original_SanPham_MaSP AND [SoLuong] = @original_SoLuong AND [ThanhTien] = @original_ThanhTien" InsertCommand="INSERT INTO [ChiTietHoaDon] ([HoaDon_MaHD], [SanPham_MaSP], [SoLuong], [ThanhTien]) VALUES (@HoaDon_MaHD, @SanPham_MaSP, @SoLuong, @ThanhTien)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [HoaDon_MaHD], [SanPham_MaSP], [SoLuong], [ThanhTien] FROM [ChiTietHoaDon]" UpdateCommand="UPDATE [ChiTietHoaDon] SET [SoLuong] = @SoLuong, [ThanhTien] = @ThanhTien WHERE [HoaDon_MaHD] = @original_HoaDon_MaHD AND [SanPham_MaSP] = @original_SanPham_MaSP AND [SoLuong] = @original_SoLuong AND [ThanhTien] = @original_ThanhTien">
              <DeleteParameters>
                  <asp:Parameter Name="original_HoaDon_MaHD" Type="String" />
                  <asp:Parameter Name="original_SanPham_MaSP" Type="String" />
                  <asp:Parameter Name="original_SoLuong" Type="Int32" />
                  <asp:Parameter Name="original_ThanhTien" Type="Decimal" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="HoaDon_MaHD" Type="String" />
                  <asp:Parameter Name="SanPham_MaSP" Type="String" />
                  <asp:Parameter Name="SoLuong" Type="Int32" />
                  <asp:Parameter Name="ThanhTien" Type="Decimal" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="SoLuong" Type="Int32" />
                  <asp:Parameter Name="ThanhTien" Type="Decimal" />
                  <asp:Parameter Name="original_HoaDon_MaHD" Type="String" />
                  <asp:Parameter Name="original_SanPham_MaSP" Type="String" />
                  <asp:Parameter Name="original_SoLuong" Type="Int32" />
                  <asp:Parameter Name="original_ThanhTien" Type="Decimal" />
              </UpdateParameters>
          </asp:SqlDataSource>
    <div class="row">
      
     </div>
    <div class="row">
    </div>
    </div>
</asp:Content>
