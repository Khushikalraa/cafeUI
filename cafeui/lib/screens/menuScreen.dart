import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int _quantity = 1;
  bool _isFullSelected = false;
  bool _isHalfFullSelected = false;
  bool _isThreeQuarterFullSelected = false;
  bool _isQuarterFullSelected = false;
  bool _isSkimMilkSelected = false;
  bool _isAlmondMilkSelected = false;
  bool _isFullCreamMilkSelected = false;
  bool _isSoyMilkSelected = false;
  bool _isLactoseFreeMilkSelected = false;
  bool _isOatMilkSelected = false;
  bool _isSugarX1Selected = false;
  bool _isSugarX2Selected = false;
  bool _isHalfSugarSelected = false;
  bool _isNoSugarSelected = false;
  bool _isHighPrioritySelected = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  height: 300,
                  
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:50.0),
                        child: Image.asset(
                          'coffee3.webp',
                          //fit: BoxFit.cover,
                          height: 450,
                          width: 400,
                        ),
                      ),
                      Positioned(
                        top: 10.0,
                        right: 10.0,
                        child: Container(
                          width: 100.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (_quantity > 1) _quantity--;
                                  });
                                },
                                icon: Icon(Icons.remove, color: Colors.black),
                              ),
                              Text(
                                '$_quantity',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    _quantity++;
                                  });
                                },
                                icon: Icon(Icons.add, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
  children: [
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage('coffee.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          
          color: const Color.fromARGB(255, 85, 85, 85).withOpacity(0.6), // Adjust the opacity here
        ),
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Latte',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Text("4.9",style: TextStyle(color: Colors.white,fontSize: 15),),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text(
                  ' (458)',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Text(
              'Caffe latte is a milk coffee that is made up of one or two shots of espresso,steamed milk and a final,thin layer of frothed milk on top.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Choice of Cup Filling',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 10.0),
            _buildCupFillingOptions(),
            SizedBox(height: 20.0),
            Text(
              'Choice of Milk',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 10.0),
            _buildMilkOptions(),
            SizedBox(height: 20.0),
            Text(
              'Choice of Sugar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 10.0),
            _buildSugarOptions(),
            SizedBox(height: 20.0),
            Row(
              children: [
                Checkbox(
                  value: _isHighPrioritySelected,
                  onChanged: (value) {
                    setState(() {
                      _isHighPrioritySelected = value!;
                    });
                  },
                  checkColor: Colors.white,
                  fillColor: MaterialStateColor.resolveWith(
                      (states) => Colors.green),
                ),
                Text(
                  'High Priority',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                
              },
              child: Text('Submit',style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ],
),

              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildCupFillingOptions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildOption('Full', _isFullSelected),
        _buildOption('1/2 Full', _isHalfFullSelected),
        _buildOption('3/4 Full', _isThreeQuarterFullSelected),
        _buildOption('1/4 Full', _isQuarterFullSelected),
      ],
    );
  }

  Widget _buildOption(String text, bool isSelected) {
    return Row(
      children: [
        Checkbox(
          value: isSelected,
          onChanged: (value) {
            setState(() {
              switch (text) {
                case 'Full':
                  _isFullSelected = value!;
                  break;
                case '1/2 Full':
                 
                _isHalfFullSelected = value!;
                  break;
                case '3/4 Full':
                  _isThreeQuarterFullSelected = value!;
                  break;
                case '1/4 Full':
                  _isQuarterFullSelected = value!;
                  break;
              }
            });
          },
          checkColor: Colors.white,
          fillColor:
              MaterialStateColor.resolveWith((states) => isSelected ? Colors.green : Colors.white),
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ],
    );
  }

  Widget _buildMilkOptions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildMilkOption('Skim Milk', _isSkimMilkSelected),
        _buildMilkOption('Almond Milk', _isAlmondMilkSelected),
        _buildMilkOption('Full Cream Milk', _isFullCreamMilkSelected),
        _buildMilkOption('Soy Milk', _isSoyMilkSelected),
        _buildMilkOption('Lactose Free Milk', _isLactoseFreeMilkSelected),
        _buildMilkOption('Oat Milk', _isOatMilkSelected),
      ],
    );
  }

  Widget _buildMilkOption(String text, bool isSelected) {
    return Row(
      children: [
        Checkbox(
          value: isSelected,
          onChanged: (value) {
            setState(() {
              switch (text) {
                case 'Skim Milk':
                  _isSkimMilkSelected = value!;
                  break;
                case 'Almond Milk':
                  _isAlmondMilkSelected = value!;
                  break;
                case 'Full Cream Milk':
                  _isFullCreamMilkSelected = value!;
                  break;
                case 'Soy Milk':
                  _isSoyMilkSelected = value!;
                  break;
                case 'Lactose Free Milk':
                  _isLactoseFreeMilkSelected = value!;
                  break;
                case 'Oat Milk':
                  _isOatMilkSelected = value!;
                  break;
              }
            });
          },
          checkColor: Colors.white,
          fillColor:
              MaterialStateColor.resolveWith((states) => isSelected ? Colors.green : Colors.white),
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ],
    );
  }

  Widget _buildSugarOptions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSugarOption('Sugar X1', _isSugarX1Selected),
        _buildSugarOption('Sugar X2', _isSugarX2Selected),
        _buildSugarOption('1/2 Sugar', _isHalfSugarSelected),
        _buildSugarOption('No Sugar', _isNoSugarSelected),
      ],
    );
  }

  Widget _buildSugarOption(String text, bool isSelected) {
    return Row(
      children: [
        Checkbox(
          value: isSelected,
          onChanged: (value) {
            setState(() {
              switch (text) {
                case 'Sugar X1':
                  _isSugarX1Selected = value!;
                  break;
                case 'Sugar X2':
                  _isSugarX2Selected = value!;
                  break;
                case '1/2 Sugar':
                  _isHalfSugarSelected = value!;
                  break;
                case 'No Sugar':
                  _isNoSugarSelected = value!;
                  break;
              }
            });
          },
          checkColor: Colors.white,
          fillColor:
              MaterialStateColor.resolveWith((states) => isSelected ? Colors.green : Colors.white),
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ],
    );
  }
}
