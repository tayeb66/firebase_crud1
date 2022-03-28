import 'package:flutter/material.dart';

class AddStudentPage extends StatefulWidget {
  const AddStudentPage({Key? key}) : super(key: key);

  @override
  State<AddStudentPage> createState() => _AddStudentPageState();
}

class _AddStudentPageState extends State<AddStudentPage> {

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  clearText(){
    nameController.clear();
    emailController.clear();
    passwordController.clear();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AddStudentPage'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: nameController,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Field can not empty';
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter your name',
                    contentPadding: EdgeInsets.only(left: 12.0),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Field can not empty';
                    }else if(!value.contains('@')){
                      return 'Enter valid email';
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter your Email',
                    contentPadding: EdgeInsets.only(left: 12.0),
                  ),
                ),

                TextFormField(
                 obscureText: true,
                  controller: passwordController,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Field can not empty';
                    }else if(value.length<6){
                      return 'Password must six character';
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Password',
                    contentPadding: EdgeInsets.only(left: 12.0),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed: () {
                     if(formKey.currentState!.validate()){
                       setState(() {
                         Navigator.pop(context);
                         clearText();
                       });
                     }
                    }, child: Text('Register')),
                    ElevatedButton(onPressed: () {
                      clearText();
                    }, child: Text('Reset')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
