import '/flutter_flow/flutter_flow_util.dart';
import 'support_screen_widget.dart' show SupportScreenWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SupportScreenModel extends FlutterFlowModel<SupportScreenWidget> {
  ///  Local state fields for this page.

  bool ativarbotao = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Name_Field widget.
  FocusNode? nameFieldFocusNode;
  TextEditingController? nameFieldController;
  String? Function(BuildContext, String?)? nameFieldControllerValidator;
  // State field(s) for Email_Field widget.
  FocusNode? emailFieldFocusNode;
  TextEditingController? emailFieldController;
  final emailFieldMask = MaskTextInputFormatter(mask: '##.###-###');
  String? Function(BuildContext, String?)? emailFieldControllerValidator;
  // State field(s) for Problema_Field widget.
  FocusNode? problemaFieldFocusNode;
  TextEditingController? problemaFieldController;
  String? Function(BuildContext, String?)? problemaFieldControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFieldFocusNode?.dispose();
    nameFieldController?.dispose();

    emailFieldFocusNode?.dispose();
    emailFieldController?.dispose();

    problemaFieldFocusNode?.dispose();
    problemaFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
