using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using libBrasilShop.Util;

namespace PDF
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void upload_Click(object sender, EventArgs e)
        {
            string fileName = file.PostedFile.FileName;
            string fileExtension = System.IO.Path.GetExtension(fileName);
            string fileMimeType = file.PostedFile.ContentType;
            int fileLengthInKB = file.PostedFile.ContentLength / 1024;

            string[] matchExtension = { ".jpg", ".png", ".gif" };
            string[] matchMimeType = { "image/jpeg", "image/png", "image/gif" };

            if (file.HasFile)
            {

                if (matchExtension.Contains(fileExtension) && matchMimeType.Contains(fileMimeType))
                {
                    if (fileLengthInKB <= 5120)
                    {
                        file.SaveAs(Server.MapPath(@"uploads/" + fileName));
                        Document doc = new Document(new iTextSharp.text.Rectangle(3508, 2480), 40, 40, 40, 40);

                        MemoryStream msDoc = new MemoryStream();

                        PdfWriter writer = PdfWriter.GetInstance(doc, msDoc);
                        doc.Open();

                        string arquivo = Server.MapPath(@"uploads/" + fileName);

                        iTextSharp.text.Image img = iTextSharp.text.Image.GetInstance(arquivo);
                        img.ScaleToFit(3428, 2400);

                        IElement element = img;

                        doc.Add(element);

                        doc.Close();
                        File.Delete(arquivo);
                        Response.Clear();
                        Response.AddHeader("content-disposition", "attachment;filename="+fileName);
                        Response.ContentType = "application/pdf";
                        Response.BinaryWrite(msDoc.ToArray());
                        Response.End();
                     

                    }
                    else
                    {
                        Util.Alert("Selecione arquivo abaixo de 5 megabytes",this.Page);
                    }

                }
                else
                {
                    Util.Alert("Selecione um arquivo de imagem válido", this.Page);
                }
            }
            else
            {
               Util.Alert("Selecione um arquivo para converter",this.Page);
            }
        }
    }
}