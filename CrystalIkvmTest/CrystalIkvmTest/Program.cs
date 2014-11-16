using System;

namespace CrystalIkvmTest
{
    class MainClass
    {
        public static void Main(string[] args)
        {

            var data = GetReportSimpleAsBytes();
        }

        private static byte[] GetReportSimpleAsBytes()
        {
            // see the java_crj12_web_resultset_datasource.jsp exmpale

            java.sql.Connection cn;
            java.sql.PreparedStatement statement;
            java.sql.ResultSet resultset;
            java.io.ByteArrayInputStream inputStream;
            java.io.ByteArrayOutputStream outputStream = new java.io.ByteArrayOutputStream(); 
            byte[] byteArray;
            int bytesRead;


            var rpt = new com.crystaldecisions.sdk.occa.report.application.ReportClientDocument();
            rpt.setReportAppServer(com.crystaldecisions.sdk.occa.report.application.ReportClientDocument.inprocConnectionString);
            rpt.open("thereport.rpt", com.crystaldecisions.sdk.occa.report.application.OpenReportOptions._openAsReadOnly);
            var reportSource = rpt.getReportSource();

            inputStream = (java.io.ByteArrayInputStream)rpt.getPrintOutputController().export(com.crystaldecisions.sdk.occa.report.exportoptions.ReportExportFormat.PDF);


            byteArray = new byte[ 1024];
            while ((bytesRead = inputStream.read(byteArray)) != -1)
            {
                outputStream.write(byteArray, 0, bytesRead);    

            }

            rpt.close();

            return outputStream.toByteArray();
        }

    }
}
