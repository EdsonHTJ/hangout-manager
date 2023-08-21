import 'package:billmanager/components/editabletext.dart';
import 'package:flutter/material.dart';

class AddHangoutScreen extends StatefulWidget {
  const AddHangoutScreen({Key? key}) : super(key: key);

  @override
  State<AddHangoutScreen> createState() => _AddHangoutScreenState();
}

class _AddHangoutScreenState extends State<AddHangoutScreen> {
  final TextEditingController _nameController =
      TextEditingController(text: "Novo role");
  bool _isEditable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar role', style: TextStyle(fontSize: 30)),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                EditableTextWidget(
                  isEditable: _isEditable,
                  text: _nameController,
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _isEditable = !_isEditable;
                    });
                  },
                  icon: Icon(
                    _isEditable ? Icons.check : Icons.edit,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
