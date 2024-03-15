import '/flutter_flow/flutter_flow_util.dart';
import 'register_screen_one_widget.dart' show RegisterScreenOneWidget;
import 'package:flutter/material.dart';

class RegisterScreenOneModel extends FlutterFlowModel<RegisterScreenOneWidget> {
  ///  Local state fields for this page.

  bool ativarbotao = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Email_Register widget.
  FocusNode? emailRegisterFocusNode;
  TextEditingController? emailRegisterController;
  String? Function(BuildContext, String?)? emailRegisterControllerValidator;
  // State field(s) for Password_Register widget.
  FocusNode? passwordRegisterFocusNode;
  TextEditingController? passwordRegisterController;
  late bool passwordRegisterVisibility;
  String? Function(BuildContext, String?)? passwordRegisterControllerValidator;
  // State field(s) for RepPassword_Register widget.
  FocusNode? repPasswordRegisterFocusNode;
  TextEditingController? repPasswordRegisterController;
  late bool repPasswordRegisterVisibility;
  String? Function(BuildContext, String?)?
      repPasswordRegisterControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordRegisterVisibility = false;
    repPasswordRegisterVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailRegisterFocusNode?.dispose();
    emailRegisterController?.dispose();

    passwordRegisterFocusNode?.dispose();
    passwordRegisterController?.dispose();

    repPasswordRegisterFocusNode?.dispose();
    repPasswordRegisterController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
