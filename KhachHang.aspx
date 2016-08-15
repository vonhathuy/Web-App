<%@ Page Title="" Language="C#" MasterPageFile="~/tem.Master" AutoEventWireup="true" CodeBehind="KhachHang.aspx.cs" Inherits="WebApplication.KhachHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="fh5co-about-section">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>Quản Lý Khách Hàng</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8">
					<div class="row">
						<div class="col-md-12">
							<h3>Danh Sách Khách Hàng</h3>
                            <p>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaKH" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:BoundField DataField="MaKH" HeaderText="Mã Khách Hàng" ReadOnly="True" SortExpression="MaKH" />
                                        <asp:BoundField DataField="TenKH" HeaderText="Tên Khách Hàng" SortExpression="TenKH" />
                                        <asp:BoundField DataField="SDT" HeaderText="Số Điện Thoại" SortExpression="SDT" />
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString %>" DeleteCommand="DELETE FROM [Khach_Hang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [Khach_Hang] ([MaKH], [TenKH], [SDT]) VALUES (@MaKH, @TenKH, @SDT)" SelectCommand="SELECT * FROM [Khach_Hang]" UpdateCommand="UPDATE [Khach_Hang] SET [TenKH] = @TenKH, [SDT] = @SDT WHERE [MaKH] = @MaKH">
                                    <DeleteParameters>
                                        <asp:Parameter Name="MaKH" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="MaKH" Type="String" />
                                        <asp:Parameter Name="TenKH" Type="String" />
                                        <asp:Parameter Name="SDT" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="TenKH" Type="String" />
                                        <asp:Parameter Name="SDT" Type="String" />
                                        <asp:Parameter Name="MaKH" Type="String" />
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

							    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaKH" DataSourceID="SqlDataSource1">
                                    <EditItemTemplate>
                                        MaKH:
                                        <asp:Label ID="MaKHLabel1" runat="server" Text='<%# Eval("MaKH") %>' />
                                        <br />
                                        TenKH:
                                        <asp:TextBox ID="TenKHTextBox" runat="server" Text='<%# Bind("TenKH") %>' />
                                        <br />
                                        SDT:
                                        <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        MaKH:
                                        <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
                                        <br />
                                        TenKH:
                                        <asp:TextBox ID="TenKHTextBox" runat="server" Text='<%# Bind("TenKH") %>' />
                                        <br />
                                        SDT:
                                        <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        MaKH:
                                        <asp:Label ID="MaKHLabel" runat="server" Text='<%# Eval("MaKH") %>' />
                                        <br />
                                        TenKH:
                                        <asp:Label ID="TenKHLabel" runat="server" Text='<%# Bind("TenKH") %>' />
                                        <br />
                                        SDT:
                                        <asp:Label ID="SDTLabel" runat="server" Text='<%# Bind("SDT") %>' />
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
    