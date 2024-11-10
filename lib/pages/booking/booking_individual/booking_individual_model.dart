import '/components/nav_back_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'booking_individual_widget.dart' show BookingIndividualWidget;
import 'package:flutter/material.dart';

class BookingIndividualModel extends FlutterFlowModel<BookingIndividualWidget> {
  ///  Local state fields for this page.

  DateTime? start;

  ///  State fields for stateful widgets in this page.

  // Model for NavBack component.
  late NavBackModel navBackModel;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

  @override
  void initState(BuildContext context) {
    navBackModel = createModel(context, () => NavBackModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    navBackModel.dispose();
  }
}
