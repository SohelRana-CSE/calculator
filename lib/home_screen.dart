import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _numOneTEcontroller = TextEditingController();
  final TextEditingController _numTwoTEcontroller = TextEditingController();
  double _result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Calculator')),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: _numOneTEcontroller,
                decoration: const InputDecoration(
                  hintText: 'Number 1',
                  labelText: 'Number 1',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: _numTwoTEcontroller,
                decoration: const InputDecoration(
                  hintText: 'Number 2',
                  labelText: 'Number 2'
                ),
                keyboardType: TextInputType.number,
              ),


              const SizedBox(height: 24,),


              Wrap(
                spacing: 16,
                alignment: WrapAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton.icon(
                        onPressed: _add,
                        icon: const Icon(Icons.add),
                        label: const Text('Sum'),
                      ),
                      ElevatedButton.icon(
                        onPressed: _sub,
                        icon: const Icon(Icons.remove),
                        label: const Text('Sub'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton.icon(
                        // onPressed: () {
                        //   _mult();
                        // },
                        onPressed: _mult,
                        icon: const Icon(Icons.star),
                        label: const Text('Mult'),
                      ),
                      ElevatedButton.icon(
                        onPressed: _div,
                        icon: const Icon(Icons.safety_divider),
                        label: const Text('Div'),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Text('Result: $_result', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),)
            ],
          ),
        ),
      ),
    );
  }

  void _add() {
    double numberOne = double.tryParse(_numOneTEcontroller.text) ?? 0;
    double numberTwo = double.tryParse(_numTwoTEcontroller.text) ?? 0;

    _result = numberOne + numberTwo;
    setState(() {});
  }

  void _sub() {
    double numberOne = double.tryParse(_numOneTEcontroller.text) ?? 0;
    double numberTwo = double.tryParse(_numTwoTEcontroller.text) ?? 0;

    _result = numberOne - numberTwo;
    setState(() {});
  }

  void _mult() {
    double numberOne = double.tryParse(_numOneTEcontroller.text) ?? 0;
    double numberTwo = double.tryParse(_numTwoTEcontroller.text) ?? 0;

    _result = numberOne * numberTwo;
    setState(() {});
  }

  void _div() {
    double numberOne = double.tryParse(_numOneTEcontroller.text) ?? 0;
    double numberTwo = double.tryParse(_numTwoTEcontroller.text) ?? 0;

    //this is use when we need to clear the input from the textField
    // _numOneTEcontroller.clear();
    // _numTwoTEcontroller.clear();

    _result = numberOne / numberTwo;
    setState(() {});
  }

  @override
  void dispose() {
    _numOneTEcontroller.dispose();
    _numTwoTEcontroller.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}
