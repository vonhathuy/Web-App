<%@ Page Title="" Language="C#" MasterPageFile="~/tem.Master" AutoEventWireup="true" CodeBehind="hoadonchitiet.aspx.cs" Inherits="WebApplication.hoadonchitiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="fh5co-about-section">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>Quản Lý Hóa Đơn Chi Tiết</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8">
					<div class="row">
						<div class="col-md-12">
							<h3>Danh Sách Hóa Đơn Chi Tiết</h3>
                            <p>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaHDCT" DataSourceID="SqlDataSource2" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:BoundField DataField="MaHDCT" HeaderText="Mã hóa đơn chi tiết " ReadOnly="True" SortExpression="MaHDCT" />
                                        <asp:BoundField DataField="MaHD" HeaderText="Mã hóa đơn" SortExpression="MaHD" />
                                        <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" SortExpression="MaSP" />
                                        <asp:CommandField HeaderText="Cập nhật" ShowDeleteButton="True" ShowEditButton="True" />
                                    </Columns>
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString %>" DeleteCommand="DELETE FROM [Hoa_Don_Chi_Tiet] WHERE [MaHDCT] = @MaHDCT" InsertCommand="INSERT INTO [Hoa_Don_Chi_Tiet] ([MaHDCT], [MaHD], [MaSP], [SoLuong]) VALUES (@MaHDCT, @MaHD, @MaSP, @SoLuong)" SelectCommand="SELECT * FROM [Hoa_Don_Chi_Tiet]" UpdateCommand="UPDATE [Hoa_Don_Chi_Tiet] SET [MaHD] = @MaHD, [MaSP] = @MaSP, [SoLuong] = @SoLuong WHERE [MaHDCT] = @MaHDCT">
                                    <DeleteParameters>
                                        <asp:Parameter Name="MaHDCT" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="MaHDCT" Type="String" />
                                        <asp:Parameter Name="MaHD" Type="String" />
                                        <asp:Parameter Name="MaSP" Type="String" />
                                        <asp:Parameter Name="SoLuong" Type="Int32" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="MaHD" Type="String" />
                                        <asp:Parameter Name="MaSP" Type="String" />
                                        <asp:Parameter Name="SoLuong" Type="Int32" />
                                        <asp:Parameter Name="MaHDCT" Type="String" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<aside class="sidebar">
						<div class="row">
							<div class="col-md-12 side">
								<h3>Cập Nhật Khách Hàng</h3>

							    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaHDCT" DataSourceID="SqlDataSource2">
                                    <EditItemTemplate>
                                        MaHDCT:
                                        <asp:Label ID="MaHDCTLabel1" runat="server" Text='<%# Eval("MaHDCT") %>' />
                                        <br />
                                        MaHD:
                                        <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
                                        <br />
                                        MaSP:
                                        <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
                                        <br />
                                        SoLuong:
                                        <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        MaHDCT:
                                        <asp:TextBox ID="MaHDCTTextBox" runat="server" Text='<%# Bind("MaHDCT") %>' />
                                        <br />
                                        MaHD:
                                        <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
                                        <br />
                                        MaSP:
                                        <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
                                        <br />
                                        SoLuong:
                                        <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        MaHDCT:
                                        <asp:Label ID="MaHDCTLabel" runat="server" Text='<%# Eval("MaHDCT") %>' />
                                        <br />
                                        MaHD:
                                        <asp:Label ID="MaHDLabel" runat="server" Text='<%# Bind("MaHD") %>' />
                                        <br />
                                        MaSP:
                                        <asp:Label ID="MaSPLabel" runat="server" Text='<%# Bind("MaSP") %>' />
                                        <br />
                                        SoLuong:
                                        <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Bind("SoLuong") %>' />
                                        <br />
                                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                    </ItemTemplate>
                                </asp:FormView>
                                <br />

							</div>
						</div>
					</aside>
				</div>
			</div>
		</div>
	</div>
</asp:Content>
