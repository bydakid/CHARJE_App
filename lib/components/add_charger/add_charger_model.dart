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

class AddChargerModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for chargername widget.
  TextEditingController? chargernameController;
  String? Function(BuildContext, String?)? chargernameControllerValidator;
  // State field(s) for typecharger widget.
  String? typechargerValue;
  // State field(s) for connector widget.
  String? connectorValue;
  // State field(s) for kw widget.
  String? kwValue;
  // State field(s) for PlacePicker widget.
  var placePickerValue = FFPlace();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    chargernameController?.dispose();
  }

  /// Additional helper methods are added here.

}
