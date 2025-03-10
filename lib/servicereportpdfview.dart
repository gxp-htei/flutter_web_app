import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class ServiceReportPdfView {
  static const double inch = 72.0;
  static const double cm = inch / 2.54;

  static const pageMargin = pw.EdgeInsets.only(
    top: 1.5 * cm,
    bottom: 1.5 * cm,
    left: 2.0 * cm,
    right: 1.0 * cm,
  );

  Future<Uint8List> build() async {
    final pw.Document doc = pw.Document();
    doc.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Center(child: pw.Text("Hello World")); // Center
        },
      ),
    ); // Page

    return await doc.save();
  }
}
