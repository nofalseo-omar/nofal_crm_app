import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nofal_crm_app/components/toast_manager.dart';
import 'package:nofal_crm_app/core/localization/app_strings.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';

class AppFunctions {
  static Future<DateTime?> showDatePickerFunction(BuildContext context) async {
    return await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1800),
      lastDate: DateTime.now(),
    );
  }

  static initializeUserHomeRoute() {
    // final AsnanAccountEnum accountType = getCashedUserAccountType();
    // Get.find<AccountControllerService>().accountEnum = accountType;
    // return defineUserController(accountType);
  }

  // static AsnanAccountEnum getCashedUserAccountType() {
  //   return CashHelper.getData()
  //       ? AsnanAccountEnum.doctor
  //       : AsnanAccountEnum.patient;
  // }

  // static void navigateToCurrentUserTypeHome() {
  //   if (Get.find<AccountControllerService>().accountEnum ==
  //       AsnanAccountEnum.doctor) {
  //     Get.offAllNamed();
  //   } else {
  //     Get.offAllNamed();
  //   }
  // }

  // static Future<File?> getImageFiles() async {
  //   final result = await FilePicker.platform.pickFiles(
  //       allowMultiple: false,
  //       onFileLoading: (status) {
  //         return const Center(child: CircularProgressIndicator());
  //       },
  //       type: FileType.custom,
  //       allowedExtensions: ['png', 'jpg'],
  //       withData: true);

  //   if (result != null) {
  //     final files = List<File>.from(result.paths.map((e) => File(e!)));
  //     return files[0];
  //   } else {
  //     return null;
  //   }
  // }

  static bool _isFilePickerActive = false;

  static Future<List<String?>> pickImagesVideos({
    int maxImages = 1,
  }) async {
    if (_isFilePickerActive) return []; // Prevent multiple pickers
    _isFilePickerActive = true;

    try {
      final ImagePicker picker = ImagePicker();
      final String? option = await showModalBottomSheet<String>(
        context: Get.context!,
        builder: (BuildContext context) {
          return SizedBox(
            height: 150,
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.photo_library),
                  title: Text(AppStrings.gallery.tr),
                  onTap: () => Navigator.of(context).pop('gallery'),
                ),
                ListTile(
                  leading: const Icon(Icons.camera_alt),
                  title: Text(AppStrings.camera.tr),
                  onTap: () => Navigator.of(context).pop('camera'),
                ),
              ],
            ),
          );
        },
      );
      if (option == 'gallery') {
        if (maxImages == 1) {
          final pickedFile =
              await picker.pickImage(source: ImageSource.gallery);
          return _processFiles(pickedFile != null ? [pickedFile.path] : []);
        }
        final pickedFiles = await picker.pickMultiImage(
          limit: maxImages,
        );
        return _processFiles(pickedFiles.map((file) => file.path).toList());
      } else if (option == 'camera') {
        final pickedFile = await picker.pickImage(source: ImageSource.camera);
        return _processFiles(pickedFile != null ? [pickedFile.path] : []);
      }
    } finally {
      _isFilePickerActive = false; // Reset state
    }

    return [];
  }

  static Future<List<String?>> _processFiles(List<String> filePaths) async {
    final List<String?> filteredPaths = [];
    for (var filePath in filePaths) {
      final file = File(filePath);
      final fileSizeInBytes = await file.length();
      final fileSizeInMB =
          fileSizeInBytes / (1024 * 1024); // Convert bytes to MB

      if (fileSizeInMB <= 5) {
        // Check if file is 5 MB or smaller
        filteredPaths.add(filePath);
      } else {
        ToastManager.showError('File size should be less than 5 MB');
      }
    }
    return filteredPaths;
  }

  // static pickImageFromGallery({
  //   bool isMultiPick = false,
  // }) async {
  //   if (isMultiPick) {
  //     final result = await ImagePicker().pickMultiImage(
  //       imageQuality: 100,
  //     );
  //     if (result.isNotEmpty) {
  //       return result.map((e) => e.path).toList();
  //     }
  //   } else {
  //     final result = await ImagePicker().pickImage(
  //       source: ImageSource.gallery,
  //       imageQuality: 100,
  //     );

  //     if (result != null) {
  //       return result.path;
  //     }
  //   }
  // }

  static calculateFrom({required DateTime start}) {
    final difference = start.difference(DateTime.now());
    int days = difference.inDays.abs();
    int hours = difference.inHours % 24;
    int minutes = difference.inMinutes % 60;
    bool isArabic = Get.locale?.languageCode == 'ar';
    if (days > 0) {
      return isArabic ? "منذ $days يوم" : "$days days ago";
    } else if (hours > 0) {
      return isArabic ? "منذ $hours ساعة" : "$hours hours ago";
    } else {
      return isArabic ? "منذ $minutes دقيقة" : "$minutes minutes ago";
    }
  }

  static Widget networkLoadingImageHandler(
      BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
    if (loadingProgress == null) return child;
    return Center(
      child: CircularProgressIndicator(
        value: loadingProgress.expectedTotalBytes != null
            ? loadingProgress.cumulativeBytesLoaded /
                loadingProgress.expectedTotalBytes!
            : null,
      ),
    );
  }

  static pay() {
    showModalBottomSheet(
        context: Get.context!,
        builder: (context) => const Scaffold(),
        isScrollControlled: false,
        backgroundColor: AppColors.whiteColor,
        showDragHandle: true);
  }

  String dateFormat(DateTime data) {
    DateFormat formatter = DateFormat('yyyy-MM-dd');
    String formattedDate = formatter.format(data);
    return formattedDate;
  }
}
