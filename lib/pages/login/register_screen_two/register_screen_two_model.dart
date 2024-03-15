import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'register_screen_two_widget.dart' show RegisterScreenTwoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegisterScreenTwoModel extends FlutterFlowModel<RegisterScreenTwoWidget> {
  ///  Local state fields for this page.

  bool ativarbotao = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Name_Register2 widget.
  FocusNode? nameRegister2FocusNode;
  TextEditingController? nameRegister2Controller;
  String? Function(BuildContext, String?)? nameRegister2ControllerValidator;
  // State field(s) for Age_Register2 widget.
  FocusNode? ageRegister2FocusNode;
  TextEditingController? ageRegister2Controller;
  final ageRegister2Mask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? ageRegister2ControllerValidator;
  // State field(s) for Gender_Register2 widget.
  String? genderRegister2Value;
  FormFieldController<String>? genderRegister2ValueController;
  // State field(s) for CPF_Register2 widget.
  FocusNode? cPFRegister2FocusNode;
  TextEditingController? cPFRegister2Controller;
  final cPFRegister2Mask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? cPFRegister2ControllerValidator;
  // State field(s) for CEP_Register2 widget.
  FocusNode? cEPRegister2FocusNode;
  TextEditingController? cEPRegister2Controller;
  final cEPRegister2Mask = MaskTextInputFormatter(mask: '##.###-###');
  String? Function(BuildContext, String?)? cEPRegister2ControllerValidator;
  // State field(s) for Checkbox_Register2 widget.
  bool? checkboxRegister2Value;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nameRegister2FocusNode?.dispose();
    nameRegister2Controller?.dispose();

    ageRegister2FocusNode?.dispose();
    ageRegister2Controller?.dispose();

    cPFRegister2FocusNode?.dispose();
    cPFRegister2Controller?.dispose();

    cEPRegister2FocusNode?.dispose();
    cEPRegister2Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
