import 'package:flutter/material.dart';

class MySetting extends StatefulWidget {
  const MySetting({super.key});

  @override
  State<MySetting> createState() => _MySettingState();
}

class _MySettingState extends State<MySetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const ListTile(
              leading: Icon(Icons.color_lens),
              title: Text("Color"),
              trailing: Icon(Icons.arrow_forward_ios),
            );
          }),
    );
  }
}
