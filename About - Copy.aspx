<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
       <div class="jumbotron">

      <asp:Image runat="server" ImageUrl="~/Content/logo-vn.png" />
        <h1>TFC FOOD</h1>
 
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Liên Hệ Đặt Hàng &raquo;</a>&nbsp; </p>
    </div>
    <h1 style="text-align:center">Thông Tin Khách Hàng</h1>
    <div class="contain">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaKH" DataSourceID="SqlDataSource2">
            <EditItemTemplate>
                email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />
                SDT:
                <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
                <br />
                DiaChi:
                <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
                <br />
                TenKH:
                <asp:TextBox ID="TenKHTextBox" runat="server" Text='<%# Bind("TenKH") %>' />
                <br />
                MaKH:
                <asp:Label ID="MaKHLabel1" runat="server" Text='<%# Eval("MaKH") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />
                SDT:
                <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
                <br />
                DiaChi:
                <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
                <br />
                TenKH:
                <asp:TextBox ID="TenKHTextBox" runat="server" Text='<%# Bind("TenKH") %>' />
                <br />
                MaKH:
                <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>

             
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>


        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ASSGD1ConnectionString9 %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @original_MaKH AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([SDT] = @original_SDT) OR ([SDT] IS NULL AND @original_SDT IS NULL)) AND (([DiaChi] = @original_DiaChi) OR ([DiaChi] IS NULL AND @original_DiaChi IS NULL)) AND [TenKH] = @original_TenKH" InsertCommand="INSERT INTO [KhachHang] ([email], [SDT], [DiaChi], [TenKH], [MaKH]) VALUES (@email, @SDT, @DiaChi, @TenKH, @MaKH)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [email], [SDT], [DiaChi], [TenKH], [MaKH] FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [email] = @email, [SDT] = @SDT, [DiaChi] = @DiaChi, [TenKH] = @TenKH WHERE [MaKH] = @original_MaKH AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([SDT] = @original_SDT) OR ([SDT] IS NULL AND @original_SDT IS NULL)) AND (([DiaChi] = @original_DiaChi) OR ([DiaChi] IS NULL AND @original_DiaChi IS NULL)) AND [TenKH] = @original_TenKH">
            <DeleteParameters>
                <asp:Parameter Name="original_MaKH" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_SDT" Type="String" />
                <asp:Parameter Name="original_DiaChi" Type="String" />
                <asp:Parameter Name="original_TenKH" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="SDT" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="TenKH" Type="String" />
                <asp:Parameter Name="MaKH" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="SDT" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="TenKH" Type="String" />
                <asp:Parameter Name="original_MaKH" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_SDT" Type="String" />
                <asp:Parameter Name="original_DiaChi" Type="String" />
                <asp:Parameter Name="original_TenKH" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>


        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="MaKH" DataSourceID="SqlDataSource1" Width="1167px" Height="343px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="MaKH" HeaderText="Mã Khách Hàng" ReadOnly="True" SortExpression="MaKH" />
                <asp:BoundField DataField="TenKH" HeaderText="Tên Khách Hàng" SortExpression="TenKH" />
                <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" SortExpression="DiaChi" />
                <asp:BoundField DataField="SDT" HeaderText="SĐT" SortExpression="SDT" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ASSGD1ConnectionString9 %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @original_MaKH AND [TenKH] = @original_TenKH AND (([DiaChi] = @original_DiaChi) OR ([DiaChi] IS NULL AND @original_DiaChi IS NULL)) AND (([SDT] = @original_SDT) OR ([SDT] IS NULL AND @original_SDT IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL))" InsertCommand="INSERT INTO [KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [email]) VALUES (@MaKH, @TenKH, @DiaChi, @SDT, @email)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [MaKH], [TenKH], [DiaChi], [SDT], [email] FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [TenKH] = @TenKH, [DiaChi] = @DiaChi, [SDT] = @SDT, [email] = @email WHERE [MaKH] = @original_MaKH AND [TenKH] = @original_TenKH AND (([DiaChi] = @original_DiaChi) OR ([DiaChi] IS NULL AND @original_DiaChi IS NULL)) AND (([SDT] = @original_SDT) OR ([SDT] IS NULL AND @original_SDT IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_MaKH" Type="String" />
                <asp:Parameter Name="original_TenKH" Type="String" />
                <asp:Parameter Name="original_DiaChi" Type="String" />
                <asp:Parameter Name="original_SDT" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaKH" Type="String" />
                <asp:Parameter Name="TenKH" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="SDT" Type="String" />
                <asp:Parameter Name="email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenKH" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="SDT" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="original_MaKH" Type="String" />
                <asp:Parameter Name="original_TenKH" Type="String" />
                <asp:Parameter Name="original_DiaChi" Type="String" />
                <asp:Parameter Name="original_SDT" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <div class="row">
     </div>
    <div class="row">
    </div>
    </div>
</asp:Content>
