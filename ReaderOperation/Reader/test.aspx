﻿<%@ Page Title="" Language="C#" MasterPageFile="~/headstyle.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Reader.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headstyle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
<h2  class="btn btn-primary" data-toggle="collapse" 
            data-target="#demo">
                About book
            </h2>
            <div id="demo" class="collapse in row">
                <div class="col-sm-4 text-center">
                    <div>
                         <a href="bookAdd.aspx" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image21','','images/5-5.jpg',1)"><img src="images/5.jpg" width="146" height="104" border="0" id="Image21" /></a>
                    </div>
                    <div>
                        add book
                    </div>
                </div>
            </div>

    <a href="bookAdd.aspx" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image22','','images/5-5.jpg',1)"><img src="images/5.jpg" width="146" height="104" border="0" id="Image22" /></a>
    <script type="text/JavaScript">

        function MM_swapImgRestore() { //v3.0
          var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
        }

        function MM_preloadImages() { //v3.0
          var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
            var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
            if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
        }

        function MM_findObj(n, d) { //v4.01
          var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
            d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
          if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
          for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
          if(!x && d.getElementById) x=d.getElementById(n); return x;
        }

        function MM_swapImage() { //v3.0
          var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
           if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
        }

</script>

</asp:Content>
