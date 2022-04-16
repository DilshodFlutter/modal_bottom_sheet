import 'package:flutter/material.dart';
import 'package:gradient_ui_widgets/gradient_ui_widgets.dart';

class ModBotShet extends StatefulWidget {
  const ModBotShet({Key? key}) : super(key: key);

  @override
  State<ModBotShet> createState() => _ModBotShetState();
}

class _ModBotShetState extends State<ModBotShet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Column(
          children: [
            const Text(
              "Modal Bottom Sheet",
              style: TextStyle(color: Colors.black),
            ),
            Text("@DilshodFlutter",
                style: TextStyle(color: Colors.grey.shade600, fontSize: 16))
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          GradientElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              leading: const Icon(Icons.link),
                              title: const Text("Copy Link"),
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                            ListTile(
                              leading: const Icon(Icons.share),
                              title: const Text("Share"),
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                            Divider(
                              height: 1,
                              color: Colors.grey.shade400,
                            ),
                            ListTile(
                              leading: Icon(Icons.delete,
                                  color: Colors.red.shade500),
                              title: const Text("Remove from list"),
                              onTap: () {
                                Navigator.pop(context);
                                final snackBar = SnackBar(content: Text("Removed from list"),
                                action: SnackBarAction(label: "Undo", onPressed: (){

                                }));
                                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              },
                            ),
                          ],
                        ),
                      );
                    });
              },
              gradient: const LinearGradient(
                  colors: [Color(0xfff12711), Color(0xfff5af19)]),
              child: const Text("Show Bottom Sheet"))
        ]),
      ),
    );
  }
}
