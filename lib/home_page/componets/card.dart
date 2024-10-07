import 'package:flutter/material.dart';
import 'package:student_data/app_data/app_data.dart';
import 'editing_alert_dialog.dart';
import 'list_tile.dart';

Widget card({
  required int index,
  required BuildContext context,
  required TextEditingController e,
  required Function function,
  required Function fun,
}) {
  return Card(
    child: listTile(
      tap: () {
        index = AppData.instance.student_name.indexOf(e);
        showDialog(
          context: context,
          builder: (context) {
            return editingDialogBox(index: index, context: context);
          },
        ).then((value) => fun);
      },
      index: index,
      pressed: () {
        index = AppData.instance.student_name.indexOf(e);
        function();
      },
      e: e,
    ),
  );
}