import 'dart:io';
import 'dart:async';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // PlatformFile? _pickedFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Assignment3 - Firebase Storage',
          style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Colors.white, Colors.black]),
            ),
            child: Text('_pickedFile!.name'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(100, 40),
              ),
              onPressed: () {
                selectPdf();
              },
              child: Text(
                'Select PDF',
                style: GoogleFonts.aBeeZee(),
              )),
          const SizedBox(height: 20),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(100, 40),
              ),
              onPressed: () {
                uploadPdf();
              },
              child: Text(
                'Upload PDF',
                style: GoogleFonts.aBeeZee(),
              )),
          SizedBox(height: 20),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(100, 40),
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'listPdf');
              },
              child: Text(
                'Show Pdf List',
                style: GoogleFonts.aBeeZee(),
              ))
        ],
      ),
    );
  }

  Future selectPdf() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;
    // setState(() {
    //   _pickedFile = result.files.first;
    // });
  }

  uploadPdf() {
    // final path = 'file/${_pickedFile!.name}';
    // final file = File(_pickedFile!.path!);
    // final ref = FirebaseStorage.instance.ref().child(path);
    // ref.putFile(file);
  }
}

// Future<String> uploadPDF() async {
//   try {
//     FilePickerResult? result = await FilePicker.platform.pickFiles(
//       type: FileType.custom,
//       allowedExtensions: ['pdf'],
//     );
//
//     if (result != null) {
//       File file = File(result.files.single.path);
//       String fileName = result.files.single.name;
//
//       Reference reference =
//       FirebaseStorage.instance.ref().child('pdfs/$fileName');
//       TaskSnapshot uploadTask = await reference.putFile(file);
//       String downloadUrl = await uploadTask.ref.getDownloadURL();
//
//       return downloadUrl;
//     }
//
//     return 'No file selected';
//   } catch (e) {
//     print(e);
//     return 'Error uploading PDF';
//   }
// }

// Future<String> uploadPDFFile(File file) async {
//   String fileName = 'file/${pickedFile!.name}';
//
//   Reference reference = FirebaseStorage.instance.ref().child(fileName);
//
//   UploadTask uploadTask = reference.putFile(file);
//
//   TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() => {});
//
//   return await taskSnapshot.ref.getDownloadURL();
// }

///
///

// Future<String> uploadPdfToFirebaseStorage() async {
//   // Pick a PDF file using the file_picker package
//   FilePickerResult? result = await FilePicker.platform
//       .pickFiles(type: FileType.custom, allowedExtensions: ['pdf']);
//   if (result == null) return ''; // handle cancel event
//
//   File file = File(result.files.single.path!); // file is selected
//   String fileName = '${DateTime.now().millisecondsSinceEpoch}.pdf';
//
//   // Upload the PDF file to Firebase Storage
//   try {
//     TaskSnapshot snapshot = await FirebaseStorage.instance
//         .ref()
//         .child('pdfs/$fileName')
//         .putFile(file);
//     String downloadUrl = await snapshot.ref.getDownloadURL();
//     return downloadUrl;
//   } on FirebaseException catch (e) {
//     print('Failed to upload file: $e');
//   }
//   return '';
// }
