import '/auth/firebase_auth/auth_util.dart';
import '/backend/stripe/payment_manager.dart';
import '/components/nav_back_widget.dart';
import '/components/success_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'my_cart_widget.dart' show MyCartWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class MyCartModel extends FlutterFlowModel<MyCartWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavBack component.
  late NavBackModel navBackModel;
  // Stores action output result for [Stripe Payment] action in Button widget.
  String? paymentId;

  @override
  void initState(BuildContext context) {
    navBackModel = createModel(context, () => NavBackModel());
  }

  @override
  void dispose() {
    navBackModel.dispose();
  }
}
