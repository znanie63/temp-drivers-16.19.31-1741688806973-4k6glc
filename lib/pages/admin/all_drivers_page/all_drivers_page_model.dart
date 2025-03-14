import '/backend/supabase/supabase.dart';
import '/components/bottom_bar_admin_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'all_drivers_page_widget.dart' show AllDriversPageWidget;
import 'package:flutter/material.dart';

class AllDriversPageModel extends FlutterFlowModel<AllDriversPageWidget> {
  ///  Local state fields for this page.

  String? chosenFilter;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  Stream<List<UsersRow>>? containerSupabaseStream;
  // Model for BottomBarAdmin component.
  late BottomBarAdminModel bottomBarAdminModel;

  @override
  void initState(BuildContext context) {
    bottomBarAdminModel = createModel(context, () => BottomBarAdminModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    bottomBarAdminModel.dispose();
  }
}
