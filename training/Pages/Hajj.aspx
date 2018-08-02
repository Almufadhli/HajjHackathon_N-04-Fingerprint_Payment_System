<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Hajj.aspx.cs" Inherits="training.Pages.Hajj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: 'kanit', 'sans-serif';
        }

        h2 {
            font-family: 'kanit', 'serif';
            font-weight: bolder;
        }

        .container {
            position: relative;
        }

        .float_right {
            float: right;
        }

        .btn_margin {
            margin-top: 5px;
        }

        .login_textbox {
            width: 90%;
            border-radius: 5px;
        }

        #pilgrimDetails {
            width: 75%;
            border: 3px solid black;
            margin: 5px auto;
        }

        .textbox_width_20 {
            width: 20%;
        }

        .textbox_width_50 {
            width: 50%;
        }

        label {
            margin-bottom: 0px;
            margin-top: 2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" style="width: 40%; text-align: left">
        <div id="pilgrimDetails">

            <div id="paymentDetails" style="text-align: center; width: 80%; padding: 5px; margin: 0px auto;">

                <h2>Payment Method</h2>

                <div class="Row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <label>Payment Card</label>
                    </div>
                </div>

                <div class="Row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:DropDownList ID="Card_Type" runat="server">
                            <asp:ListItem Text="Visa" />
                            <asp:ListItem Text="MasterCard" />
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="Row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <label>Card Number</label>
                    </div>
                </div>

                <div class="Row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:TextBox runat="server" ID="Code_No" />
                    </div>
                </div>

                <div class="Row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <label>Expiration date and security code</label>
                    </div>
                </div>
                <div class="Row">
                    <asp:DropDownList ID="month" runat="server" Height="26px">
                        <asp:ListItem Text="01" />
                        <asp:ListItem Text="02" />
                        <asp:ListItem Text="03" />
                        <asp:ListItem Text="04" />
                        <asp:ListItem Text="05" />
                        <asp:ListItem Text="06" />
                        <asp:ListItem Text="07" />
                        <asp:ListItem Text="08" />
                        <asp:ListItem Text="09" />
                        <asp:ListItem Text="10" />
                        <asp:ListItem Text="11" />
                        <asp:ListItem Text="12" />
                    </asp:DropDownList>

                    <asp:TextBox runat="server" ID="Year" CssClass="textbox_width_20" />

                    <asp:TextBox runat="server" ID="Sec_Code" CssClass="textbox_width_20" />

                </div>

                <hr />

                <h2>Billing Information</h2>

                <div class="Row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <label>Full name</label>
                    </div>
                </div>
                <div class="Row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:TextBox runat="server" ID="Name_txtbox" />
                    </div>
                </div>
                <div class="Row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <label>City</label>
                    </div>
                </div>
                <div class="Row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:TextBox runat="server" ID="City_txtbox" />
                    </div>
                </div>
                <div class="Row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <label>Billing address</label>
                    </div>
                </div>
                <div class="Row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:TextBox runat="server" ID="Address_txtbox" />
                    </div>
                </div>
                <div class="Row">
                    <div class="col-lg-12 col-md-12 col-sm-2 col-xs-12">
                        <label>Zip or postal code</label>
                    </div>
                </div>
                <div class="Row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:TextBox runat="server" ID="Zip_txtbox" />
                    </div>
                </div>
                <div class="Row">
                    <div class="col-lg-12 col-md-12 col-sm-2 col-xs-12">
                        <label>Currency</label>
                    </div>
                </div>
                <div class="Row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:TextBox runat="server" ID="Currency_txtbox" />
                    </div>
                </div>
                <div class="Row">
                    <div class="col-lg-12 col-md-12 col-sm-2 col-xs-12">
                        <label>Phone number</label>
                    </div>
                </div>
                <div class="Row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:TextBox runat="server" ID="Phone_txtbox" />
                    </div>
                </div>

                <asp:Button Text="Continue" runat="server" CssClass="btn btn-success btn_margin" />
            </div>

            <div id="paymentRequirements" style="text-align: center; width: 80%; padding: 5px; margin: 0px auto;">
                <div class="Row">
                    <div class="col-lg-12 col-md-12 col-sm-2 col-xs-12">
                        <label>Pilgrim's Number</label>
                    </div>
                </div>
                <div class="Row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:TextBox runat="server" ID="PID_txtbox" />
                    </div>
                </div>
                <div class="Row">
                    <div class="col-lg-12 col-md-12 col-sm-2 col-xs-12">
                        <label>How much money do you want to send</label>
                    </div>
                </div>
                <div class="Row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:TextBox runat="server" ID="Money_txtbox" />
                    </div>
                </div>

                <asp:Button Text="Send" runat="server" CssClass="btn btn-success btn_margin" OnClick="btn_send_money_Click" />
            </div>


        </div>
    </div>
</asp:Content>
