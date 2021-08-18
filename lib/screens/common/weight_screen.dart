import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unit_converter/formulas/common/weight_formula.dart';

class WeightScreen extends StatefulWidget {
  @override
  _WeightScreenState createState() => _WeightScreenState();
}

class _WeightScreenState extends State<WeightScreen> {
  TextEditingController _textFieldController = TextEditingController();
  HomeController homeController = HomeController();
  var _dropDownValue = "mg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Column(
          children: [
            Container(
              height: 70,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.grey),
                ),
              ),
              //color: Colors.yellow,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _input(),
                    _dropDown(),
                  ],
                ),
              ),
            ),
            _unitList(context),
          ],
        ),
      ),
    );
  }

  Widget _input() {
    OutlineInputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide(color: Get.theme.accentColor, width: 2),
    );
    return Container(
      height: 55,
      width: 230,
      child: TextField(
        controller: _textFieldController,
        onChanged: (textFieldValue) {
          homeController.updateValue(double.parse(textFieldValue));
        },
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: 20.0,
        ),
        decoration: InputDecoration(
          suffixIcon: Icon(
            Icons.edit,
            color: Get.theme.accentColor,
          ),
          enabled: true,
          enabledBorder: border,
          focusedBorder: border,
          hintText: "Enter Value",
        ),
      ),
    );
  }

  Widget _dropDown() {
    return Container(
      padding: EdgeInsets.all(10),
      height: 55,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Get.theme.accentColor,
      ),
      child: Center(
        child: DropdownButton<String>(
          itemHeight: 50,
          iconSize: 30,
          underline: SizedBox.shrink(),
          items: weightItems.map((String dropDownStringItem) {
            return DropdownMenuItem<String>(
              value: dropDownStringItem,
              child: Text(
                dropDownStringItem,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            );
          }).toList(),
          onChanged: (String newValueSelected) {
            // your code to execute when menu item is selected from dropdown
            setState(() {
              this._dropDownValue = newValueSelected;
              //print(_dropDownValue);
            });
          },
          value: _dropDownValue,
        ),
      ),
    );
  }

  Widget _unitList(context) {
    return Container(
      height: Get.height * 0.712,
      child: ListView.builder(
        //
        // lengthItems is in separate file
        //
        itemCount: weightItems.length,
        itemBuilder: (context, int index) {
          return Container(
            width: Get.width,
            height: 45,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1.0, color: Colors.grey),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Container(
                    width: Get.width * 0.5,
                    child: Text(
                      "${weightFormulas[_dropDownValue][index] * homeController.inputText}",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: Get.width * 0.4,
                  child: Text(
                    weightItems[index],
                    style: TextStyle(
                      color: Get.theme.accentColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class HomeController extends GetxController {
  RxDouble _inputText = 0.0.obs;
  double get inputText => _inputText.value;
  updateValue(double val) {
    _inputText.value = val;
  }
}
