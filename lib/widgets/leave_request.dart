import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../providers/leaves.dart';
// import '../pages/edit_product_page.dart';

class LeaveRequest extends StatelessWidget {
  String id_peminta;
  //     id_pengganti,
  //     id_depthead,
  //     id_hrd,
  //     status_staff,
  //     status_depthead,
  //     status_hrd;
  int id;
  String type_ijin, leave_reason;

  // final DateTime updatedAt;

  LeaveRequest(
    this.id,
    this.id_peminta,
    // this.id_pengganti,
    // this.id_depthead,
    // this.id_hrd,
    // this.status_staff,
    // this.status_depthead,
    // this.status_hrd,
    this.type_ijin,
    // this.start_date,
    // this.end_date,
    this.leave_reason,
    // this.reject,
    // this.updatedAt,
  );

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<Leaves>(context, listen: false);
    // String date = DateFormat.yMMMd().add_Hms().format(updatedAt);
    return ListTile(
      onTap: () {
        //ini edit product
        // Navigator.pushNamed(context, EditProductPage.route, arguments: id);
      },
      leading: CircleAvatar(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: FittedBox(
            child: Text("$id_peminta"),
          ),
        ),
      ),
      title: Text("$type_ijin"),
      subtitle: Text("Reason to leave : $leave_reason"),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          //harusny variabel id
          // prov.deleteProduct("1");
        },
      ),
    );
  }
}
