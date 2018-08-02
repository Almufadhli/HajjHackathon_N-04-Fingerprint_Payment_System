<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="training.Pages.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        p {
            margin: 0px;
        }

        .Options_container {
            border-radius: 30px;
            background-color: rgba(0,0,0,0);
            border: 10px double #FF5F00;
            margin: 20px auto;
            width: 50%;
            height: 80%;
        }

        #SearchContainer, #AddContainer, #EditContainer {
            width: 75%;
            border: 3px solid black;
            margin: 5px auto;
        }

        .txt_red {
            color: red;
        }

        .col-one {
            border: 2px solid #333;
            margin-bottom: 2px;
            border-bottom-right-radius: 10px;
            border-top-right-radius: 10px;
        }

        .col-two {
            border: 2px solid #333;
            margin-bottom: 2px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" style="text-align: center;">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-8 col-xs-12" style="height: 200px;">
                <div class="Options_container">
                </div>
            </div>

            <div class="col-lg-4 col-md-4 col-sm-8 col-xs-12" style="height: 200px;">
                <div class="Options_container">
                </div>
            </div>

            <div class="col-lg-4 col-md-4 col-sm-8 col-xs-12" style="height: 200px;">
                <div class="Options_container">
                </div>
            </div>
        </div>


        <hr style="margin: 1px;" />


        <div id="SearchContainer">
            <br />

            <h2>البحث عن الأشخاص</h2>

            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <%-- <p>ابحث</p>--%>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <asp:TextBox runat="server" ID="txt_search_pilgrim"></asp:TextBox>
                    <asp:LinkButton ID="search" Text="ابحث" runat="server" OnClick="search_Click"></asp:LinkButton>
                </div>
            </div>

            <br />
            <asp:Label runat="server" ID="searchResult" CssClass="txt_red"> لم يتم العثور على نتائج</asp:Label>


            <div id="informationRetrieved" style="text-align: right; width: 80%; padding: 5px; margin: 0px auto;">
                <%--public ObjectId _id { get; set; }
                public string fullName { get; set; }
                public int hajjId { get; set; }
                public int userId { get; set; }
                public string nationality { get; set; }
                public string residency { get; set; }
                public string fingerPrintHash { get; set; }
                public int HCredit { get; set; }
                public string phone { get; set; }--%>

                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 col-one">
                        <label>الأسم الكامل</label>
                    </div>

                    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 col-two">
                        <asp:Label ID="fullName" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 col-one">
                        <label>رقم الحاج</label>
                    </div>

                    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 col-two">
                        <asp:Label ID="pilgrimId" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 col-one">
                        <label>اسم المستخدم</label>
                    </div>

                    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 col-two">
                        <asp:Label ID="userId" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 col-one">
                        <label>الجنسية</label>
                    </div>

                    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 col-two">
                        <asp:Label ID="nationality" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 col-one">
                        <label>مكان الإقامة</label>
                    </div>

                    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 col-two">
                        <asp:Label ID="residency" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 col-one">
                        <label>المبلغ</label>
                    </div>

                    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 col-two">
                        <asp:Label ID="credit" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 col-one">
                        <label>رقم الجوال</label>
                    </div>

                    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 col-two">
                        <asp:Label ID="phone" runat="server"></asp:Label>
                    </div>
                </div>
            </div>

            <hr />

            <h2>قائمة المعاملات</h2>
            <%--public ObjectId _id { get; set; }
                public string sellerId { get; set; }
                public string .costumerId { get; set; }
                public DateTime transactionDate { get; set; }
                public int amount { get; set; }
                public string status { get; set; }--%>

            <div class="row" style="margin: 0px auto; text-align: center; width: 80%;">
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="text-align: center;">
                    <label>Seller ID</label>
                </div>

                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                    <label>Costumer ID</label>
                </div>

                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                    <label>Transaction Date</label>
                </div>

                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                    <label>Amount</label>
                </div>

                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                    <label>Status</label>
                </div>
            </div>

        </div>

        <div id="AddContainer">
            <br />

            <h2>إدخال البيانات الشخصية</h2>

            <div id="informationDetails" style="text-align: center; width: 80%; padding: 5px; margin: 0px auto;">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <label>*الأسم الكامل*</label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:TextBox ID="txt_new_fullName" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <label>*رقم الحاج*</label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:TextBox ID="txt_new_pilgrimId" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <label>اسم المستخدم</label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:TextBox ID="txt_new_userId" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <label>*الجنسية*</label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:TextBox ID="txt_new_nationality" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <label>*مكان الإقامة*</label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:TextBox ID="txt_new_residency" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <label>المبلغ</label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:TextBox ID="txt_new_credit" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <label>*رقم الجوال*</label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:TextBox ID="txt_new_phone" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:FileUpload ID="fingerPrint" runat="server" />
                    </div>
                </div>

                <br />

                <asp:Button runat="server" Text="تسجيل مستخدم جديد" ID="registerBtn" OnClick="registerBtn_Click" CssClass="btn btn-success" />
            </div>
        </div>

        <div id="EditContainer">
            <br />

            <h2>تعديل البيانات الشخصية</h2>

            <div id="informationDetailsFilled" style="text-align: center; width: 80%; padding: 5px; margin: 0px auto;">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <label>الأسم الكامل</label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:TextBox ID="txt_edit_fullName" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <label>رقم الحاج</label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:TextBox ID="txt_edit_pilgrimId" runat="server" Enabled="false"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <label>اسم المستخدم</label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:TextBox ID="txt_edit_userId" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <label>الجنسية</label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:TextBox ID="txt_edit_nationality" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <label>مكان الإقامة</label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:TextBox ID="txt_edit_residency" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <label>المبلغ</label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:TextBox ID="txt_edit_credit" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <label>رقم الجوال</label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <asp:TextBox ID="txt_edit_phone" runat="server"></asp:TextBox>
                    </div>
                </div>


                <br />

                <asp:Button runat="server" Text="تعديل بيانات المستخدم" ID="editPilgrimInfo" OnClick="editPilgrimInfo_Click" PostBackUrl="~/Pages/Admin.aspx" CssClass="btn btn-success" />
            </div>
        </div>
    </div>
</asp:Content>
