import '/backend/backend.dart';
import '/components/add_charger/add_charger_widget.dart';
import '/components/charger_info/charger_info_widget.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'charjefinder_model.dart';
export 'charjefinder_model.dart';

class CharjefinderWidget extends StatefulWidget {
  const CharjefinderWidget({Key? key}) : super(key: key);

  @override
  _CharjefinderWidgetState createState() => _CharjefinderWidgetState();
}

class _CharjefinderWidgetState extends State<CharjefinderWidget> {
  late CharjefinderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CharjefinderModel());

    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(
              color: FlutterFlowTheme.of(context).primaryColor,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      appBar: isiOS
          ? PreferredSize(
              preferredSize: Size.fromHeight(0.0),
              child: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primaryColor,
                automaticallyImplyLeading: false,
                actions: [],
                centerTitle: false,
                elevation: 2.0,
              ),
            )
          : null,
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: StreamBuilder<List<MapRecord>>(
              stream: queryMapRecord(),
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
                List<MapRecord> googleMapMapRecordList = snapshot.data!;
                return FlutterFlowGoogleMap(
                  controller: _model.googleMapsController,
                  onCameraIdle: (latLng) =>
                      setState(() => _model.googleMapsCenter = latLng),
                  initialLocation: _model.googleMapsCenter ??=
                      currentUserLocationValue!,
                  markers: googleMapMapRecordList
                      .map(
                        (googleMapMapRecord) => FlutterFlowMarker(
                          googleMapMapRecord.reference.path,
                          googleMapMapRecord.location!,
                          () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: ChargerInfoWidget(
                                    location: googleMapMapRecord,
                                  ),
                                );
                              },
                            ).then((value) => setState(() {}));
                          },
                        ),
                      )
                      .toList(),
                  markerColor: GoogleMarkerColor.green,
                  mapType: MapType.normal,
                  style: GoogleMapStyle.silver,
                  initialZoom: 16.0,
                  allowInteraction: true,
                  allowZoom: true,
                  showZoomControls: false,
                  showLocation: true,
                  showCompass: false,
                  showMapToolbar: false,
                  showTraffic: false,
                  centerMapOnMarkerTap: true,
                );
              },
            ),
          ),
          if (isAndroid &&
              responsiveVisibility(
                context: context,
                desktop: false,
              ))
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: FlutterFlowAdBanner(
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * 0.05,
                showsTestAd: true,
                iOSAdUnitID: 'ca-app-pub-9163439354690685/5945830746',
                androidAdUnitID: 'ca-app-pub-9163439354690685/1124748903',
              ),
            ),
          if (isiOS &&
              responsiveVisibility(
                context: context,
                desktop: false,
              ))
            Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: FlutterFlowAdBanner(
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * 0.05,
                showsTestAd: true,
                iOSAdUnitID: 'ca-app-pub-9163439354690685/5945830746',
                androidAdUnitID: 'ca-app-pub-9163439354690685/1124748903',
              ),
            ),
          if (isiOS)
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 80.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Material(
                            color: Colors.transparent,
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.13,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 15.0,
                                    color: Color(0x4E000000),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                  color: Color(0x00FFFFFF),
                                ),
                              ),
                              child: FlutterFlowIconButton(
                                borderColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: 30.0,
                                borderWidth: 2.0,
                                buttonSize: 40.0,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                icon: Icon(
                                  Icons.menu_outlined,
                                  color: FlutterFlowTheme.of(context).grayIcon,
                                  size: 20.0,
                                ),
                                onPressed: () async {
                                  context.pushNamed(
                                    'menu',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.leftToRight,
                                        duration: Duration(milliseconds: 200),
                                      ),
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.55,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 5.0,
                                    color: Color(0x4E000000),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                  color: Color(0x00FFFFFF),
                                ),
                              ),
                              child: FlutterFlowPlacePicker(
                                iOSGoogleMapsApiKey:
                                    'AIzaSyB9w3qZ99e7xNJEsj5pBxJ8wyhgg4mFx74',
                                androidGoogleMapsApiKey:
                                    'AIzaSyAVeyj_glEl2pg4cXLvJfgwg0dgZoiN5I4',
                                webGoogleMapsApiKey:
                                    'AIzaSyAnH-JcVsGRm4XgZOjWMZb8MiE4MzEsjn0',
                                onSelect: (place) async {
                                  setState(
                                      () => _model.placePickerValue1 = place);
                                },
                                defaultText: 'Location',
                                icon: FaIcon(
                                  FontAwesomeIcons.mapMarkedAlt,
                                  color: FlutterFlowTheme.of(context).grayIcon,
                                  size: 16.0,
                                ),
                                buttonOptions: FFButtonOptions(
                                  width: 200.0,
                                  height: 40.0,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .grayIcon,
                                      ),
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.9, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Material(
                                  color: Colors.transparent,
                                  elevation: 0.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.13,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 5.0,
                                          color: Color(0x4E000000),
                                          offset: Offset(0.0, 2.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(20.0),
                                      border: Border.all(
                                        color: Color(0x00FFFFFF),
                                      ),
                                    ),
                                    child: FlutterFlowIconButton(
                                      borderColor: Color(0xFFD17171),
                                      borderRadius: 30.0,
                                      borderWidth: 2.0,
                                      buttonSize: 60.0,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      icon: FaIcon(
                                        FontAwesomeIcons.search,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        size: 20.0,
                                      ),
                                      onPressed: () async {
                                        await _model.googleMapsController.future
                                            .then(
                                          (c) => c.animateCamera(
                                            CameraUpdate.newLatLng(_model
                                                .placePickerValue1.latLng
                                                .toGoogleMaps()),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 0.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.13,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 5.0,
                                            color: Color(0x4E000000),
                                            offset: Offset(0.0, 2.0),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        border: Border.all(
                                          color: Color(0x00FFFFFF),
                                        ),
                                      ),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30.0,
                                        borderWidth: 2.0,
                                        buttonSize: 40.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                        icon: Icon(
                                          Icons.add_location_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          size: 20.0,
                                        ),
                                        onPressed: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return Padding(
                                                padding: MediaQuery.of(context)
                                                    .viewInsets,
                                                child: AddChargerWidget(),
                                              );
                                            },
                                          ).then((value) => setState(() {}));
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          if (isAndroid)
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 80.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (isAndroid)
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Material(
                              color: Colors.transparent,
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.13,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 15.0,
                                      color: Color(0x4E000000),
                                      offset: Offset(0.0, 2.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                    color: Color(0x00FFFFFF),
                                  ),
                                ),
                                child: FlutterFlowIconButton(
                                  borderColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: 30.0,
                                  borderWidth: 2.0,
                                  buttonSize: 40.0,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  icon: Icon(
                                    Icons.menu_outlined,
                                    color:
                                        FlutterFlowTheme.of(context).grayIcon,
                                    size: 20.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed(
                                      'menu',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.leftToRight,
                                          duration: Duration(milliseconds: 200),
                                        ),
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                            Material(
                              color: Colors.transparent,
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.55,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 5.0,
                                      color: Color(0x4E000000),
                                      offset: Offset(0.0, 2.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                    color: Color(0x00FFFFFF),
                                  ),
                                ),
                                child: FlutterFlowPlacePicker(
                                  iOSGoogleMapsApiKey:
                                      'AIzaSyB9w3qZ99e7xNJEsj5pBxJ8wyhgg4mFx74',
                                  androidGoogleMapsApiKey:
                                      'AIzaSyAVeyj_glEl2pg4cXLvJfgwg0dgZoiN5I4',
                                  webGoogleMapsApiKey:
                                      'AIzaSyAnH-JcVsGRm4XgZOjWMZb8MiE4MzEsjn0',
                                  onSelect: (place) async {
                                    setState(
                                        () => _model.placePickerValue2 = place);
                                  },
                                  defaultText: 'Location',
                                  icon: FaIcon(
                                    FontAwesomeIcons.mapMarkedAlt,
                                    color:
                                        FlutterFlowTheme.of(context).grayIcon,
                                    size: 16.0,
                                  ),
                                  buttonOptions: FFButtonOptions(
                                    width: 200.0,
                                    height: 40.0,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .grayIcon,
                                        ),
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.9, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 20.0),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.13,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 5.0,
                                              color: Color(0x4E000000),
                                              offset: Offset(0.0, 2.0),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          border: Border.all(
                                            color: Color(0x00FFFFFF),
                                          ),
                                        ),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30.0,
                                          borderWidth: 2.0,
                                          buttonSize: 40.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiaryColor,
                                          icon: Icon(
                                            Icons.add_location_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            size: 20.0,
                                          ),
                                          onPressed: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return Padding(
                                                  padding:
                                                      MediaQuery.of(context)
                                                          .viewInsets,
                                                  child: AddChargerWidget(),
                                                );
                                              },
                                            ).then((value) => setState(() {}));
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 0.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.13,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 5.0,
                                            color: Color(0x4E000000),
                                            offset: Offset(0.0, 2.0),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        border: Border.all(
                                          color: Color(0x00FFFFFF),
                                        ),
                                      ),
                                      child: FlutterFlowIconButton(
                                        borderColor: Color(0xFFD17171),
                                        borderRadius: 30.0,
                                        borderWidth: 2.0,
                                        buttonSize: 60.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        icon: FaIcon(
                                          FontAwesomeIcons.search,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          size: 20.0,
                                        ),
                                        onPressed: () async {
                                          await _model
                                              .googleMapsController.future
                                              .then(
                                            (c) => c.animateCamera(
                                              CameraUpdate.newLatLng(_model
                                                  .placePickerValue2.latLng
                                                  .toGoogleMaps()),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
