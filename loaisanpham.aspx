<%@ Page Title="" Language="C#" MasterPageFile="~/tem.Master" AutoEventWireup="true" CodeBehind="loaisanpham.aspx.cs" Inherits="WebApplication.loaisanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="fh5co-about-section">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>Quản Lý Loại Sản Phẩm</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8">
					<div class="row">
						<div class="col-md-12">
							<h3>Danh Sách Loại Sản Phẩm</h3>
                            <p>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Ma_Loai_SP" DataSourceID="SqlDataSource1" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:BoundField DataField="Ma_Loai_SP" HeaderText="Mã Loại Sản Phẩm" ReadOnly="True" SortExpression="Ma_Loai_SP" />
                                        <asp:BoundField DataField="Ten_Loai" HeaderText="Tên Loại Sản Phẩm" SortExpression="Ten_Loai" />
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString %>" DeleteCommand="DELETE FROM [Loai_SP] WHERE [Ma_Loai_SP] = @Ma_Loai_SP" InsertCommand="INSERT INTO [Loai_SP] ([Ma_Loai_SP], [Ten_Loai]) VALUES (@Ma_Loai_SP, @Ten_Loai)" SelectCommand="SELECT * FROM [Loai_SP]" UpdateCommand="UPDATE [Loai_SP] SET [Ten_Loai] = @Ten_Loai WHERE [Ma_Loai_SP] = @Ma_Loai_SP">
                                    <DeleteParameters>
                                        <asp:Parameter Name="Ma_Loai_SP" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="Ma_Loai_SP" Type="String" />
                                        <asp:Parameter Name="Ten_Loai" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="Ten_Loai" Type="String" />
                                        <asp:Parameter Name="Ma_Loai_SP" Type="String" />
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
								<h3>Cập Nhật Loại Sản Phẩm</h3>

							    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Ma_Loai_SP" DataSourceID="SqlDataSource1">
                                    <EditItemTemplate>
                                        Ma_Loai_SP:
                                        <asp:Label ID="Ma_Loai_SPLabel1" runat="server" Text='<%# Eval("Ma_Loai_SP") %>' />
                                        <br />
                                        Ten_Loai:
                                        <asp:TextBox ID="Ten_LoaiTextBox" runat="server" Text='<%# Bind("Ten_Loai") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        Ma_Loai_SP:
                                        <asp:TextBox ID="Ma_Loai_SPTextBox" runat="server" Text='<%# Bind("Ma_Loai_SP") %>' />
                                        <br />
                                        Ten_Loai:
                                        <asp:TextBox ID="Ten_LoaiTextBox" runat="server" Text='<%# Bind("Ten_Loai") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        Ma_Loai_SP:
                                        <asp:Label ID="Ma_Loai_SPLabel" runat="server" Text='<%# Eval("Ma_Loai_SP") %>' />
                                        <br />
                                        Ten_Loai:
                                        <asp:Label ID="Ten_LoaiLabel" runat="server" Text='<%# Bind("Ten_Loai") %>' />
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
