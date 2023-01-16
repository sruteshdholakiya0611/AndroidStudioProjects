import 'package:flutter/material.dart';
// import 'package:flutter_gridview/pass_data.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter/scheduler.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final TextEditingController _textEditingControllerName =
      TextEditingController();
  final TextEditingController _textEditingControllerEmail =
      TextEditingController();
  final TextEditingController _textEditingControllerNumber =
      TextEditingController();
  final TextEditingController _textEditingControllerPassword =
      TextEditingController();
  final TextEditingController _textEditingControllerConformPassword =
      TextEditingController();
  final TextEditingController _textEditingControllerAddress =
      TextEditingController();
  final TextEditingController _textEditingControllerMessage =
      TextEditingController();
  final TextEditingController _textEditingControllerPinCode =
      TextEditingController();

  final FocusNode _focusNodeName = FocusNode();
  final FocusNode _focusNodePassword = FocusNode();
  final FocusNode _focusNodeConformPassword = FocusNode();
  final FocusNode _focusNodeAddress = FocusNode();
  final FocusNode _focusNodeMessage = FocusNode();
  final FocusNode _focusNodePinCode = FocusNode();

  bool isName = true;
  bool isEmail = true;
  bool isNumber = true;
  bool isPassword = true;
  bool isObscure = true;
  bool isConformPassword = true;
  bool isAddress = true;
  bool isMessage = true;
  bool isPinCode = true;

  @override
  Widget build(BuildContext context) {
    // timeDilation = 5.0;

    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: const Color(0xFFF0F8FF),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xFFE6E6FA),
              Color(0xFFFFFAFA),
              Color(0xFFF5FFFA),
              Color(0xFFF0FFFF)
            ],
          ),
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFFB0C4DE),
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const SizedBox(
                //   height: 10,
                // ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    'Form Field',
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: TextStyle(
                        fontSize: 55,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF778899),
                        letterSpacing: 10,
                        wordSpacing: 10,
                        shadows: [
                          Shadow(
                            color: Color(0xFFB0C4DE),
                            blurRadius: 2.25,
                          ),
                        ]),
                  ),
                ),
                // const SizedBox(
                //   height: 40,
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: TextFormField(
                    controller: _textEditingControllerName,
                    autofocus: true,
                    obscureText: false,
                    maxLength: 40,
                    mouseCursor: SystemMouseCursors.text,
                    textCapitalization: TextCapitalization.sentences,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.name,
                    showCursor: true,
                    focusNode: _focusNodeName,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF777777),
                    ),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 25, horizontal: 10),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF999999))),
                      counterStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF888888),
                      ),
                      labelText: '| Name ',
                      labelStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                      ),
                      iconColor: const Color(0xFF999999),
                      /*floatingLabelStyle: TextStyle(
                          color: isName == true ? const Color(0xFF6895ED): Colors.redAccent,
                        ),*/
                      hintText: 'Enter Name',
                      hintStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF989898),
                      ),
                      prefixIcon: const Icon(
                        Icons.engineering_rounded,
                        size: 35,
                        semanticLabel: 'Name Icon',
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 80,
                        minHeight: 90,
                      ),
                      prefixIconColor: const Color(0xFF999999),
                      suffixIcon: isName == true
                          ? const Icon(
                              Icons.done_all_rounded,
                              size: 35,
                              semanticLabel: 'Error Icon',
                            )
                          : const Icon(
                              Icons.remove_done_outlined,
                              size: 35,
                              semanticLabel: 'Error Icon',
                              color: Colors.redAccent,
                            ),
                      suffixIconConstraints: const BoxConstraints(
                        minWidth: 60,
                        minHeight: 60,
                      ),
                      suffixIconColor: const Color(0xFF999999),
                      errorText: isName ? null : 'required field',
                      errorStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Colors.redAccent,
                      ),
                      errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.redAccent),
                      ),
                    ),
                    onChanged: (inputText) {
                      if (inputText.isEmpty) {
                        setState(() {
                          isName = false;
                        });
                      } else {
                        setState(() {
                          isName = true;
                        });
                      }
                    },
                    onEditingComplete: () {
                      FocusScope.of(context).nextFocus();
                    },
                    validator: (inputText) {
                      if (inputText == null || inputText.isEmpty) {
                        return 'Please enter Name';
                      }
                      return null;
                    },
                  ),
                ),
                // const SizedBox(
                //   height: 40,
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: TextFormField(
                    controller: _textEditingControllerEmail,
                    autofocus: true,
                    obscureText: false,
                    maxLength: 40,
                    mouseCursor: SystemMouseCursors.text,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    showCursor: true,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF777777),
                    ),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 25, horizontal: 10),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF999999))),
                      counterStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF888888),
                      ),
                      labelText: '| E-Mail ID ',
                      labelStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                      ),
                      iconColor: const Color(0xFF999999),
                      /*floatingLabelStyle: TextStyle(
                          color: isName == true ? const Color(0xFF6895ED): Colors.redAccent,
                        ),*/
                      hintText: 'Enter E-Mail ID ',
                      hintStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF989898),
                      ),
                      prefixIcon: const Icon(
                        Icons.alternate_email,
                        size: 35,
                        semanticLabel: 'E-Mail Icon',
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 80,
                        minHeight: 90,
                      ),
                      prefixIconColor: const Color(0xFF999999),
                      suffixIcon: isEmail == true
                          ? const Icon(
                              Icons.done_all_rounded,
                              size: 35,
                              semanticLabel: 'Error Icon',
                            )
                          : const Icon(
                              Icons.remove_done_outlined,
                              size: 35,
                              semanticLabel: 'Error Icon',
                              color: Colors.redAccent,
                            ),
                      suffixIconConstraints: const BoxConstraints(
                        minWidth: 60,
                        minHeight: 60,
                      ),
                      suffixIconColor: const Color(0xFF999999),
                      errorText: isEmail ? null : 'required field',
                      errorStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Colors.redAccent,
                      ),
                      errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.redAccent),
                      ),
                    ),
                    onChanged: (inputText) {
                      if (inputText.isEmpty) {
                        setState(() {
                          isEmail = false;
                        });
                      } else {
                        setState(() {
                          isEmail = true;
                        });
                      }
                    },
                    validator: (inputText) {
                      if (inputText == null || inputText.isEmpty) {
                        return 'Please enter emailID';
                      }
                      return null;
                    },
                  ),
                ),
                // const SizedBox(
                //   height: 60,
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: TextFormField(
                    controller: _textEditingControllerNumber,
                    autofocus: true,
                    obscureText: false,
                    maxLength: 10,
                    mouseCursor: SystemMouseCursors.text,
                    textCapitalization: TextCapitalization.none,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.phone,
                    showCursor: true,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF777777),
                    ),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 25, horizontal: 10),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF999999))),
                      counterStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF888888),
                      ),
                      labelText: '| Mobile No. ',
                      labelStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                      ),
                      iconColor: const Color(0xFF999999),
                      /*floatingLabelStyle: TextStyle(
                          color: isName == true ? const Color(0xFF6895ED): Colors.redAccent,
                        ),*/
                      hintText: 'Enter Mobile No. ',
                      hintStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF989898),
                      ),
                      prefixIcon: const Icon(
                        Icons.phone_in_talk_outlined,
                        size: 35,
                        semanticLabel: 'Phone Icon',
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 80,
                        minHeight: 90,
                      ),
                      prefixIconColor: const Color(0xFF999999),
                      suffixIcon: isNumber == true
                          ? const Icon(
                              Icons.done_all_rounded,
                              size: 35,
                              semanticLabel: 'Error Icon',
                            )
                          : const Icon(
                              Icons.remove_done_outlined,
                              size: 35,
                              semanticLabel: 'Error Icon',
                              color: Colors.redAccent,
                            ),
                      suffixIconConstraints: const BoxConstraints(
                        minWidth: 60,
                        minHeight: 60,
                      ),
                      suffixIconColor: const Color(0xFF999999),
                      errorText: isNumber ? null : 'required field',
                      errorStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Colors.redAccent,
                      ),
                      errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.redAccent),
                      ),
                    ),
                    onChanged: (inputText) {
                      if (inputText.isEmpty) {
                        setState(() {
                          isNumber = false;
                        });
                      } else {
                        setState(() {
                          isNumber = true;
                        });
                      }
                    },
                    validator: (inputText) {
                      if (inputText == null || inputText.isEmpty) {
                        return 'Please enter mobileNo.';
                      }
                      return null;
                    },
                  ),
                ),
                // const SizedBox(
                //   height: 60,
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: TextFormField(
                    controller: _textEditingControllerPassword,
                    focusNode: _focusNodePassword,
                    autofocus: true,
                    obscureText: isObscure,
                    maxLength: 20,
                    mouseCursor: SystemMouseCursors.text,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    showCursor: true,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF777777),
                    ),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 25, horizontal: 10),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF999999))),
                      counterStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF888888),
                      ),
                      labelText: '| Password ',
                      labelStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                      ),
                      iconColor: const Color(0xFF999999),
                      /*floatingLabelStyle: TextStyle(
                          color: isName == true ? const Color(0xFF6895ED): Colors.redAccent,
                        ),*/
                      hintText: 'Enter Password. ',
                      hintStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF989898),
                      ),
                      prefixIcon: const Icon(
                        Icons.password_rounded,
                        size: 35,
                        semanticLabel: 'Password Icon',
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 80,
                        minHeight: 90,
                      ),
                      prefixIconColor: const Color(0xFF999999),
                      suffixIcon: isPassword == true
                          ? (isObscure == true
                              ? IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isObscure = false;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.visibility_rounded,
                                    size: 35,
                                    semanticLabel: 'Visibility Icon',
                                  ))
                              : IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isObscure = true;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.visibility_off_rounded,
                                    size: 35,
                                    semanticLabel: 'Visibility off Icon',
                                  )))
                          : const Icon(
                              Icons.remove_done_outlined,
                              size: 35,
                              semanticLabel: 'Error Icon',
                              color: Colors.redAccent,
                            ),
                      suffixIconConstraints: const BoxConstraints(
                        minWidth: 60,
                        minHeight: 60,
                      ),
                      suffixIconColor: const Color(0xFF999999),
                      errorText: isPassword ? null : 'required field',
                      errorStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Colors.redAccent,
                      ),
                      errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.redAccent),
                      ),
                    ),
                    onChanged: (inputText) {
                      if (inputText.isEmpty) {
                        setState(() {
                          isPassword = false;
                        });
                      } else {
                        setState(() {
                          isPassword = true;
                        });
                      }
                    },
                    onFieldSubmitted: (inputText) {
                      FocusScope.of(context)
                          .requestFocus(_focusNodeConformPassword);
                    },
                    validator: (inputText) {
                      if (inputText == null || inputText.isEmpty) {
                        return 'Please enter password.';
                      }
                      return null;
                    },
                  ),
                ),
                // const SizedBox(
                //   height: 60,
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: TextFormField(
                    controller: _textEditingControllerConformPassword,
                    focusNode: _focusNodeConformPassword,
                    autofocus: true,
                    obscureText: isObscure,
                    maxLength: 20,
                    mouseCursor: SystemMouseCursors.text,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    showCursor: true,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF777777),
                    ),
                    // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 25, horizontal: 10),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF999999))),
                      counterStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF888888),
                      ),
                      labelText: '| Conform Password ',
                      labelStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                      ),
                      iconColor: const Color(0xFF999999),
                      /*floatingLabelStyle: TextStyle(
                          color: isName == true ? const Color(0xFF6895ED): Colors.redAccent,
                        ),*/
                      hintText: 'Enter Conform Password. ',
                      hintStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF989898),
                      ),
                      prefixIcon: const Icon(
                        Icons.password_rounded,
                        size: 35,
                        semanticLabel: 'Password Icon',
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 80,
                        minHeight: 90,
                      ),
                      prefixIconColor: const Color(0xFF999999),
                      suffixIcon: isConformPassword == true
                          ? (IconButton(
                              onPressed: () {
                                setState(() {
                                  isObscure = !isObscure;
                                });
                              },
                              icon: Icon(
                                isObscure == true
                                    ? Icons.visibility_rounded
                                    : Icons.visibility_off_rounded,
                                size: 35,
                                semanticLabel: 'Visibility Icon',
                              )))
                          : Icon(
                              _textEditingControllerConformPassword.text.isEmpty
                                  ? Icons.remove_done_outlined
                                  : Icons.done_all_outlined,
                              size: 35,
                              semanticLabel: 'Error Icon',
                              color: Colors.redAccent,
                            ),
                      suffixIconConstraints: const BoxConstraints(
                        minWidth: 60,
                        minHeight: 60,
                      ),
                      suffixIconColor: const Color(0xFF999999),
                      errorText: isConformPassword
                          ? (_textEditingControllerConformPassword.text ==
                                  _textEditingControllerPassword.text
                              ? null
                              : '| Password Not Match..')
                          : 'required field',
                      errorStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Colors.redAccent,
                      ),
                      errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.redAccent),
                      ),
                    ),
                    onChanged: (inputText) {
                      if (inputText.isEmpty) {
                        setState(() {
                          isConformPassword = false;
                        });
                      } else {
                        setState(() {
                          isConformPassword = true;
                        });
                      }
                    },
                    onFieldSubmitted: (inputText) {
                      FocusScope.of(context).nextFocus();
                    },
                    validator: (inputText) {
                      if (inputText == null || inputText.isEmpty) {
                        return 'Please enter password.';
                      }
                      if (inputText == _textEditingControllerPassword.text) {
                        return 'Password Match';
                      } else if (inputText !=
                          _textEditingControllerPassword.text) {
                        return 'Password Not Match';
                      }
                      return null;
                    },
                  ),
                ),
                // const SizedBox(
                //   height: 60,
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: TextFormField(
                    controller: _textEditingControllerAddress,
                    autofocus: true,
                    obscureText: false,
                    maxLength: 100,
                    maxLines: 6,
                    minLines: 4,
                    enabled: true,
                    focusNode: _focusNodeAddress,
                    mouseCursor: SystemMouseCursors.text,
                    textCapitalization: TextCapitalization.sentences,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    showCursor: true,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF777777),
                    ),
                    decoration: InputDecoration(
                      isCollapsed: true,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 25, horizontal: 10),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF999999))),
                      counterStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF888888),
                      ),
                      labelText: '| Address ',
                      labelStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                      ),
                      iconColor: const Color(0xFF999999),
                      /*floatingLabelStyle: TextStyle(
                          color: isName == true ? const Color(0xFF6895ED): Colors.redAccent,
                        ),*/
                      hintText: 'Enter Address',
                      hintStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF989898),
                      ),
                      prefixIcon: const Icon(
                        Icons.my_location,
                        size: 35,
                        semanticLabel: 'Address Icon',
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 80,
                        minHeight: 90,
                      ),
                      prefixIconColor: const Color(0xFF999999),
                      suffixIcon: isAddress == true
                          ? const Icon(
                              Icons.done_all_rounded,
                              size: 35,
                              semanticLabel: 'Error Icon',
                            )
                          : const Icon(
                              Icons.remove_done_outlined,
                              size: 35,
                              semanticLabel: 'Error Icon',
                              color: Colors.redAccent,
                            ),
                      suffixIconConstraints: const BoxConstraints(
                        minWidth: 60,
                        minHeight: 60,
                      ),
                      suffixIconColor: const Color(0xFF999999),
                      errorText: isAddress ? null : 'required field',
                      errorStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Colors.redAccent,
                      ),
                      errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.redAccent),
                      ),
                    ),
                    onChanged: (inputText) {
                      if (inputText.isEmpty) {
                        setState(() {
                          isAddress = false;
                        });
                      } else {
                        setState(() {
                          isAddress = true;
                        });
                      }
                    },
                    onEditingComplete: () {
                      FocusScope.of(context).nextFocus();
                    },
                    validator: (inputText) {
                      if (inputText == null || inputText.isEmpty) {
                        return 'Please enter address';
                      }
                      return null;
                    },
                  ),
                ),
                // const SizedBox(
                //   height: 60,
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: TextFormField(
                    controller: _textEditingControllerMessage,
                    autofocus: true,
                    obscureText: false,
                    maxLength: 120,
                    maxLines: 6,
                    minLines: 1,
                    enabled: true,
                    focusNode: _focusNodeMessage,
                    mouseCursor: SystemMouseCursors.text,
                    textCapitalization: TextCapitalization.sentences,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    showCursor: true,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF777777),
                    ),
                    decoration: InputDecoration(
                      isCollapsed: true,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 25, horizontal: 10),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF999999))),
                      counterStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF888888),
                      ),
                      labelText: '| Message ',
                      labelStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                      ),
                      iconColor: const Color(0xFF999999),
                      /*floatingLabelStyle: TextStyle(
                          color: isName == true ? const Color(0xFF6895ED): Colors.redAccent,
                        ),*/
                      hintText: 'Enter Message',
                      hintStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF989898),
                      ),
                      prefixIcon: const Icon(
                        Icons.forum_rounded,
                        size: 35,
                        semanticLabel: 'Message Icon',
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 80,
                        minHeight: 90,
                      ),
                      prefixIconColor: const Color(0xFF999999),
                      suffixIcon: isMessage == true
                          ? const Icon(
                              Icons.done_all_rounded,
                              size: 35,
                              semanticLabel: 'Error Icon',
                            )
                          : const Icon(
                              Icons.remove_done_outlined,
                              size: 35,
                              semanticLabel: 'Error Icon',
                              color: Colors.redAccent,
                            ),
                      suffixIconConstraints: const BoxConstraints(
                        minWidth: 60,
                        minHeight: 60,
                      ),
                      suffixIconColor: const Color(0xFF999999),
                      errorText: isMessage ? null : 'required field',
                      errorStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Colors.redAccent,
                      ),
                      errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.redAccent),
                      ),
                    ),
                    onChanged: (inputText) {
                      if (inputText.isEmpty) {
                        setState(() {
                          isMessage = false;
                        });
                      } else {
                        setState(() {
                          isMessage = true;
                        });
                      }
                    },
                    onEditingComplete: () {
                      FocusScope.of(context).nextFocus();
                    },
                    validator: (inputText) {
                      if (inputText == null || inputText.isEmpty) {
                        return 'Please enter message';
                      }
                      return null;
                    },
                  ),
                ),
                // const SizedBox(
                //   height: 20,
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: TextFormField(
                    controller: _textEditingControllerPinCode,
                    autofocus: true,
                    obscureText: false,
                    maxLength: 6,
                    minLines: 1,
                    enabled: true,
                    mouseCursor: SystemMouseCursors.text,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.number,
                    showCursor: true,
                    focusNode: _focusNodePinCode,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF777777),
                    ),
                    decoration: InputDecoration(
                      isCollapsed: true,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 25, horizontal: 10),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF999999))),
                      counterStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF888888),
                      ),
                      labelText: '| Pin Code ',
                      labelStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                      ),
                      iconColor: const Color(0xFF999999),
                      /*floatingLabelStyle: TextStyle(
                          color: isName == true ? const Color(0xFF6895ED): Colors.redAccent,
                        ),*/
                      hintText: 'Enter Pin Code',
                      hintStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF989898),
                      ),
                      prefixIcon: const Icon(
                        Icons.confirmation_number,
                        size: 35,
                        semanticLabel: 'Pin Code Icon',
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 80,
                        minHeight: 90,
                      ),
                      prefixIconColor: const Color(0xFF999999),
                      suffixIcon: isPinCode == true
                          ? const Icon(
                              Icons.done_all_rounded,
                              size: 35,
                              semanticLabel: 'Error Icon',
                            )
                          : const Icon(
                              Icons.remove_done_outlined,
                              size: 35,
                              semanticLabel: 'Error Icon',
                              color: Colors.redAccent,
                            ),
                      suffixIconConstraints: const BoxConstraints(
                        minWidth: 60,
                        minHeight: 60,
                      ),
                      suffixIconColor: const Color(0xFF999999),
                      errorText: isPinCode ? null : 'required field',
                      errorStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Colors.redAccent,
                      ),
                      errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.redAccent),
                      ),
                    ),
                    onChanged: (inputText) {
                      if (inputText.isEmpty) {
                        setState(() {
                          isPinCode = false;
                        });
                      } else {
                        setState(() {
                          isPinCode = true;
                        });
                      }
                    },
                    onEditingComplete: () {
                      FocusScope.of(context).unfocus();
                    },
                    validator: (inputText) {
                      if (inputText == null || inputText.isEmpty) {
                        return 'Please enter pin Code';
                      }
                      return null;
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_textEditingControllerName.text.isNotEmpty &&
                        _textEditingControllerEmail.text.isNotEmpty &&
                        _textEditingControllerNumber.text.isNotEmpty &&
                        _textEditingControllerPassword.text.isNotEmpty &&
                        _textEditingControllerConformPassword.text.isNotEmpty &&
                        _textEditingControllerAddress.text.isNotEmpty &&
                        _textEditingControllerMessage.text.isNotEmpty &&
                        _textEditingControllerPinCode.text.isNotEmpty) {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                backgroundColor: const Color(0xFFF0F8FF),
                                contentPadding: const EdgeInsets.all(10),
                                title: const Text(
                                  'Input Text',
                                  style: TextStyle(
                                    fontSize: 35,
                                    letterSpacing: 10,
                                    wordSpacing: 10,
                                    color: Color(0xFF778899),
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  side: BorderSide(
                                    color: Color(0xFFF0F8FF),
                                    width: 2,
                                  ),
                                ),
                                content: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: 500,
                                  constraints: const BoxConstraints(
                                    minHeight: 350,
                                    maxHeight: 500,
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF0FFFF),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Name : ${_textEditingControllerName.text}', style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFF565656),
                                      ),),
                                      const SizedBox(height: 10, ),
                                      Text('Email ID : ${_textEditingControllerEmail.text}', style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFF565656),
                                      ),),
                                      const SizedBox(height: 10,),
                                      Text('Mobile NO. : ${_textEditingControllerNumber.text}', style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFF565656),
                                      ),),
                                      const SizedBox(height: 10,),
                                      Text('Password : ${_textEditingControllerPassword.text}', style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFF565656),
                                      ),),
                                      const SizedBox(height: 10,),
                                      Text('Address : ${_textEditingControllerAddress.text}', style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFF565656),
                                      ),),
                                      const SizedBox(height: 10,),
                                      Text('Message : ${_textEditingControllerMessage.text}', style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFF565656),
                                      ),),
                                      const SizedBox(height: 10,),
                                      Text('Pin Code : ${_textEditingControllerPinCode.text}', style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFF565656),
                                      ),),
                                    ],
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Cancel', style: TextStyle(
                                          fontSize: 25
                                      ),)
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Ok', style: TextStyle(
                                        fontSize: 25
                                      ),)
                                  ),
                                ],
                              ));
                    } else {
                      if (_textEditingControllerName.text.isEmpty) {
                        setState(() {
                          isName = false;
                        });
                      } else {
                        setState(() {
                          isName = true;
                        });
                      }
                      if (_textEditingControllerEmail.text.isEmpty) {
                        setState(() {
                          isEmail = false;
                        });
                      } else {
                        setState(() {
                          isEmail = true;
                        });
                      }
                      if (_textEditingControllerNumber.text.isEmpty) {
                        setState(() {
                          isNumber = false;
                        });
                      } else {
                        setState(() {
                          isNumber = true;
                        });
                      }
                      if (_textEditingControllerPassword.text.isEmpty) {
                        setState(() {
                          isPassword = false;
                        });
                      } else {
                        setState(() {
                          isPassword = true;
                        });
                      }
                      if (_textEditingControllerConformPassword.text.isEmpty) {
                        setState(() {
                          isConformPassword = false;
                        });
                      } else {
                        setState(() {
                          isConformPassword = true;
                        });
                      }
                      if (_textEditingControllerAddress.text.isEmpty) {
                        setState(() {
                          isAddress = false;
                        });
                      } else {
                        setState(() {
                          isAddress = true;
                        });
                      }
                      if (_textEditingControllerMessage.text.isEmpty) {
                        setState(() {
                          isMessage = false;
                        });
                      } else {
                        setState(() {
                          isMessage = true;
                        });
                      }
                      if (_textEditingControllerPinCode.text.isEmpty) {
                        setState(() {
                          isPinCode = false;
                        });
                      } else {
                        setState(() {
                          isPinCode = true;
                        });
                      }
                    }
                  },
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(const Size(200, 60)),
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
