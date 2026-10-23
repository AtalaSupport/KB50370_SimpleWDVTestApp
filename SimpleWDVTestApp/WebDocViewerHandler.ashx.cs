using System;
using System.IO;
using System.Web;
using Atalasoft.Imaging.Codec;
using Atalasoft.Imaging.Codec.Pdf;
using Atalasoft.Imaging.WebControls;
namespace SimpleWDVTestApp
{
    public class WebDocViewerHandler : WebDocumentRequestHandler
    {
        static WebDocViewerHandler()
        {
            RegisteredDecoders.Decoders.Add(new PdfDecoder() { Resolution = 200 });
        }
        public WebDocViewerHandler()
        { }
    }
}