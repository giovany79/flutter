import 'package:flutter/material.dart';
import 'package:weinflu_app/app.dart';
import '../design/copies.dart';
import 'package:weinflu_app/config/app_routes.dart';
import 'package:weinflu_app/design/colors.dart';
import 'package:weinflu_app/design/radius.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final _formSigninKey = GlobalKey<FormState>();
  var userInputController = TextEditingController();

  late BoxDecoration userContainerDecoration;
  late BoxDecoration nameContainerDecoration;
  late BoxDecoration pswContainerDecoration;

  var checkBoxState = false;

  late String username = '';
  late String name;

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
    nameContainerDecoration = defaultContainerInputDecoration;
    pswContainerDecoration = defaultContainerInputDecoration;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 100),
                child: Column(children: [
                  Text(
                    Copies.signin,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 21, 2, 26),
                    child: Text(
                      Copies.lorem,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                  Form(
                      key: _formSigninKey,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  width: 170,
                                  height: 69,
                                  decoration: const BoxDecoration(
                                      color: WeinFluColors.brandSecondaryColor,
                                      borderRadius: BorderRadius.all(
                                          WeinFluRadius.small)),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            'assets/images/google.png'),
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Text(Copies.google,
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: WeinFluColors
                                                .brandLigthDarkColor,
                                          )),
                                    ],
                                  )),
                              const SizedBox(width: 20),
                              Container(
                                  width: 170,
                                  height: 69,
                                  decoration: const BoxDecoration(
                                      color: WeinFluColors.brandSecondaryColor,
                                      borderRadius: BorderRadius.all(
                                          WeinFluRadius.small)),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            'assets/images/facebook.png'),
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Text(Copies.facebook,
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: WeinFluColors
                                                .brandLigthDarkColor,
                                          )),
                                    ],
                                  ))
                            ],
                          ),
                          const SizedBox(height: 42),
                          const Row(
                            children: [
                              Expanded(
                                  child: Divider(
                                color: WeinFluColors.brandLightColorBorder,
                                thickness: 1.0,
                              )),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 14.0),
                                child: Text(Copies.or),
                              ),
                              Expanded(
                                  child: Divider(
                                color: WeinFluColors.brandLightColorBorder,
                                thickness: 1.0,
                              )),
                            ],
                          ),
                          Container(
                            height: 70,
                            padding: const EdgeInsets.only(left: 24, bottom: 2),
                            margin: const EdgeInsets.only(top: 42),
                            decoration: userContainerDecoration,
                            child: TextFormField(
                              controller: userInputController,
                              style: Theme.of(context).textTheme.bodyLarge,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return Copies.userMessage;
                                }
                                if (value.length <= 5) {
                                  return Copies.userError;
                                }
                                username = value;
                                return null;
                              },
                              onTap: () {
                                setState(() {
                                  userContainerDecoration =
                                      activeContainerInputDecoration;

                                  nameContainerDecoration =
                                      defaultContainerInputDecoration;

                                  pswContainerDecoration =
                                      defaultContainerInputDecoration;
                                });
                              },
                              onTapOutside: (event) {
                                setState(() {
                                  userContainerDecoration =
                                      defaultContainerInputDecoration;

                                  nameContainerDecoration =
                                      defaultContainerInputDecoration;

                                  pswContainerDecoration =
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
                                        color:
                                            WeinFluColors.brandLigthDarkColor),
                                  ),
                                  //hintText: 'Recuerda ingresar tu usuario',
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.auto),
                            ),
                          ),
                          Container(
                            height: 70,
                            padding: const EdgeInsets.only(left: 24, bottom: 2),
                            margin: const EdgeInsets.symmetric(vertical: 24),
                            decoration: nameContainerDecoration,
                            child: TextFormField(
                              obscureText: false,
                              style: Theme.of(context).textTheme.bodyLarge,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return Copies.nameMessage;
                                }
                                if (value.length <= 10) {
                                  return Copies.nameError;
                                }
                                name = value;
                                return null;
                              },
                              onTap: () {
                                setState(() {
                                  userContainerDecoration =
                                      defaultContainerInputDecoration;

                                  nameContainerDecoration =
                                      activeContainerInputDecoration;

                                  pswContainerDecoration =
                                      defaultContainerInputDecoration;
                                });
                              },
                              onTapOutside: (event) {
                                setState(() {
                                  userContainerDecoration =
                                      defaultContainerInputDecoration;

                                  nameContainerDecoration =
                                      defaultContainerInputDecoration;

                                  pswContainerDecoration =
                                      defaultContainerInputDecoration;
                                });
                              },
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  label: Text(Copies.nameLabel,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                          color: WeinFluColors
                                              .brandLigthDarkColor)),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.auto),
                            ),
                          ),
                          Container(
                            height: 70,
                            padding: const EdgeInsets.only(left: 24, bottom: 2),
                            margin: const EdgeInsets.only(bottom: 24),
                            decoration: pswContainerDecoration,
                            child: TextFormField(
                              obscureText: true,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return Copies.passwordMessage;
                                }
                                if (value.length <= 3) {
                                  return Copies.passwordError;
                                }

                                return null;
                              },
                              onTap: () {
                                setState(() {
                                  userContainerDecoration =
                                      defaultContainerInputDecoration;

                                  nameContainerDecoration =
                                      defaultContainerInputDecoration;

                                  pswContainerDecoration =
                                      activeContainerInputDecoration;
                                });
                              },
                              onTapOutside: (event) {
                                setState(() {
                                  userContainerDecoration =
                                      defaultContainerInputDecoration;

                                  nameContainerDecoration =
                                      defaultContainerInputDecoration;

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
                                          color: WeinFluColors
                                              .brandLigthDarkColor)),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.auto),
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
                                    //checkBoxState = !checkBoxState;
                                    checkBoxState = value ?? false;
                                  });
                                },
                                checkColor: WeinFluColors.brandLightColor,
                                activeColor: WeinFluColors.brandPrimaryColor,
                              ),
                              const Text(Copies.agree),
                              const Text(Copies.terms,
                                  style: TextStyle(
                                      color: WeinFluColors.brandPrimaryColor)),
                              const Text(Copies.and),
                              const Text(Copies.privacy,
                                  style: TextStyle(
                                      color: WeinFluColors.brandPrimaryColor)),
                            ],
                          ),
                          SizedBox(
                            width: 394,
                            height: 64,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formSigninKey.currentState!.validate()) {
                                  print('todos los campos estan ok');
                                  Navigator.of(context).pushReplacementNamed(
                                      AppRoutes.home,
                                      arguments: username);
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      WeinFluColors.brandPrimaryColor,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          WeinFluRadius.small))),
                              child: const Text('Get Started'),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Row(
                            children: [
                              Expanded(
                                  child: Divider(
                                color: WeinFluColors.brandLightColorBorder,
                                thickness: 1.0,
                              )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(Copies.alreadyHave),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushReplacementNamed(AppRoutes.login);
                                  },
                                  child: const Text(
                                    Copies.login,
                                  )),
                            ],
                          )
                        ],
                      ))
                ]))));
  }
}
