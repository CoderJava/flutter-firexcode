import 'package:coderjava_firexcode/coderjava_firexcode.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage().xMaterialApp();
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

String genderValue = '';

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return xListView.list([
      'name'
          .xTF(keyboardType: TextInputType.emailAddress, showLabel: false)
          .xForm(),
      xRow.list([
        RadioListTile(
          value: 'Male',
          title: 'male'.text(),
          groupValue: genderValue,
          onChanged: (value) {
            setState(() {
              genderValue = value;
            });
          },
        ).xExpanded(),
        xRowCS
            .list([
          genderValue.xRadio(
            value: 'Female',
            onChanged: (value) {
              print(value);
              setState(() {
                genderValue = value;
              });
            },
          ),
          'Female'.text()
        ])
            .xContainer()
            .xCard(elevation: 1.0)
            .xExpanded(),
      ]),
      10.0.sizedHeight(),
      ['one', 'two', 'three'].xDropdownLabel(
          width: xwidth(context),
          name: 'dropdown'.text(),
          onChanged: (v) {
            setState(() {});
          },
          dropdownValue: 'two'),
    ]).xScaffold(appBar: 'example Dropdown'.text().xAppBar());
  }
}
