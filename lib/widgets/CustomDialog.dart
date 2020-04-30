import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/contribution_provider.dart';

class CustomDialog extends StatefulWidget {
  const CustomDialog({Key key}) : super(key: key);

  @override
  _CustomDialogState createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  bool edit;

  TextEditingController _titleController = TextEditingController();
  TextEditingController _controllerPcs = TextEditingController();
  TextEditingController _controllerPerson = TextEditingController();

  Color _colorTextButtom = Colors.green;
  Color _colorContainer = Colors.green[400];

  void _saveContributor() {
    if (_titleController.text.isEmpty) {
      return;
    }
    Provider.of<Contributor>(context, listen: false)
        .addContributor(_titleController.text, _controllerPcs.text, _controllerPerson.text);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(width * 0.030)),
        title: Text(
          "Add Contribution",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: _colorContainer,
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Flexible(
                    child: TextField(
                      controller: _titleController,
                      maxLength: 150,
                      style: TextStyle(fontSize: width * 0.03),
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      textAlign: TextAlign.end,
                      decoration: new InputDecoration(
                        hintText: "Goods",
                        hintStyle: TextStyle(color: Colors.white54),
                        contentPadding: EdgeInsets.only(
                            left: width * 0.04,
                            top: width * 0.041,
                            bottom: width * 0.041,
                            right: width * 0.04),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width * 0.04),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width * 0.04),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              TextField(
                controller: _controllerPcs,
                maxLength: 4,
                style: TextStyle(fontSize: width * 0.03),
                keyboardType: TextInputType.text,
                maxLines: 1,
                textAlign: TextAlign.end,
                decoration: new InputDecoration(
                  labelText: "Pcs",
                  labelStyle: TextStyle(color: Colors.white54),
                  contentPadding: EdgeInsets.only(
                      left: width * 0.04,
                      top: width * 0.041,
                      bottom: width * 0.041,
                      right: width * 0.04),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width * 0.04),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width * 0.04),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              TextField(
                controller: _controllerPerson,
                maxLength: 4,
                style: TextStyle(fontSize: width * 0.03),
                keyboardType: TextInputType.text,
                maxLines: 1,
                textAlign: TextAlign.end,
                decoration: new InputDecoration(
                  labelText: "By",
                  labelStyle: TextStyle(color: Colors.white54),
                  contentPadding: EdgeInsets.only(
                      left: width * 0.04,
                      top: width * 0.041,
                      bottom: width * 0.041,
                      right: width * 0.04),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width * 0.04),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width * 0.04),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: width * 0.09),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Cancel",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _saveContributor();
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                            top: width * 0.02,
                            bottom: width * 0.02,
                            left: width * 0.03,
                            right: width * 0.03),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            'Proceed',
                            style: TextStyle(
                                color: _colorTextButtom,
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.05),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
