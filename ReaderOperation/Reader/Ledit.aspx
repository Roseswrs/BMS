﻿<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="Ledit.aspx.cs" Inherits="Reader.Ledit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group">
        <div class="col-sm-offset-4 col-md-8">
            <h2>Please modify your personal information.</h2>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="Your ID：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Your name：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" ></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="Set password：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
           <asp:Button ID="Button3" runat="server" Text="modify" OnClick="Button3_Click" CssClass="btn btn-default" />
           <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Visible="False" TextMode="Password" ></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please input the password." ControlToValidate="TextBox2" ForeColor="Indigo"></asp:RequiredFieldValidator>
        </div>
    </div>
    <asp:Panel ID="Panel1" runat="server" Visible="False">
    <div class="form-group">
        <asp:Label ID="Label8" runat="server" Text="input again：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
           <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" TextMode="Password" ></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox7" ForeColor="Indigo" ErrorMessage="Password can not be empty." Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="two input is differnet!" ControlToCompare="TextBox2" ControlToValidate="TextBox7" Display="Dynamic" ForeColor="Indigo"></asp:CompareValidator>
        </div>
    </div>
    </asp:Panel>
    <div class="form-group" style="padding-left:40px; padding-top:20px">     
        <div class="col-sm-offset-4 col-md-offset-4">
            <div class="col-sm-2">
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" CssClass="btn btn-primary" />
            </div>
            <div class="col-sm-2">
                <asp:Button ID="Button2" runat="server" Text="Return" OnClick="Button2_Click" CssClass="btn btn-default" CausesValidation="False" />
            </div>
        </div>
    </div>

</asp:Content>
