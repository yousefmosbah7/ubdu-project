import 'package:flutter/material.dart';
import 'package:untitled12/login_screen.dart';

class register_screen extends StatefulWidget {

  @override
  State<register_screen> createState() => _register_screenState();
}

class _register_screenState extends State<register_screen> {
  final patientController =new TextEditingController();
  final doctorController =new TextEditingController();
  final lastmeasurmentController =new TextEditingController();
  var formkey = GlobalKey <FormState> ();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade200,
        title:
        Center(
          child: Text('U.B.D.U',
            textAlign: TextAlign.center,
            style:TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ) ,),
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form (
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(bottom: 20.0,top: 20,),
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),

                  ),
                ),
                SizedBox(height: 30,),
                TextFormField(
                  controller: patientController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: 'patient',
                    prefixIcon:Icon(Icons.local_hospital,),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30,),
                TextFormField(
                  controller: doctorController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'doctor',
                    prefixIcon:Icon(Icons.local_hospital_rounded,),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30,),
                TextFormField(
                  controller: lastmeasurmentController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'last measurment',
                    prefixIcon:Icon(Icons.local_hospital_rounded,),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  child: MaterialButton(onPressed: (){
Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login_screen()));

                  },
                    child: Text('Done',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),),
                  decoration: BoxDecoration(
                    color: Colors.brown.shade200,
                    borderRadius: BorderRadius.circular(8,),

                  ),
                ),
                Image(
                  image: AssetImage('assets/images/ubdu.png'),
                  height: 270,
                  width: 270,

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

