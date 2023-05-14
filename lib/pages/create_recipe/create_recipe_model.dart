import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

class CreateRecipeModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Title widget.
  TextEditingController? titleController;
  String? Function(BuildContext, String?)? titleControllerValidator;
  // State field(s) for Ingredients widget.
  TextEditingController? ingredientsController1;
  String? Function(BuildContext, String?)? ingredientsController1Validator;
  // State field(s) for Ingredients widget.
  TextEditingController? ingredientsController2;
  String? Function(BuildContext, String?)? ingredientsController2Validator;
  // State field(s) for Preparation widget.
  TextEditingController? preparationController;
  String? Function(BuildContext, String?)? preparationControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    titleController?.dispose();
    ingredientsController1?.dispose();
    ingredientsController2?.dispose();
    preparationController?.dispose();
  }

  /// Additional helper methods are added here.

}
