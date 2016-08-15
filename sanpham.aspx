<%@ Page Title="" Language="C#" MasterPageFile="~/tem.Master" AutoEventWireup="true" CodeBehind="sanpham.aspx.cs" Inherits="WebApplication.sanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="fh5co-about-section">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>Quản Lý Sản Phẩm</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8">
					<div class="row">
						<div class="col-md-12">
							<h3>Danh Sách Sản Phẩm</h3>
                            <p>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSP" DataSourceID="SqlDataSource1" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:BoundField DataField="MaSP" HeaderText="Mã Sản Phẩm" ReadOnly="True" SortExpression="MaSP" />
                                        <asp:BoundField DataField="MaLoai" HeaderText="Mã Loại" SortExpression="MaLoai" />
                                        <asp:BoundField DataField="TenSP" HeaderText="Tên Sản Phẩm" SortExpression="TenSP" />
                                        <asp:BoundField DataField="Gia" HeaderText="Giá" SortExpression="Gia" />
                                        <asp:CommandField HeaderText="Cập Nhật" ShowDeleteButton="True" ShowEditButton="True" />
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString %>" DeleteCommand="DELETE FROM [San_Pham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [San_Pham] ([MaSP], [MaLoai], [TenSP], [Gia]) VALUES (@MaSP, @MaLoai, @TenSP, @Gia)" SelectCommand="SELECT * FROM [San_Pham]" UpdateCommand="UPDATE [San_Pham] SET [MaLoai] = @MaLoai, [TenSP] = @TenSP, [Gia] = @Gia WHERE [MaSP] = @MaSP">
                                    <DeleteParameters>
                                        <asp:Parameter Name="MaSP" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="MaSP" Type="String" />
                                        <asp:Parameter Name="MaLoai" Type="String" />
                                        <asp:Parameter Name="TenSP" Type="String" />
                                        <asp:Parameter Name="Gia" Type="Decimal" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="MaLoai" Type="String" />
                                        <asp:Parameter Name="TenSP" Type="String" />
                                        <asp:Parameter Name="Gia" Type="Decimal" />
                                        <asp:Parameter Name="MaSP" Type="String" />
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
								<h3>Cập Nhật Sản Phẩm</h3>

							    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaSP" DataSourceID="SqlDataSource1">
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
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                    </EmptyDataTemplate>
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
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        MaSP:
                                        <asp:Label ID="MaSPLabel" runat="server" Text='<%# Eval("MaSP") %>' />
                                        <br />
                                        MaLoai:
                                        <asp:Label ID="MaLoaiLabel" runat="server" Text='<%# Bind("MaLoai") %>' />
                                        <br />
                                        TenSP:
                                        <asp:Label ID="TenSPLabel" runat="server" Text='<%# Bind("TenSP") %>' />
                                        <br />
                                        Gia:
                                        <asp:Label ID="GiaLabel" runat="server" Text='<%# Bind("Gia") %>' />
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
