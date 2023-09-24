import 'package:flutter/material.dart';
import 'package:weinflu_app/app.dart';
import 'package:weinflu_app/config/app_routes.dart';
import 'package:weinflu_app/design/copies.dart';
import 'package:weinflu_app/design/colors.dart';
import 'package:weinflu_app/design/radius.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formLoginKey = GlobalKey<FormState>();
  var checkBoxState = false;
  var userInputController = TextEditingController();
  late BoxDecoration userContainerDecoration;
  late BoxDecoration pswContainerDecoration;
  final defaultContainerInputDecoration = const BoxDecoration(
      color: WeinFluColors.brandSecondaryColor,
      borderRadius: BorderRadius.all(WeinFluRadius.small));
  final activeContainerInputDecoration = BoxDecoration(
      color: WeinFluColors.brandSecondaryColor,
      border: Border.all(color: WeinFluColors.brandPrimaryColor, width: 2),
      borderRadius: const BorderRadius.all(WeinFluRadius.small));

  @override
  void initState() {
    super.initState();
    userContainerDecoration = defaultContainerInputDecoration;
    pswContainerDecoration = defaultContainerInputDecoration;
  }

  //final default
  late String username;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: const Text('Estamos en login')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 100),
          child: Column(
            children: [
              Text(
                Copies.hello,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              //const SizedBox(height: 21),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 21, 2, 59),
                child: Text(
                  Copies.lorem,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              Form(
                  key: _formLoginKey,
                  child: Column(children: [
                    Container(
                      height: 70,
                      padding: const EdgeInsets.only(left: 24),
                      margin: const EdgeInsets.symmetric(vertical: 24),
                      decoration: userContainerDecoration,
                      child: TextFormField(
                        controller: userInputController,
                        style: Theme.of(context).textTheme.labelSmall,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return Copies.userMessage;
                          }
                          if (value.length >= 7) {
                            return Copies.userError;
                          }
                          username = value;
                          return null;
                        },
                        onTap: () {
                          setState(() {
                            userContainerDecoration =
                                activeContainerInputDecoration;

                            pswContainerDecoration =
                                defaultContainerInputDecoration;
                          });
                        },
                        onTapOutside: (event) {
                          setState(() {
                            userContainerDecoration =
                                defaultContainerInputDecoration;
                          });
                        },
                        onSaved: (userNameValue) {
                          username = userNameValue!;
                        },
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            label: Text(
                              Copies.userInputLabel,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: WeinFluColors.brandLigthDarkColor),
                            ),
                            //hintText: 'Recuerda ingresar tu usuario',
                            floatingLabelBehavior: FloatingLabelBehavior.auto),
                      ),
                    ),
                    Container(
                      height: 70,
                      padding: const EdgeInsets.only(left: 24, bottom: 4),
                      decoration: defaultContainerInputDecoration,
                      child: TextFormField(
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return Copies.passwordMessage;
                          }
                          if (value.length >= 5) {
                            return Copies.passwordError;
                          }

                          return null;
                        },
                        onTap: () {
                          setState(() {
                            pswContainerDecoration =
                                activeContainerInputDecoration;

                            userContainerDecoration =
                                defaultContainerInputDecoration;
                          });
                        },
                        onTapOutside: (event) {
                          setState(() {
                            pswContainerDecoration =
                                defaultContainerInputDecoration;
                          });
                        },
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            label: Text(Copies.userPswInputLabel,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: WeinFluColors.brandLigthDarkColor)),
                            floatingLabelBehavior: FloatingLabelBehavior.auto),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4))),
                          value: checkBoxState,
                          onChanged: (value) {
                            setState(() {
                              checkBoxState = !checkBoxState;
                            });
                          },
                          checkColor: WeinFluColors.brandLightColor,
                          activeColor: WeinFluColors.brandPrimaryColor,
                        ),
                        const Expanded(child: Text(Copies.rememberMe)),
                        const Text(
                          Copies.recoveryPassword,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 394,
                      height: 64,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formLoginKey.currentState!.validate()) {
                            print('todos los campos estan ok');
                            _formLoginKey.currentState!.save();
                            Navigator.of(context).pushReplacementNamed(
                                AppRoutes.home,
                                arguments: username);
                          }
                        },
                        child: const Text('Login'),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: WeinFluColors.brandPrimaryColor,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(WeinFluRadius.small))),
                      ),
                    ),
                    const SizedBox(height: 48),
                    const Row(
                      children: [
                        Expanded(
                            child: Divider(
                          color: WeinFluColors.brandLightColorBorder,
                          thickness: 1.0,
                        )),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14.0),
                          child: Text(Copies.orContinue),
                        ),
                        Expanded(
                            child: Divider(
                          color: WeinFluColors.brandLightColorBorder,
                          thickness: 1.0,
                        )),
                      ],
                    ),
                    const SizedBox(height: 42),
                    Row(
                      children: [
                        Container(
                            width: 170,
                            height: 69,
                            decoration: const BoxDecoration(
                                color: WeinFluColors.brandSecondaryColor,
                                borderRadius:
                                    BorderRadius.all(WeinFluRadius.small)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/images/google.png'),
                                  width: 30,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(Copies.google,
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: WeinFluColors.brandLigthDarkColor,
                                    )),
                              ],
                            )),
                        const SizedBox(width: 20),
                        Container(
                            width: 170,
                            height: 69,
                            decoration: const BoxDecoration(
                                color: WeinFluColors.brandSecondaryColor,
                                borderRadius:
                                    BorderRadius.all(WeinFluRadius.small)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images/facebook.png'),
                                  width: 30,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(Copies.facebook,
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: WeinFluColors.brandLigthDarkColor,
                                    )),
                              ],
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(Copies.notAMember),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed(AppRoutes.signin);
                            },
                            child: const Text(
                              Copies.registerNow,
                            )),
                      ],
                    )
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}
