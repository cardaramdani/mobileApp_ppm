import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../providers/leaves.dart';
// import '../pages/edit_product_page.dart';

class LeaveRequest extends StatelessWidget {
  final String id,
      id_peminta,
      id_pengganti,
      id_depthead,
      id_hrd,
      status_staff,
      status_depthead,
      status_hrd,
      type_ijin,
      start_date,
      end_date,
      leave_reason,
      // updatedAt,
      reject;

  final DateTime updatedAt;

  LeaveRequest(
    this.id,
    this.id_peminta,
    this.id_pengganti,
    this.id_depthead,
    this.id_hrd,
    this.status_staff,
    this.status_depthead,
    this.status_hrd,
    this.type_ijin,
    this.start_date,
    this.end_date,
    this.leave_reason,
    this.reject,
    this.updatedAt,
  );

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<Leaves>(context, listen: false);
    String date = DateFormat.yMMMd().add_Hms().format(updatedAt);
    return ListTile(
      onTap: () {
        //ini edit product
        // Navigator.pushNamed(context, EditProductPage.route, arguments: id);
      },
      leading: CircleAvatar(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: FittedBox(
            child: Text("\$$type_ijin"),
          ),
        ),
      ),
      title: Text("$id_peminta"),
      subtitle: Text("Last Edited : $date"),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          // prov.deleteProduct(id);
        },
      ),
    );
  }
}
