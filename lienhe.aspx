<%@ Page Title="" Language="C#" MasterPageFile="~/tem.Master" AutoEventWireup="true" CodeBehind="lienhe.aspx.cs" Inherits="WebApplication.lienhe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="fh5co-contact-section">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>Liên Hệ</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<h3>Thông tin liên hệ</h3>
					<ul class="contact-info">
						<li><i class="sl-icon-map"></i>43 Hòa An 4 - Cẩm Lệ - Đà Nẵng</li>
						<li><i class="sl-icon-phone"></i>+ 905 536 444</li>
						<li><i class="sl-icon-envelope-open"></i><a href="#">Huyvo@gmail.com</a></li>
						<li><i class="sl-icon-globe-alt"></i><a href="#">www.huyvo.com</a></li>
					</ul>
				</div>
				<div class="col-md-8 col-md-push-1 col-sm-12 col-sm-push-0 col-xs-12 col-xs-push-0">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<input class="form-control" placeholder="Tên" type="text">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input class="form-control" placeholder="Email" type="text">
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<textarea name="" class="form-control" id="" cols="30" rows="7" placeholder="Message"></textarea>
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<input value="Gửi" class="btn btn-primary" type="submit">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>
