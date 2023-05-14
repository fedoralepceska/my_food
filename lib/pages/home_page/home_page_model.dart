import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Search widget.
  TextEditingController? searchController;
  String? Function(BuildContext, String?)? searchControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    searchController?.dispose();
  }

  /// Additional helper methods are added here.

}
