import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'charger_info_model.dart';
export 'charger_info_model.dart';

class ChargerInfoWidget extends StatefulWidget {
  const ChargerInfoWidget({
    Key? key,
    this.location,
    this.feedback,
  }) : super(key: key);

  final MapRecord? location;
  final ChargerfeedbackRecord? feedback;

  @override
  _ChargerInfoWidgetState createState() => _ChargerInfoWidgetState();
}

class _ChargerInfoWidgetState extends State<ChargerInfoWidget> {
  late ChargerInfoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChargerInfoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ChargerfeedbackRecord>>(
      stream: queryChargerfeedbackRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<ChargerfeedbackRecord> containerChargerfeedbackRecordList =
            snapshot.data!;
        return Material(
          color: Colors.transparent,
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          child: Container(
            width: double.infinity,
            height: 370.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
              shape: BoxShape.rectangle,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            widget.location!.name!
                                .maybeHandleOverflow(maxChars: 15),
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                widget.location!.type!,
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: FaIcon(
                                FontAwesomeIcons.bolt,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            widget.location!.connector!,
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: FaIcon(
                            FontAwesomeIcons.plug,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 40.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            widget.location!.kW!,
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: FaIcon(
                            FontAwesomeIcons.solidClock,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 3.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 4.0, 12.0, 4.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: AutoSizeText(
                                    widget.location!.adress!
                                        .maybeHandleOverflow(
                                      maxChars: 20,
                                      replacement: '…',
                                    ),
                                    textAlign: TextAlign.start,
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 30.0,
                                    borderWidth: 1.0,
                                    buttonSize: 40.0,
                                    icon: Icon(
                                      Icons.content_copy,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 18.0,
                                    ),
                                    onPressed: () async {
                                      await Clipboard.setData(ClipboardData(
                                          text: widget.location!.adress!));
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 3.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 4.0, 12.0, 4.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: AutoSizeText(
                                  widget.location!.location!
                                      .toString()
                                      .maybeHandleOverflow(
                                        maxChars: 25,
                                        replacement: '…',
                                      ),
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  icon: Icon(
                                    Icons.content_copy,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 18.0,
                                  ),
                                  onPressed: () async {
                                    await Clipboard.setData(ClipboardData(
                                        text: widget.location!.location!
                                            .toString()));
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 24.0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0x0039D277),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 5.0,
                                      color: Color(0x4E000000),
                                      offset: Offset(0.0, 2.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                    color: Color(0x0059AA7A),
                                    width: 2.0,
                                  ),
                                ),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed(
                                      'feedback',
                                      queryParams: {
                                        'map': serializeParam(
                                          widget.location,
                                          ParamType.Document,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        'map': widget.location,
                                      },
                                    );
                                  },
                                  text: 'Review',
                                  options: FFButtonOptions(
                                    width: 150.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                    borderSide: BorderSide(
                                      color: Color(0x00CF6464),
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 24.0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0x0039D277),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 6.0,
                                      color: Color(0x4E000000),
                                      offset: Offset(0.0, 2.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                    color: Color(0x0059AA7A),
                                    width: 2.0,
                                  ),
                                ),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'Waze',
                                  options: FFButtonOptions(
                                    width: 150.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFF399CD2),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                    borderSide: BorderSide(
                                      color: Color(0x006AAED2),
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0x0039D277),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 6.0,
                                color: Color(0x4E000000),
                                offset: Offset(0.0, 2.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              color: Color(0x0059AA7A),
                              width: 2.0,
                            ),
                          ),
                          child: FFButtonWidget(
                            onPressed: () async {
                              final deleteChargerCreateData =
                                  createDeleteChargerRecordData(
                                location: widget.location!.location,
                                name: valueOrDefault<String>(
                                  widget.location!.name,
                                  'Unknown',
                                ),
                                address: valueOrDefault<String>(
                                  widget.location!.adress,
                                  'Unknown',
                                ),
                              );
                              await DeleteChargerRecord.collection
                                  .doc()
                                  .set(deleteChargerCreateData);

                              context.pushNamed('charjefinder');
                            },
                            text: 'Report Wrong Location',
                            options: FFButtonOptions(
                              width: 330.0,
                              height: 60.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).grayIcon,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontWeight: FontWeight.w500,
                                  ),
                              borderSide: BorderSide(
                                color: Color(0x006AAED2),
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
