import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:google_fonts/google_fonts.dart';

class PdfList extends StatefulWidget {
  @override
  _PdfListState createState() => _PdfListState();
}

class _PdfListState extends State<PdfList> {
  final _storage = FirebaseStorage.instance;

  List<String> _pdfUrls = [];

  Future<void> _getPdfUrls() async {
    final ListResult result = await _storage.ref().child('pdfs/').listAll();
    final urls = await Future.wait(result.items.map((ref) => ref.getDownloadURL()));
    setState(() {
      _pdfUrls = urls;
    });
  }

  @override
  void initState() {
    super.initState();
    _getPdfUrls();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pdf Files',style: GoogleFonts.aBeeZee(),),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _pdfUrls.length,
        itemBuilder: (context, index) {
          final url = _pdfUrls[index];
          return ListTile(
            title: Text('PDF $index'),
            onTap: () async {

            },
          );
        },
      ),
    );
  }
}
