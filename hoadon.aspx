<%@ Page Title="" Language="C#" MasterPageFile="~/tem.Master" AutoEventWireup="true" CodeBehind="hoadon.aspx.cs" Inherits="WebApplication.hoadon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="fh5co-about-section">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>Quản Lý Hóa Đơn</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8">
					<div class="row">
						<div class="col-md-12">
							<h3>Danh Sách Hóa Đơn</h3>
                            <p>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaHD" DataSourceID="SqlDataSource1" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:BoundField DataField="MaHD" HeaderText="Mã Hóa Đơn" ReadOnly="True" SortExpression="MaHD" />
                                        <asp:BoundField DataField="MaKH" HeaderText="Mã Khách Hàng" SortExpression="MaKH" />
                                        <asp:BoundField DataField="Ngay" HeaderText="Ngày Lập" SortExpression="Ngay" />
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString %>" DeleteCommand="DELETE FROM [Hoa_Don] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [Hoa_Don] ([MaHD], [MaKH], [Ngay]) VALUES (@MaHD, @MaKH, @Ngay)" SelectCommand="SELECT * FROM [Hoa_Don]" UpdateCommand="UPDATE [Hoa_Don] SET [MaKH] = @MaKH, [Ngay] = @Ngay WHERE [MaHD] = @MaHD">
                                    <DeleteParameters>
                                        <asp:Parameter Name="MaHD" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="MaHD" Type="String" />
                                        <asp:Parameter Name="MaKH" Type="String" />
                                        <asp:Parameter DbType="Date" Name="Ngay" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="MaKH" Type="String" />
                                        <asp:Parameter DbType="Date" Name="Ngay" />
                                        <asp:Parameter Name="MaHD" Type="String" />
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
								<h3>Cập Nhật Hóa Đơn</h3>

							    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaHD" DataSourceID="SqlDataSource1">
                                    <EditItemTemplate>
                                        MaHD:
                                        <asp:Label ID="MaHDLabel1" runat="server" Text='<%# Eval("MaHD") %>' />
                                        <br />
                                        MaKH:
                                        <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
                                        <br />
                                        Ngay:
                                        <asp:TextBox ID="NgayTextBox" runat="server" Text='<%# Bind("Ngay") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        MaHD:
                                        <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
                                        <br />
                                        MaKH:
                                        <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
                                        <br />
                                        Ngay:
                                        <asp:TextBox ID="NgayTextBox" runat="server" Text='<%# Bind("Ngay") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        MaHD:
                                        <asp:Label ID="MaHDLabel" runat="server" Text='<%# Eval("MaHD") %>' />
                                        <br />
                                        MaKH:
                                        <asp:Label ID="MaKHLabel" runat="server" Text='<%# Bind("MaKH") %>' />
                                        <br />
                                        Ngay:
                                        <asp:Label ID="NgayLabel" runat="server" Text='<%# Bind("Ngay") %>' />
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
