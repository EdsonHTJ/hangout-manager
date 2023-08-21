import 'package:billmanager/components/editabletext.dart';
import 'package:billmanager/shared/models/hangout.dart';
import 'package:billmanager/shared/theme/theme.dart';
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
  Hangout hangout = Hangout("");

  @override
  Widget build(BuildContext context) {
    hangout = ModalRoute.of(context)!.settings.arguments as Hangout;

    var title = 'Adicionar Role';
    if (hangout.name != "") {
      title = 'Editar Role';
      _nameController.text = hangout.name;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: const TextStyle(fontSize: 30)),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
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
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
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
            const SizedBox(height: 20),
            const Placeholder(
              fallbackHeight: 100,
              fallbackWidth: 200,
            ),
            const SizedBox(height: 20),
            Text("Participantes:", style: appTheme.textTheme.bodyLarge),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
