import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './../done_module_provider.dart';

class DoneModuleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final doneModuleList =
        Provider.of<DoneModuleProvider>(context, listen: false)
            .detaildoneModuleList;

    // var delete = context.watch<DoneModuleList>();
    var delete = context.watch<DoneModuleProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Done Module List'),
      ),
      body: ListView.builder(
        itemCount: doneModuleList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(doneModuleList[index]),
            trailing: ElevatedButton(
              child: Text('Done'),
              onPressed: () {
                delete.removeOke(doneModuleList[index]);
              },
            ),
          );
        },
      ),
      //  Consumer<DoneModuleProvider>(
      //   builder: (context, DoneModuleProvider data, widget) {
      //     return Column(
      //       children: [
      //         Expanded(
      //           child: ListView.builder(
      //             itemCount: doneModuleList.length,
      //             itemBuilder: (context, index) {
      //               return ListTile(
      //                 title: Text(doneModuleList[index]),
      //                 trailing: ElevatedButton(
      //                   child: Text('Done'),
      //                   onPressed: () {
      //                     data.removeOke(doneModuleList[index]);
      //                   },
      //                 ),
      //               );
      //             },
      //           ),
      //         ),
      //       ],
      //     );
      //   },
      // ),
    );
  }
}
