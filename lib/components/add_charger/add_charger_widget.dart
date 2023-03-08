import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_charger_model.dart';
export 'add_charger_model.dart';

class AddChargerWidget extends StatefulWidget {
  const AddChargerWidget({
    Key? key,
    this.addCharger,
  }) : super(key: key);

  final MapRecord? addCharger;

  @override
  _AddChargerWidgetState createState() => _AddChargerWidgetState();
}

class _AddChargerWidgetState extends State<AddChargerWidget> {
  late AddChargerModel _model;

  LatLng? currentUserLocationValue;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddChargerModel());

    _model.chargernameController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: Text(
                    'Add Charger',
                    style: FlutterFlowTheme.of(context).title3,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextFormField(
                      controller: _model.chargernameController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        labelStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                        hintStyle: FlutterFlowTheme.of(context).subtitle1,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 3.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 3.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 3.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 3.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 4.0, 12.0, 4.0),
                      ),
                      style: FlutterFlowTheme.of(context).subtitle1,
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.multiline,
                      validator: _model.chargernameControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: FlutterFlowDropDown<String>(
                    options: ['AC', 'DC'],
                    onChanged: (val) =>
                        setState(() => _model.typechargerValue = val),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 50.0,
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                    hintText: 'Type',
                    fillColor: Colors.white,
                    elevation: 2.0,
                    borderColor: FlutterFlowTheme.of(context).primaryBackground,
                    borderWidth: 3.0,
                    borderRadius: 20.0,
                    margin:
                        EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                    hidesUnderline: true,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: FlutterFlowDropDown<String>(
                    options: [
                      'J1772',
                      'Mennekes',
                      'CCS1',
                      'CCS2',
                      'CHAdeMO',
                      'Tesla'
                    ],
                    onChanged: (val) =>
                        setState(() => _model.connectorValue = val),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 50.0,
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                    hintText: 'Connector',
                    fillColor: Colors.white,
                    elevation: 2.0,
                    borderColor: FlutterFlowTheme.of(context).primaryBackground,
                    borderWidth: 3.0,
                    borderRadius: 20.0,
                    margin:
                        EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                    hidesUnderline: true,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                  child: FlutterFlowDropDown<String>(
                    options: [
                      '3.3 kW',
                      '6.6 kW',
                      '7.2 kW',
                      '7.7 kW',
                      '11 kW',
                      '22 kW',
                      '50 kW',
                      '62.5 kW',
                      '100 kW',
                      '150 kW',
                      '350 kW'
                    ],
                    onChanged: (val) => setState(() => _model.kwValue = val),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 50.0,
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                    hintText: 'Power',
                    fillColor: Colors.white,
                    elevation: 2.0,
                    borderColor: FlutterFlowTheme.of(context).primaryBackground,
                    borderWidth: 3.0,
                    borderRadius: 20.0,
                    margin:
                        EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                    hidesUnderline: true,
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterFlowPlacePicker(
                    iOSGoogleMapsApiKey:
                        'AIzaSyB9w3qZ99e7xNJEsj5pBxJ8wyhgg4mFx74',
                    androidGoogleMapsApiKey:
                        'AIzaSyAVeyj_glEl2pg4cXLvJfgwg0dgZoiN5I4',
                    webGoogleMapsApiKey:
                        'AIzaSyAnH-JcVsGRm4XgZOjWMZb8MiE4MzEsjn0',
                    onSelect: (place) async {
                      setState(() => _model.placePickerValue = place);
                    },
                    defaultText: 'Select Location',
                    icon: Icon(
                      Icons.place,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 20.0,
                    ),
                    buttonOptions: FFButtonOptions(
                      width: 300.0,
                      height: 50.0,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      textStyle: FlutterFlowTheme.of(context).subtitle1,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        width: 3.0,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 24.0, 15.0, 0.0),
                      child: Text(
                        'PLEASE only add a charger when standing next to it to ensure accurate location data',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primaryColor,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 50.0,
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
                              currentUserLocationValue =
                                  await getCurrentUserLocation(
                                      defaultLocation: LatLng(0.0, 0.0));

                              final mapCreateData = createMapRecordData(
                                createdAt: getCurrentTimestamp,
                                location: currentUserLocationValue,
                                name: valueOrDefault<String>(
                                  _model.chargernameController.text,
                                  'Unknown',
                                ),
                                type: valueOrDefault<String>(
                                  _model.typechargerValue,
                                  'Unknown',
                                ),
                                adress: valueOrDefault<String>(
                                  _model.placePickerValue.address,
                                  'Coming Soon',
                                ),
                                connector: valueOrDefault<String>(
                                  _model.connectorValue,
                                  'Unknown',
                                ),
                                kW: valueOrDefault<String>(
                                  _model.kwValue,
                                  'Unknown',
                                ),
                              );
                              await MapRecord.collection
                                  .doc()
                                  .set(mapCreateData);

                              context.pushNamed('charjefinder');
                            },
                            text: 'ADD',
                            options: FFButtonOptions(
                              width: 150.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Color(0xFF6CCF94),
                                width: 2.0,
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
            ],
          ),
        ),
      ),
    );
  }
}
