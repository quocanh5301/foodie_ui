import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class MyImagePicker {
  final ImagePicker imagePicker = ImagePicker();
  final ImageCropper imageCropper = ImageCropper();

  Future<File?> openCamera() async {
    var image = await imagePicker.pickImage(source: ImageSource.camera);
    if (image != null) {
      return await _cropImage(image);
    }
    return null;
  }

  Future<File?> openGallery() async {
    var image = await imagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      return await _cropImage(image);
    }
    return null;
  }

  Future<File?> _cropImage(XFile image) async {
    CroppedFile? croppedFile = await imageCropper.cropImage(
      sourcePath: image.path,
      maxWidth: 512,
      maxHeight: 512,
    );
    debugPrint('QA test file ${croppedFile?.path ?? 'null'}');

    if (croppedFile != null) {
      return File(croppedFile.path);
    }
    return null;
  }
}
