import '/components/book_appointment_widget.dart';
import '/components/nav_back_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'details_widget.dart' show DetailsWidget;
import 'package:flutter/material.dart';

class DetailsModel extends FlutterFlowModel<DetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavBack component.
  late NavBackModel navBackModel;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // Model for bookAppointment component.
  late BookAppointmentModel bookAppointmentModel;

  @override
  void initState(BuildContext context) {
    navBackModel = createModel(context, () => NavBackModel());
    bookAppointmentModel = createModel(context, () => BookAppointmentModel());
  }

  @override
  void dispose() {
    navBackModel.dispose();
    bookAppointmentModel.dispose();
  }
}
