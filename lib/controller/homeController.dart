// import 'dart:io';
// import 'dart:async';
// import 'package:file_picker/file_picker.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:get/get.dart';
//
// // abstract class HomeController extends GetxController {
// //   //selectPdf();
// //
// //   uploadPdf();
// // }
//
// class HomeControllerImp extends GetxController {
//   PlatformFile? pickedFile;
//
//   @override
//   uploadPdf() {
//     final path = 'file/${pickedFile!.name}';
//     final file = File(pickedFile!.path!);
//     final ref = FirebaseStorage.instance.ref().child(path);
//     ref.putFile(file);
//   }
//   ///
//   // Future<String> uploadPDF() async {
//   //   try {
//   //     FilePickerResult? result = await FilePicker.platform.pickFiles(
//   //       type: FileType.custom,
//   //       allowedExtensions: ['pdf'],
//   //     );
//   //
//   //     if (result != null) {
//   //       File file = File(result.files.single.path!);
//   //       String fileName = result.files.single.name;
//   //
//   //       Reference reference =
//   //           FirebaseStorage.instance.ref().child('pdfs/$fileName');
//   //       TaskSnapshot uploadTask = await reference.putFile(file);
//   //       String downloadUrl = await uploadTask.ref.getDownloadURL();
//   //
//   //       return downloadUrl;
//   //     }
//   //
//   //     return 'No file selected';
//   //   } catch (e) {
//   //     print(e);
//   //     return 'Error uploading PDF';
//   //   }
//   // }
// }
