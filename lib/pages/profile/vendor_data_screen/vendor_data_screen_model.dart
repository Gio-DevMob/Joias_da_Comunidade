import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'vendor_data_screen_widget.dart' show VendorDataScreenWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class VendorDataScreenModel extends FlutterFlowModel<VendorDataScreenWidget> {
  ///  Local state fields for this page.

  bool ativarbotao = true;

  String? imgLogoVendedor;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for WhatsApp_Field widget.
  FocusNode? whatsAppFieldFocusNode;
  TextEditingController? whatsAppFieldController;
  final whatsAppFieldMask = MaskTextInputFormatter(mask: '(##)#####-####');
  String? Function(BuildContext, String?)? whatsAppFieldControllerValidator;
  // State field(s) for URL_Field widget.
  FocusNode? uRLFieldFocusNode;
  TextEditingController? uRLFieldController;
  String? Function(BuildContext, String?)? uRLFieldControllerValidator;
  // State field(s) for Name_Field widget.
  FocusNode? nameFieldFocusNode;
  TextEditingController? nameFieldController;
  String? Function(BuildContext, String?)? nameFieldControllerValidator;
  // State field(s) for Categoria_DropDown widget.
  String? categoriaDropDownValue;
  FormFieldController<String>? categoriaDropDownValueController;
  // State field(s) for Servico widget.
  FocusNode? servicoFocusNode;
  TextEditingController? servicoController;
  String? Function(BuildContext, String?)? servicoControllerValidator;
  // State field(s) for Term3_Checkbox widget.
  bool? term3CheckboxValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    whatsAppFieldFocusNode?.dispose();
    whatsAppFieldController?.dispose();

    uRLFieldFocusNode?.dispose();
    uRLFieldController?.dispose();

    nameFieldFocusNode?.dispose();
    nameFieldController?.dispose();

    servicoFocusNode?.dispose();
    servicoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
