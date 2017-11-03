﻿<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="bookDeleteList.aspx.cs" Inherits="Reader.bookDeleteList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group">
        <div style="width:100%; text-align:center">
            <h2>Book Delete</h2>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="category" CssClass="col-sm-1 control-label" Font-Bold="True" ></asp:Label>
        <div class="col-sm-2">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <asp:Label ID="Label2" runat="server" Text="name" CssClass="col-sm-1 control-label" Font-Bold="True" ></asp:Label>
        <div class="col-sm-2">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <asp:Label ID="Label3" runat="server" Text="ID" CssClass="col-sm-1 control-label" Font-Bold="True" ></asp:Label>
        <div class="col-sm-2">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-1">
            <asp:Button ID="Button2" runat="server" Text="search" OnClick="Button2_Click" CssClass="btn btn-primary" />
        </div>
        <div class="col-sm-1">
            <asp:Button ID="Button3" runat="server" Text="return" OnClick="Button3_Click" CssClass="btn btn-default" />
        </div>
    </div>
    <table class="table table-hover table-responsive table-striped text-center">
        <thead>
        <tr>
            <th></th>
            <th class="text-center">
                ID
            </th>
            <th class="text-center">
                Picture
            </th>
            <th class="text-center">
                Name
            </th>
            <th class="text-center">
                Price
            </th>
            <th class="text-center">
                Category
            </th>
            <th class="text-center">
                Press
            </th>
            <th class="text-center">
                Total Amount
            </th>
            <th class="text-center">
                Loan Amount
            </th>
            <th class="text-center">
                Loaction
            </th>
            <th class="text-center">
                Action
            </th>
        </tr>
        </thead>
        <tbody>
        <asp:Repeater ID="LBook" runat="server">
            <ItemTemplate>
                <tr>
                    <td style="vertical-align:middle; padding:0 20px">
                        <input type="checkbox" name="vehicle" value='<%#Eval("id") %>' />
                    </td>
                    <td style="vertical-align:middle">
                        <%#Eval("id") %>
                    </td>
                    <td style="vertical-align:middle">
                      <img width="120" height="140" src='<%#Eval("Pic") %>' alt="Didn't upload the book picture." class="img-rounded"/>
                    </td>
                    <td style="vertical-align:middle">
                        <%#Eval("name") %>
                    </td>
                    <td style="vertical-align:middle">
                        <%#Eval("price") %>
                    </td>
                    <td style="vertical-align:middle">
                        <%#Eval("category") %>
                    </td>
                    <td style="vertical-align:middle">
                        <%#Eval("press") %>
                    </td>
                    <td style="vertical-align:middle">
                        <%#Eval("totalAmount") %>
                    </td>
                    <td style="vertical-align:middle">
                        <%#Eval("loanAmount") %>
                    </td>
                    <td style="vertical-align:middle">
                        <%#Eval("location") %>
                    </td>
                    <td style="vertical-align:middle">
                    <a href="bookDelete.aspx?ID=<%#Eval("ID") %>">Delete</a>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        </tbody>
    </table>
    <div id="qq">
        <asp:Label ID="Label4" runat="server" Text="" ClientIDMode="Static"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" ClientIDMode="Static"></asp:TextBox>
    </div>
    <asp:Button ID="sure" runat="server" Text="Button" ClientIDMode="Static" CausesValidation="False" OnClick="Button1_Click"  />
    <script type="text/javascript">
        $(document).ready(function () {
            $("#qq").hide();
            $("#sure").click(function () {
                //alert("ok");
                $(":checkbox").each(function (j, item) {
                    if ($(this).is(':checked'))
                    {
                        //alert($(this).val());
                        $("#Label4").append("<b>" + $(this).val() + "," + "</b>");
                    }
                    

                });
                $("#TextBox4").val($("#Label4").text());
            });
        }); 
    </script>
</asp:Content>
