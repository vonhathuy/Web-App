<%@ Page Title="" Language="C#" MasterPageFile="~/tem.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="fh5co-intro-section">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center">
					<h2>Monster nơi cung cấp cho các bạn các sản phẩm về công nghệ tốt nhất</h2>
				</div>
			</div>
		</div>
	</div>
	<div id="fh5co-featured-section">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<a href="#" class="featured-grid" style="background-image: url(images/image_6.jpg);">
						<div class="desc">
							<h3>Work with love</h3>
							<span>Web Design</span>
						</div>
					</a>
				</div>
				<div class="col-md-6">
					<a href="#" class="featured-grid featured-grid-2" style="background-image: url(images/image_2.jpg);">
						<div class="desc">
							<h3>Music Lover</h3>
							<span>Application</span>
						</div>
					</a>
					<div class="row">
						<div class="col-md-6">
							<a href="#" class="featured-grid featured-grid-2" style="background-image: url(images/image_3.jpg);">
								<div class="desc">
									<h3>Travel</h3>
									<span>Illustration</span>
								</div>
							</a>
						</div>
						<div class="col-md-6">
							<a href="#" class="featured-grid featured-grid-2" style="background-image: url(images/image_8.jpg);">
								<div class="desc">
									<h3>Captured</h3>
									<span>Photo</span>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="fh5co-services-section">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>Các dịch vụ</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 services-inner text-center">
					<span><i class="sl-icon-graph"></i></span>
					<h3>Ứng Dụng Mobile</h3>
					<p>IOS: X Code - Xamarin - Apache Codorva
                        <br />
                        Android: Java - Xamarin - Apache Codorva <br />
                        Windown Phone: C# - Xamarin </p>
				</div>
				<div class="col-md-4 services-inner text-center">
					<span><i class="sl-icon-heart"></i></span>
					<h3>Ứng Dụng Web</h3>
					<p>Client-Side: HTML5 - JavaScript - JQuery...<br />
                        Server-Side: NodeJS - PHP Joomla ...<br />
                        Tính năng: Bảo mật cao - dễ nâng cấp</p>
				</div>
				<div class="col-md-4 services-inner text-center">
					<span><i class="sl-icon-key"></i></span>
					<h3>Ứng Dụng Destkop</h3>
					<p>Giao diện: Winform UI - Custom UI Control
                        <br />
                        Kiến Trúc: SignalR - Entity Framework<br />
                        Hệ CSDL: SQL - My SQL - Oracle</p>
                    <p>&nbsp;</p>
				</div>

			</div>
		</div>
	</div>
</asp:Content>
