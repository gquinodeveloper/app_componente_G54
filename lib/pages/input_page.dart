import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            _inputText(),
            SizedBox(height: 10.0),
            _inputEmail(),
            SizedBox(height: 10.0),
            _inputNumber(),
            SizedBox(height: 10.0),
            _inputDate(context),
          ],
        ),
      ),
    );
  }

  Widget _inputText() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Nombre",
        //hintText: "Ingrese nombre",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        //suffixIcon: Icon(Icons.remove_red_eye_sharp),
        icon: Icon(Icons.person_outline),
      ),
      onChanged: (value) {
        print("Valor: " + value);
      },
    );
  }

  Widget _inputEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Email",
        //hintText: "Ingrese nombre",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        //suffixIcon: Icon(Icons.remove_red_eye_sharp),
        icon: Icon(Icons.email_outlined),
      ),
      onChanged: (value) {
        print("Valor: " + value);
      },
    );
  }

  Widget _inputNumber() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: "Number",
        //hintText: "Ingrese nombre",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        //suffixIcon: Icon(Icons.remove_red_eye_sharp),
        icon: Icon(Icons.format_list_numbered),
      ),
      onChanged: (value) {
        print("Valor: " + value);
      },
    );
  }

  Widget _inputDate(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        labelText: "Date",
        //hintText: "Ingrese nombre",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        //suffixIcon: Icon(Icons.remove_red_eye_sharp),
        icon: Icon(Icons.date_range_outlined),
      ),
      onTap: () {
        _selectDate(context);
      },
      /* onChanged: (value) {
        _selectDate(context);
      }, */
    );
  }

  _selectDate(BuildContext context) async {
    final picker = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2025),
      locale: Locale("es", "ES"),
    );
    if (picker != null) {
      _controller.text = picker.toString();
    }
  }
}
