import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart' as english_words;


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String? formName;
  String? formPassword;
  // bool? agreedToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: Scrollbar(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    const Expanded(child: Text("")),
                    Container(
                      width: 100,
                      height: 100,
                      margin: const EdgeInsets.fromLTRB(0,10,0,0),
                      child: const CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/images/img3.jpg")
                      )                
                    ),  
                    const Expanded(child: Text("")),
                  ],
                ),
                const SizedBox(
                  height: 36,
                ),

                TextFormField(
                  autofocus: true,
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return '请输入用户名！';
                    }
                  },
                  decoration: const InputDecoration(
                    filled: true,
                    hintText: '用户名',
                    labelText: '请输入用户名',
                  ),
                  onChanged: (value) {
                    setState(() {
                      formName = value.trim();
                    });
                  },
                ),
                const SizedBox(
                  height: 24,
                ),

                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return '请输入密码！';
                    }
                  },
                  decoration: const InputDecoration(
                    filled: true,
                    hintText: '密码',
                    labelText: '请输入密码',
                  ),
                  onChanged: (value) {
                    setState(() {
                      formPassword=value.trim();
                    });
                  },
                ),
                const SizedBox(
                  height: 38,
                ),

                // FormField<bool>(
                //   initialValue: false,
                //   validator: (value) {
                //     if (value == false) {
                //       return 'You must agree to the terms of service.';
                //     }
                //     return null;
                //   },
                //   builder: (formFieldState) {
                //     return Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Row(
                //           children: [
                //             Checkbox(
                //               value: agreedToTerms,
                //               onChanged: (value) {
                //                 // When the value of the checkbox changes,
                //                 // update the FormFieldState so the form is
                //                 // re-validated.
                //                 formFieldState.didChange(value);
                //                 setState(() {
                //                   agreedToTerms = value;
                //                 });
                //               },
                //             ),
                //             Text(
                //               'I agree to the terms of service.',
                //               style: Theme.of(context).textTheme.subtitle1,
                //             ),
                //           ],
                //         ),
                //         if (!formFieldState.isValid)
                //           Text(
                //             formFieldState.errorText ?? "",
                //             style: Theme.of(context)
                //                 .textTheme
                //                 .caption!
                //                 .copyWith(color: Theme.of(context).errorColor),
                //           ),
                //       ],
                //     );
                //   },
                // ),


                MaterialButton(
                  minWidth: double.infinity,
                  height: 46,
                  child:const Text(
                    "登 录",
                    style: TextStyle(
                      color:  Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  color: Colors.blue,
                  onPressed: (){
                    var valid = _formKey.currentState!.validate();
                    if (!valid) {
                      return;
                    }

                    showDialog<void>(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Your story'),
                        content: Text('用户名[$formName]  ---- 密码[$formPassword]'),
                        actions: [
                          TextButton(
                            child: const Text('Done'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    );


                  },
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
