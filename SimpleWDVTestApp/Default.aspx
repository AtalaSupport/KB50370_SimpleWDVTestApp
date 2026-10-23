<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SimpleWDVTestApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="WebDocViewer/jquery-3.5.1.min.js" type="text/javascript"></script>
    <script src="WebDocViewer/jquery-ui-1.14.0.min.js" type="text/javascript"></script>
    <script src="WebDocViewer/raphael-min.js" type="text/javascript"></script>
    <script src="WebDocViewer/clipboard.min.js" type="text/javascript"></script>
    <script src="WebDocViewer/atalaWebDocumentViewer.js" type="text/javascript"></script>
    <link href="WebDocViewer/jquery-ui-1.14.0.min.css" rel="Stylesheet" type="text/css" />
    <link href="WebDocViewer/atalaWebDocumentViewer.css" rel="Stylesheet" type="text/css" />
    <script type="text/javascript">
        var _viewer = null;
        var _thumbs = null;
        var _docUrl = 'SampleImages/DocCleanMultipage.tif';
        // Initialize Web Viewing... this will run at startup 
        $(function () {
            _viewer = new Atalasoft.Controls.WebDocumentViewer({
                parent: $('#_containerViewer'), // parent container to put the viewer in
                toolbarparent: $('#_toolbar1'), // parent container to put the viewer toolbar in
                serverurl: '/WebDocViewerHandler.ashx', // server handler url to send image requests to
                documenturl: _docUrl, // set this to non-empty string to open with an initial document
                allowannotations: true, // flag to enable annotations
                savepath: 'Saved/', // relative url to save annotation data to
                showscrollbars: true,
                forcepagefit: true
            })
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
     <input type="button" id="btn_open_DocCleanMultipage" value="Open DocCleanMultipage" 
         onclick="_viewer.openUrl('SampleImages/DocCleanMultipage.tif', ''); return false;" />
     <input type="button" id="btn_open_GettysburgAddress" value="Open GettysburgAddress" 
         onclick="_viewer.openUrl('SampleImages/GettysburgAddress.tif', ''); return false;" />
     <input type="button" id="btn_open_dcm" value="Open DCM (pdf)" 
         onclick="_viewer.openUrl('SampleImages/DCM.pdf', ''); return false;" />
     <input type="button" id="btn_open_hamlet" value="Open Hamlet (pdf)" 
         onclick="_viewer.openUrl('SampleImages/Hamlet.pdf', ''); return false;" />
     <div id="_toolbar1"></div>
     <div id="_containerViewer" style="width: 710px; height: 600px; display: inline-block;"></div>   
    </form>
</body>
</html>
