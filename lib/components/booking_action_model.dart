import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/stripe/payment_manager.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'booking_action_widget.dart' show BookingActionWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookingActionModel extends FlutterFlowModel<BookingActionWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for type widget.
  FormFieldController<String>? typeValueController;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for AdditionalInfo widget.
  FocusNode? additionalInfoFocusNode;
  TextEditingController? additionalInfoTextController;
  String? Function(BuildContext, String?)?
      additionalInfoTextControllerValidator;
  // Stores action output result for [Stripe Payment] action in Button widget.
  String? paymentId;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    additionalInfoFocusNode?.dispose();
    additionalInfoTextController?.dispose();
  }

  /// Additional helper methods.
  String? get typeValue => typeValueController?.value;
  String? get radioButtonValue => radioButtonValueController?.value;
}
