import 'package:flutter/material.dart';
import 'package:untitled12/register_screen.dart';
import 'package:untitled12/table_screen.dart';

class login_screen extends StatefulWidget {

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  final patientController =new TextEditingController();
  final doctorController =new TextEditingController();
  var formkey = GlobalKey<FormState>();
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
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key:formkey ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(bottom: 20.0,top: 20,),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),

                  ),
                ) ,
                SizedBox(
                  height: 20,
                ),
                TextFormField(

                  controller: patientController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: 'patient',
                    prefixIcon:Icon(Icons.local_hospital,),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(

                  controller: doctorController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'doctor',
                    prefixIcon:Icon(Icons.local_hospital_rounded,),
                    border: OutlineInputBorder(),

                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {
                      var patient = patientController.text;
                      print(patientController);
                      var doctor = doctorController.text;
                      print(doctorController);
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => table_screen
                        (
                        patient: patient,
                        doctor: doctor,
                      ),));
                    },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.brown.shade200,
                    borderRadius: BorderRadius.circular(8,),
                  ),

                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('First measurment ?',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    TextButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>register_screen() ));
                    }, child: Text('Register now',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.brown.shade400
                    ),),)
                  ],
                ),
                SizedBox(height: 30,),
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
