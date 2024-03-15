import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'user_data_screen_widget.dart' show UserDataScreenWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class UserDataScreenModel extends FlutterFlowModel<UserDataScreenWidget> {
  ///  Local state fields for this page.

  bool ativarbotao = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Name_Field widget.
  FocusNode? nameFieldFocusNode1;
  TextEditingController? nameFieldController1;
  String? Function(BuildContext, String?)? nameFieldController1Validator;
  // State field(s) for Name_Field widget.
  FocusNode? nameFieldFocusNode2;
  TextEditingController? nameFieldController2;
  String? Function(BuildContext, String?)? nameFieldController2Validator;
  // State field(s) for Gender_DropDown widget.
  String? genderDropDownValue;
  FormFieldController<String>? genderDropDownValueController;
  // State field(s) for CEP_Field widget.
  FocusNode? cEPFieldFocusNode;
  TextEditingController? cEPFieldController;
  final cEPFieldMask = MaskTextInputFormatter(mask: '##.###-###');
  String? Function(BuildContext, String?)? cEPFieldControllerValidator;
  // State field(s) for Term2_Checkbox widget.
  bool? term2CheckboxValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFieldFocusNode1?.dispose();
    nameFieldController1?.dispose();

    nameFieldFocusNode2?.dispose();
    nameFieldController2?.dispose();

    cEPFieldFocusNode?.dispose();
    cEPFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
