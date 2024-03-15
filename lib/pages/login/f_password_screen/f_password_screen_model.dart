import '/flutter_flow/flutter_flow_util.dart';
import 'f_password_screen_widget.dart' show FPasswordScreenWidget;
import 'package:flutter/material.dart';

class FPasswordScreenModel extends FlutterFlowModel<FPasswordScreenWidget> {
  ///  Local state fields for this page.

  bool ativarbotao = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Email_Password widget.
  FocusNode? emailPasswordFocusNode;
  TextEditingController? emailPasswordController;
  String? Function(BuildContext, String?)? emailPasswordControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    emailPasswordFocusNode?.dispose();
    emailPasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
