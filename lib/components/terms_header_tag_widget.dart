import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'terms_header_tag_model.dart';
export 'terms_header_tag_model.dart';

class TermsHeaderTagWidget extends StatefulWidget {
  const TermsHeaderTagWidget({super.key});

  @override
  State<TermsHeaderTagWidget> createState() => _TermsHeaderTagWidgetState();
}

class _TermsHeaderTagWidgetState extends State<TermsHeaderTagWidget> {
  late TermsHeaderTagModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsHeaderTagModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 7.0,
              color: Color(0x2F1D2429),
              offset: Offset(0.0, 3.0),
            )
          ],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(6.0, 6.0, 6.0, 6.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Termo de Uso e Política de Privacidade',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Roboto',
                              color: FlutterFlowTheme.of(context).secondary,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 25.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 14.0,
                  thickness: 2.0,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(6.0, 6.0, 6.0, 0.0),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ex dolor, finibus a orci ut, posuere convallis tortor. Aliquam luctus erat ut arcu consequat ullamcorper. Cras scelerisque sagittis tortor ac fermentum. Donec sed purus ut quam condimentum rutrum. Vivamus mollis feugiat ligula quis volutpat. Vivamus sit amet malesuada nulla, vitae volutpat nisl. Morbi id elit elementum, iaculis magna quis, vulputate ante. In condimentum urna vel vulputate convallis. Duis dictum lectus nibh, at finibus nisl tempus sed. Maecenas semper ac libero sit amet molestie. Fusce nec viverra lacus. Nunc vitae mollis lorem. Donec eu ligula justo. Fusce faucibus velit in nunc ullamcorper suscipit.\n\nNullam posuere justo et placerat lobortis. Aliquam a felis nec ipsum malesuada condimentum non at mi. Fusce vitae dapibus risus. Cras porta, quam vitae tempus imperdiet, odio quam eleifend lorem, hendrerit fringilla magna sem tempus mi. Aenean sit amet ipsum rutrum, rhoncus mauris in, interdum ex. Ut commodo tincidunt lectus, eget hendrerit urna consequat et. Integer pulvinar nulla ut eros rutrum ultrices. Fusce vel leo viverra, vestibulum mi non, semper felis. Nam libero enim, pulvinar eu euismod a, convallis ac metus. Sed mollis, ipsum sed fermentum molestie, massa diam ullamcorper sem, in mattis magna leo sed risus.',
                    textAlign: TextAlign.justify,
                    style: FlutterFlowTheme.of(context).labelMedium,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
