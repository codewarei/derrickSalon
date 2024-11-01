import '/components/nav_back_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'booking_braiding_widget.dart' show BookingBraidingWidget;
import 'package:flutter/material.dart';

class BookingBraidingModel extends FlutterFlowModel<BookingBraidingWidget> {
  ///  Local state fields for this page.

  DateTime? start;

  ///  State fields for stateful widgets in this page.

  // Model for NavBack component.
  late NavBackModel navBackModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

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
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
