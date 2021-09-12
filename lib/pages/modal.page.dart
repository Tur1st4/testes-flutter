import 'package:flutter/material.dart';

class ModalPage extends StatelessWidget {
  static const routeName = '/modal';
  const ModalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modal'),
      ),
      body: Container(
        child: Center(
          child: TextButton(
            child: Text('Modal'),
            onPressed: () => showModal(context),
          ),
        ),
      ),
    );
  }

  showModal(context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      builder: (BuildContext bc) {
        return Container(
          child: Wrap(
            children: <Widget>[
              ListTile(
                  leading: new Icon(Icons.music_note),
                  title: new Text('Músicas'),
                  onTap: () => {}),
              ListTile(
                leading: new Icon(Icons.videocam),
                title: new Text('Videos'),
                onTap: () => {},
              ),
              ListTile(
                leading: new Icon(Icons.satellite),
                title: new Text('Tempo'),
                onTap: () => {},
              ),
            ],
          ),
        );
      },
    );
  }
}
