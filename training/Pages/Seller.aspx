<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Seller.aspx.cs" Inherits="training.Pages.Seller" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .float_right {
            float: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" style="width: 40%; text-align: left">

        <div id="BillingDetails" style="text-align: center; width: 80%; padding: 5px; margin: 0px auto; width: 75%; border: 3px solid black; margin: 5px auto;">

            <div class="Row">
                <div class="col-lg-12 col-md-12 col-sm-2 col-xs-12">
                    <label>Bill Cost</label>
                </div>
            </div>
            <div class="Row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <asp:TextBox runat="server" ID="Cost_txtbox" />
                </div>
            </div>

            <br />

            <div class="Row">
                <div class="col-lg-12 col-md-12 col-sm-2 col-xs-12">
                    <label class="float:left;">Upload Fingerprint</label>
                    <asp:FileUpload runat="server" ID="FPFU" CssClass="float_right" />
                </div>
            </div>

            <asp:Button Text="Submit" ID="transfer" runat="server" OnClick="transfer_Click" />
            <asp:Label ID="testCompare" runat="server" ></asp:Label>
            <%--<div class="Row">
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

            </div>--%>
            <br />
            .

        </div>
    </div>
</asp:Content>
