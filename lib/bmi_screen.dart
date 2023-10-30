import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMI_calculator extends StatefulWidget {


  @override
  State<BMI_calculator> createState() => _State();
}

class _State extends State<BMI_calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.abc_rounded,
                    size: 70.0,
                  ),
                  SizedBox(height: 15.0,),
                  Text("MALE", style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold))
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey[400]
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.abc_rounded,
                    size: 70.0,
                  ),
                  SizedBox(height: 15.0,),
                  Text("MALE", style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold))
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[400]
              ),
            ),
          ),
        )
      ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("HEIGHT", style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text("180", style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.w900)),
                          Text("CM", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))
                        ],

                    ),
                    Slider(value:120.0,
                        max:220.0,
                        min: 80.0,

                        onChanged: (value){
                         print(value.round());
                        })

                  ],

    ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[400]
                ),
              ),
            ),

      ),
          Expanded(
            child: Container(
              width: double.infinity ,
              color: Colors.yellow,
            ),
          ),
          Container(
              width: double.infinity,
              color: Colors.grey,
              child: MaterialButton(onPressed: (){},height:50.0,
    child: Text("CALCULATE", style: TextStyle(color: Colors.white),),))
        ],
      ),
    );
  }
}
