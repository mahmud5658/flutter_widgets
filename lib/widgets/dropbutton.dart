import 'package:flutter/material.dart';

class DropDownButtonWidget extends StatefulWidget {
  const DropDownButtonWidget({super.key});

  @override
  State<DropDownButtonWidget> createState() => _DropDownButtonWidgetState();
}

class _DropDownButtonWidgetState extends State<DropDownButtonWidget> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Drop Down Button",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Center(
          child: DropdownButton(
            dropdownColor: Colors.blue,
            isExpanded: true,
            value: selectedValue,
            hint: const Text(
              "Select the city",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            style: const TextStyle(color: Colors.black, fontSize: 15),
            icon: const Icon(Icons.keyboard_arrow_down),
            items: const[
              DropdownMenuItem(
                value: "Dhaka",
                child: Text("Dhaka"),
              ),
              DropdownMenuItem(
                value: "Sylhet",
                child: Text("Sylhet"),
              ),
              DropdownMenuItem(
                value: "Mymensingh",
                child: Text("Mymensingh"),
              ),
              DropdownMenuItem(
                value: "Rajshahi",
                child: Text("Rajshahi"),
              ),
            ],
            onChanged: (String? value) {
              setState(() {
                selectedValue = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
