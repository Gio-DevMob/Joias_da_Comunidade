import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_screen_widget.dart' show HomeScreenWidget;
import 'package:flutter/material.dart';

class HomeScreenModel extends FlutterFlowModel<HomeScreenWidget> {
  ///  Local state fields for this page.

  String? userProfileImg;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField_Home widget.
  FocusNode? textFieldHomeFocusNode;
  TextEditingController? textFieldHomeController;
  String? Function(BuildContext, String?)? textFieldHomeControllerValidator;
  // State field(s) for Categorias_Home widget.
  String? categoriasHomeValue;
  FormFieldController<String>? categoriasHomeValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldHomeFocusNode?.dispose();
    textFieldHomeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
