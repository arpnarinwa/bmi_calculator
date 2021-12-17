import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color activeCardColor = Color(0xFF111428);
const Color bottomButtonColor = Color(0xFFEB1555);
const double bottomButtonHeight = 60.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: activeCardColor,
                      cardChild: cardChildContent(
                          icon: FontAwesomeIcons.mars, text: 'MALE'),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: activeCardColor,
                      cardChild: cardChildContent(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(color: activeCardColor),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(color: activeCardColor),
                  ),
                  Expanded(
                    child: ReusableCard(color: activeCardColor),
                  ),
                ],
              ),
            ),
            Container(
              height: bottomButtonHeight,
              margin: EdgeInsets.only(top: 15),
              color: bottomButtonColor,
            ),
          ],
        ));
  }
}

class cardChildContent extends StatelessWidget {
  final IconData icon;
  final String text;
  cardChildContent({required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80.0),
        SizedBox(height: 15.0),
        Text(
          text,
          style: TextStyle(fontSize: 18, color: Color(0xFFFFFFFF)),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget? cardChild;

  ReusableCard({required this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      height: 200.0,
      width: 170.0,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
