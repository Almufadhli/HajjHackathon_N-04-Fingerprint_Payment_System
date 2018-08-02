<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Seller.aspx.cs" Inherits="training.Pages.Seller" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="width: 40%; text-align: left">
        <div class="Row">
            <div class="col-lg-12 col-md-12 col-sm-2 col-xs-12">
                <p runat="server" id="Cost_txt">Bill Cost</p>
            </div>
        </div>
        <div class="Row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <asp:TextBox runat="server" ID="Cost_Box" />
            </div>
        </div>
        <div class="Row">
            <div class="col-lg-12 col-md-12 col-sm-2 col-xs-12">
                <p runat="server" id="Fingerprint_txt">Upload Fingerprint</p>
            </div>
        </div>
        <div class="Row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <asp:FileUpload runat="server" ID="FileUpload1" />
                <asp:FileUpload runat="server" ID="fileupload2" />
            </div>
        </div>

        <div class="test">


            <asp:Button CssClass="uploadButton" ID="buttonUpload" runat="server" OnClick="buttonUpload_Click" Text="upload Image" />
            <br />
            <asp:Label ID="label1" runat="server"></asp:Label>
            <br />
            <asp:Label ID="label2" runat="server"></asp:Label>

        </div>

    </div>
    <div>
</asp:Content>
