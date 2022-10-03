// Box Arc
import 'package:flutter/material.dart';

class Arch extends StatelessWidget {
  const Arch({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
              bottom: Radius.elliptical(50, 50), top: Radius.circular(10.0)),
        ),
        // width: screenSize.width,
        height: screenSize.height * 0.08,
      ),
    );
  }
}

// Container
class roundedContainer extends StatelessWidget {
  const roundedContainer({required this.Stack});
  final Widget Stack;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(10.0)),
      width: screenSize.width * 0.31,
      height: screenSize.height * 0.135,
      child: Stack,
    );
  }
}

// Accordion

class Accordion extends StatefulWidget {
  const Accordion({required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  State<Accordion> createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool _open = false;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Card(
      color: _open ? Colors.blue : Colors.grey,
      child: Column(
        children: [
          ListTile(
            title: Text(
              widget.title,
              style: TextStyle(color: Colors.white),
            ),
            trailing: IconButton(
              icon: Icon(
                  _open ? Icons.arrow_drop_up : Icons.arrow_drop_down, color: Colors.white,),
              onPressed: () {
                setState(() {
                  _open = !_open;
                });
              },
            ),
          ),
          _open
              ? Container(
                  color: Colors.white,
                  width: screenSize.width,
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: widget.child
                )
              : Container()
        ],
      ),
    );
  }
}
