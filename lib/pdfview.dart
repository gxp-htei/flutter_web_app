import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';

class PdfView extends StatelessWidget {
  final Uint8List pdf;
  const PdfView({super.key, required this.pdf});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PDF View")),
      body: PdfPreview(
        build: (_) => pdf,
        initialPageFormat: PdfPageFormat.a4,
        allowSharing: true,
        canChangePageFormat: false,
        canChangeOrientation: false,
        canDebug: false,
        padding: EdgeInsets.zero,
      ),
    );
  }
}
