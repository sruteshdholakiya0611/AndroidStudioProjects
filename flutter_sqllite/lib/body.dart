import 'package:flutter/material.dart';
import 'package:flutter_sqllite/appbar.dart';
import 'package:flutter_sqllite/drawer.dart';
import 'package:flutter_sqllite/floatingactionbutton.dart';

class BodyScreen extends StatefulWidget {
  const BodyScreen({Key? key}) : super(key: key);

  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
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

  final FocusNode _focusNodeName = FocusNode();
  final FocusNode _focusNodeEmail = FocusNode();
  final FocusNode _focusNodeNumber = FocusNode();
  final FocusNode _focusNodePassword = FocusNode();
  final FocusNode _focusNodeConformPassword = FocusNode();

  bool isName = true;
  bool isEmail = true;
  bool isNumber = true;
  bool isPassword = true;
  bool isObscure = true;
  bool isConformPassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Form(
        child: ListView(
            padding: const EdgeInsets.all(10),
            shrinkWrap: true,
            children: [
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: TextFormField(
                  controller: _textEditingControllerName,
                  autofocus: true,
                  obscureText: false,
                  maxLength: 40,
                  mouseCursor: SystemMouseCursors.text,
                  textCapitalization: TextCapitalization.words,
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
                    FocusScope.of(context).requestFocus(_focusNodeEmail);
                  },
                  validator: (inputText) {
                    if (inputText == null || inputText.isEmpty) {
                      return 'Please enter Name';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: TextFormField(
                  controller: _textEditingControllerEmail,
                  autofocus: true,
                  obscureText: false,
                  maxLength: 40,
                  textCapitalization: TextCapitalization.sentences,
                  mouseCursor: SystemMouseCursors.text,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  showCursor: true,
                  focusNode: _focusNodeEmail,
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
                  onEditingComplete: (){
                    FocusScope.of(context).requestFocus(_focusNodeNumber);
                  },
                  validator: (inputText) {
                    if (inputText == null || inputText.isEmpty) {
                      return 'Please enter emailID';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 25,
              ),
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
                  focusNode: _focusNodeNumber,
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
                  onEditingComplete: (){
                    FocusScope.of(context).requestFocus(_focusNodePassword);
                  },
                  validator: (inputText) {
                    if (inputText == null || inputText.isEmpty) {
                      return 'Please enter mobileNo.';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: TextFormField(
                  controller: _textEditingControllerPassword,
                  focusNode: _focusNodePassword,
                  autofocus: true,
                  obscureText: isObscure,
                  maxLength: 20,
                  textCapitalization: TextCapitalization.none,
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
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: TextFormField(
                  controller: _textEditingControllerConformPassword,
                  focusNode: _focusNodeConformPassword,
                  autofocus: true,
                  obscureText: isObscure,
                  maxLength: 20,
                  textCapitalization: TextCapitalization.none,
                  mouseCursor: SystemMouseCursors.text,
                  textInputAction: TextInputAction.done,
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
                    FocusScope.of(context).unfocus();
                  },
                  validator: (inputText) {
                    if (inputText == null || inputText.isEmpty) {
                      return 'Please enter conform password.';
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
              //   height: 25,
              // ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(vertical: 20.0),
              //   child: TextFormField(
              //     controller: _textEditingControllerAddress,
              //     autofocus: true,
              //     obscureText: false,
              //     maxLength: 100,
              //     maxLines: 6,
              //     minLines: 4,
              //     enabled: true,
              //     focusNode: _focusNodeAddress,
              //     mouseCursor: SystemMouseCursors.text,
              //     textCapitalization: TextCapitalization.sentences,
              //     textInputAction: TextInputAction.next,
              //     keyboardType: TextInputType.text,
              //     showCursor: true,
              //     style: const TextStyle(
              //       fontSize: 25,
              //       fontWeight: FontWeight.normal,
              //       color: Color(0xFF777777),
              //     ),
              //     decoration: InputDecoration(
              //       isCollapsed: true,
              //       contentPadding: const EdgeInsets.symmetric(
              //           vertical: 25, horizontal: 10),
              //       border: const OutlineInputBorder(
              //           borderSide: BorderSide(color: Color(0xFF999999))),
              //       counterStyle: const TextStyle(
              //         fontSize: 18,
              //         fontWeight: FontWeight.normal,
              //         color: Color(0xFF888888),
              //       ),
              //       labelText: '| Address ',
              //       labelStyle: const TextStyle(
              //         fontSize: 25,
              //         fontWeight: FontWeight.normal,
              //       ),
              //       iconColor: const Color(0xFF999999),
              //       /*floatingLabelStyle: TextStyle(
              //           color: isName == true ? const Color(0xFF6895ED): Colors.redAccent,
              //         ),*/
              //       hintText: 'Enter Address',
              //       hintStyle: const TextStyle(
              //         fontSize: 25,
              //         fontWeight: FontWeight.normal,
              //         color: Color(0xFF989898),
              //       ),
              //       prefixIcon: const Icon(
              //         Icons.my_location,
              //         size: 35,
              //         semanticLabel: 'Address Icon',
              //       ),
              //       prefixIconConstraints: const BoxConstraints(
              //         minWidth: 80,
              //         minHeight: 90,
              //       ),
              //       prefixIconColor: const Color(0xFF999999),
              //       suffixIcon: isAddress == true
              //           ? const Icon(
              //               Icons.done_all_rounded,
              //               size: 35,
              //               semanticLabel: 'Error Icon',
              //             )
              //           : const Icon(
              //               Icons.remove_done_outlined,
              //               size: 35,
              //               semanticLabel: 'Error Icon',
              //               color: Colors.redAccent,
              //             ),
              //       suffixIconConstraints: const BoxConstraints(
              //         minWidth: 60,
              //         minHeight: 60,
              //       ),
              //       suffixIconColor: const Color(0xFF999999),
              //       errorText: isAddress ? null : 'required field',
              //       errorStyle: const TextStyle(
              //         fontSize: 25,
              //         fontWeight: FontWeight.normal,
              //         color: Colors.redAccent,
              //       ),
              //       errorBorder: const OutlineInputBorder(
              //         borderSide: BorderSide(color: Colors.redAccent),
              //       ),
              //     ),
              //     onChanged: (inputText) {
              //       if (inputText.isEmpty) {
              //         setState(() {
              //           isAddress = false;
              //         });
              //       } else {
              //         setState(() {
              //           isAddress = true;
              //         });
              //       }
              //     },
              //     onEditingComplete: () {
              //       FocusScope.of(context).nextFocus();
              //     },
              //     validator: (inputText) {
              //       if (inputText == null || inputText.isEmpty) {
              //         return 'Please enter address';
              //       }
              //       return null;
              //     },
              //   ),
              // ),
              const SizedBox(
                height: 30,
              ),
              /*ElevatedButton(
                  onPressed: () {
                    if (_textEditingControllerName.text.isNotEmpty &&
                        _textEditingControllerEmail.text.isNotEmpty &&
                        _textEditingControllerNumber.text.isNotEmpty &&
                        _textEditingControllerPassword.text.isNotEmpty &&
                        _textEditingControllerConformPassword.text.isNotEmpty &&
                        _textEditingControllerAddress.text.isNotEmpty) {
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Name : ${_textEditingControllerName.text}',
                                        style: const TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xFF565656),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Email ID : ${_textEditingControllerEmail.text}',
                                        style: const TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xFF565656),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Mobile NO. : ${_textEditingControllerNumber.text}',
                                        style: const TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xFF565656),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Password : ${_textEditingControllerPassword.text}',
                                        style: const TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xFF565656),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Address : ${_textEditingControllerAddress.text}',
                                        style: const TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xFF565656),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        'Cancel',
                                        style: TextStyle(fontSize: 25),
                                      )),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        'Ok',
                                        style: TextStyle(fontSize: 25),
                                      )),
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
                ),*/
              Container(
                alignment: Alignment.topLeft,
                child: ElevatedButton(
                  onPressed: () {
                    /*if (_textEditingControllerName.text.isNotEmpty &&
                          _textEditingControllerEmail.text.isNotEmpty &&
                          _textEditingControllerNumber.text.isNotEmpty &&
                          _textEditingControllerPassword.text.isNotEmpty &&
                          _textEditingControllerConformPassword.text.isNotEmpty &&
                          _textEditingControllerAddress.text.isNotEmpty) {
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
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Name : ${_textEditingControllerName.text}',
                                      style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFF565656),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Email ID : ${_textEditingControllerEmail.text}',
                                      style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFF565656),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Mobile NO. : ${_textEditingControllerNumber.text}',
                                      style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFF565656),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Password : ${_textEditingControllerPassword.text}',
                                      style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFF565656),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Address : ${_textEditingControllerAddress.text}',
                                      style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFF565656),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      'Cancel',
                                      style: TextStyle(fontSize: 25),
                                    )),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      'Ok',
                                      style: TextStyle(fontSize: 25),
                                    )),
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
                      }*/
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddressScreen()));
                  },
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(const Size(200, 60)),
                    elevation: MaterialStateProperty.all(5),
                    mouseCursor:
                        MaterialStateProperty.all(SystemMouseCursors.click),
                    shadowColor:
                        MaterialStateProperty.all(const Color(0xFF999999)),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(10)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.format_textdirection_l_to_r_rounded,
                        size: 40,
                        semanticLabel: 'Next Icon',
                      ),
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}

class AddressScreen extends StatefulWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  final TextEditingController _textEditingControllerAddress =
      TextEditingController();
  final TextEditingController _textEditingControllerApartmentNo = TextEditingController();
  final TextEditingController _textEditingControllerApartmentAddress = TextEditingController();
  final TextEditingController _textEditingControllerCity = TextEditingController();
  final TextEditingController _textEditingControllerPinCode =
      TextEditingController();
  final TextEditingController _textEditingControllerState = TextEditingController();

  final FocusNode _focusNodeAddress = FocusNode();
  final FocusNode _focusNodeApartmentNo = FocusNode();
  final FocusNode _focusNodeApartmentAddress = FocusNode();
  final FocusNode _focusNodeCity = FocusNode();
  final FocusNode _focusNodePinCode = FocusNode();
  final FocusNode _focusNodeState = FocusNode();
  final FocusNode _focusNodeCountry = FocusNode();

  bool isAddress = true;
  bool isApartmentNo = true;
  bool isApartmentAddress = true;
  bool isCity = true;
  bool isPinCode = true;
  bool isState = true;

  String _selectedItem = 'India';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: AppbarScreen(title: 'Flutter SQLite')),
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
        child: Form(
          child: ListView(
              padding: const EdgeInsets.all(10),
              shrinkWrap: true,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: const [
                      Icon(Icons.format_textdirection_l_to_r_rounded,
                        size: 50,
                        color: Color(0xFFC0C0C0),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Address...',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFFC0C0C0),
                          letterSpacing: 8,
                          shadows: [
                            Shadow(
                              color: Color(0xFFB0C4DE),
                              blurRadius: 1.05,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: TextFormField(
                    controller: _textEditingControllerAddress,
                    autofocus: true,
                    obscureText: false,
                    maxLength: 250,
                    maxLines: 6,
                    minLines: 4,
                    enabled: true,
                    focusNode: _focusNodeAddress,
                    mouseCursor: SystemMouseCursors.text,
                    textCapitalization: TextCapitalization.sentences,
                    textInputAction: TextInputAction.done,
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
                      FocusScope.of(context).unfocus();
                    },
                    validator: (inputText) {
                      if (inputText == null || inputText.isEmpty) {
                        return 'Please enter address';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text('------------- or -------------',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(
                  fontSize: 25,
                  color: Color(0xFF777777),
                ),),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: TextFormField(
                    controller: _textEditingControllerApartmentNo,
                    autofocus: false,
                    obscureText: false,
                    maxLength: 10,
                    minLines: 1,
                    enabled: true,
                    textCapitalization: TextCapitalization.words,
                    mouseCursor: SystemMouseCursors.text,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    showCursor: true,
                    focusNode: _focusNodeApartmentNo,
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
                      labelText: '| House, Building No.',
                      labelStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                      ),
                      iconColor: const Color(0xFF999999),
                      /*floatingLabelStyle: TextStyle(
                          color: isName == true ? const Color(0xFF6895ED): Colors.redAccent,
                        ),*/
                      hintText: 'Enter House & Building No. ',
                      hintStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF989898),
                      ),
                      prefixIcon: const Icon(
                        Icons.house_outlined,
                        size: 35,
                        semanticLabel: 'House & Building Icon',
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 80,
                        minHeight: 90,
                      ),
                      prefixIconColor: const Color(0xFF999999),
                      suffixIcon: isApartmentNo == true
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
                      errorText: isApartmentNo ? null : 'required field',
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
                          isApartmentNo = false;
                        });
                      } else {
                        setState(() {
                          isApartmentNo = true;
                        });
                      }
                    },
                    onEditingComplete: () {
                      FocusScope.of(context).requestFocus(_focusNodeApartmentAddress);
                    },
                    validator: (inputText) {
                      if (inputText == null || inputText.isEmpty) {
                        return 'Please enter apartment, building No';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: TextFormField(
                    controller: _textEditingControllerApartmentAddress,
                    autofocus: false,
                    obscureText: false,
                    maxLength: 200,
                    minLines: 1,
                    enabled: true,
                    textCapitalization: TextCapitalization.sentences,
                    mouseCursor: SystemMouseCursors.text,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    showCursor: true,
                    focusNode: _focusNodeApartmentAddress,
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
                      labelText: '| House, Building Address',
                      labelStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                      ),
                      iconColor: const Color(0xFF999999),
                      /*floatingLabelStyle: TextStyle(
                          color: isName == true ? const Color(0xFF6895ED): Colors.redAccent,
                        ),*/
                      hintText: 'Enter Apartment, house Address.. ',
                      hintStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF989898),
                      ),
                      prefixIcon: const Icon(
                        Icons.account_balance_outlined,
                        size: 35,
                        semanticLabel: 'Apartment, house Address Icon',
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 80,
                        minHeight: 90,
                      ),
                      prefixIconColor: const Color(0xFF999999),
                      suffixIcon: isApartmentAddress == true
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
                      errorText: isApartmentAddress ? null : 'required field',
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
                          isApartmentAddress = false;
                        });
                      } else {
                        setState(() {
                          isApartmentAddress = true;
                        });
                      }
                    },
                    onEditingComplete: () {
                      FocusScope.of(context).requestFocus(_focusNodeCity);
                    },
                    validator: (inputText) {
                      if (inputText == null || inputText.isEmpty) {
                        return 'Please enter apartment address';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: TextFormField(
                    controller: _textEditingControllerCity,
                    autofocus: false,
                    obscureText: false,
                    maxLength: 20,
                    minLines: 1,
                    enabled: true,
                    textCapitalization: TextCapitalization.words,
                    mouseCursor: SystemMouseCursors.text,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    showCursor: true,
                    focusNode: _focusNodeCity,
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
                      labelText: '| City',
                      labelStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                      ),
                      iconColor: const Color(0xFF999999),
                      /*floatingLabelStyle: TextStyle(
                          color: isName == true ? const Color(0xFF6895ED): Colors.redAccent,
                        ),*/
                      hintText: 'Enter City ',
                      hintStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF989898),
                      ),
                      prefixIcon: const Icon(
                        Icons.camera_roll_outlined,
                        size: 35,
                        semanticLabel: 'City Icon',
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 80,
                        minHeight: 90,
                      ),
                      prefixIconColor: const Color(0xFF999999),
                      suffixIcon: isCity == true
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
                      errorText: isCity ? null : 'required field',
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
                          isCity = false;
                        });
                      } else {
                        setState(() {
                          isCity = true;
                        });
                      }
                    },
                    onEditingComplete: () {
                      FocusScope.of(context).requestFocus(_focusNodePinCode);
                    },
                    validator: (inputText) {
                      if (inputText == null || inputText.isEmpty) {
                        return 'Please enter City';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: TextFormField(
                    controller: _textEditingControllerPinCode,
                    autofocus: false,
                    obscureText: false,
                    maxLength: 6,
                    minLines: 1,
                    enabled: true,
                    mouseCursor: SystemMouseCursors.text,
                    textInputAction: TextInputAction.next,
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
                        Icons.confirmation_number_outlined,
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
                      FocusScope.of(context).requestFocus(_focusNodeState);
                    },
                    validator: (inputText) {
                      if (inputText == null || inputText.isEmpty) {
                        return 'Please enter pin Code';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: TextFormField(
                    controller: _textEditingControllerState,
                    autofocus: false,
                    obscureText: false,
                    maxLength: 10,
                    minLines: 1,
                    enabled: true,
                    textCapitalization: TextCapitalization.words,
                    mouseCursor: SystemMouseCursors.text,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    showCursor: true,
                    focusNode: _focusNodeState,
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
                      labelText: '| State',
                      labelStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                      ),
                      iconColor: const Color(0xFF999999),
                      /*floatingLabelStyle: TextStyle(
                          color: isName == true ? const Color(0xFF6895ED): Colors.redAccent,
                        ),*/
                      hintText: 'Enter State ',
                      hintStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF989898),
                      ),
                      prefixIcon: const Icon(
                        Icons.map_rounded,
                        size: 35,
                        semanticLabel: 'State Icon',
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 80,
                        minHeight: 90,
                      ),
                      prefixIconColor: const Color(0xFF999999),
                      suffixIcon: isState == true
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
                      errorText: isState ? null : 'required field',
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
                          isState = false;
                        });
                      } else {
                        setState(() {
                          isState = true;
                        });
                      }
                    },
                    onEditingComplete: () {
                      FocusScope.of(context).requestFocus(_focusNodeCountry);
                    },
                    validator: (inputText) {
                      if (inputText == null || inputText.isEmpty) {
                        return 'Please enter state';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      isCollapsed: true,
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 25, horizontal: 10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF999999))),
                      counterStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF888888),
                      ),
                      labelText: '| Country',
                      labelStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                      ),
                      iconColor: Color(0xFF999999),
                      // hintText: 'Choose Country ',
                      // hintStyle: const TextStyle(
                      //   fontSize: 25,
                      //   fontWeight: FontWeight.normal,
                      //   color: Color(0xFF989898),
                      // ),
                      prefixIcon: Icon(
                        Icons.gps_fixed_rounded,
                        size: 35,
                        semanticLabel: 'State Icon',
                      ),
                      prefixIconConstraints: BoxConstraints(
                        minWidth: 80,
                        minHeight: 90,
                      ),
                      prefixIconColor: Color(0xFF999999),
                      suffixIcon: Icon(
                        Icons.unfold_more_rounded,
                        size: 40,
                        semanticLabel: 'DropDown List Icon',
                      ),
                      suffixIconConstraints: BoxConstraints(
                        minWidth: 60,
                        minHeight: 60,
                      ),
                      suffixIconColor: Color(0xFF999999),
                    ),
                    style: const TextStyle(
                      fontFamily: 'Consolas',
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF777777),
                    ),
                    value: _selectedItem,
                    items: <String>[
                      'India',
                      'USA',
                      'New Zealand',
                      'Australia',
                      'UK',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    // icon: const Icon(
                    //   Icons.format_list_bulleted_outlined,
                    //   size: 35,
                    //   semanticLabel: 'Error Icon',
                    // ),
                    iconSize: 0,
                    // iconEnabledColor: const Color(0xFF6895ED),
                    // iconDisabledColor: const Color(0xFF999999),
                    hint: const Text(
                      'Choose Country',
                      style: TextStyle(
                        fontFamily: 'Consolas',
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF989898),
                      )
                    ),
                    focusNode: _focusNodeCountry,
                    onChanged: (value) {
                        setState(() {
                          _selectedItem = value!;
                        });
                    },
                    onSaved: (inputValue){
                      FocusScope.of(context).unfocus();
                    },
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ButtonStyle(
                          fixedSize:
                              MaterialStateProperty.all(const Size(250, 60)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              'Previous',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.format_textdirection_r_to_l_rounded,
                              size: 40,
                              semanticLabel: 'Previous Icon',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: ElevatedButton(
                        onPressed: () {
                          if ((_textEditingControllerAddress.text.isNotEmpty) ||
                              (_textEditingControllerApartmentNo.text.isNotEmpty &&
                              _textEditingControllerApartmentAddress.text.isNotEmpty &&
                              _textEditingControllerCity.text.isNotEmpty &&
                              _textEditingControllerPinCode.text.isNotEmpty &&
                          _textEditingControllerState.text.isNotEmpty && _selectedItem.isNotEmpty)
                          ) {
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        side: BorderSide(
                                          color: Color(0xFFF0F8FF),
                                          width: 2,
                                        ),
                                      ),
                                      content: Container(
                                        height:
                                            MediaQuery.of(context).size.height,
                                        width: 500,
                                        constraints: const BoxConstraints(
                                          minHeight: 150,
                                          maxHeight: 250,
                                        ),
                                        padding: const EdgeInsets.all(10),
                                        margin: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFF0FFFF),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              _textEditingControllerAddress.text.isNotEmpty ?
                                              'Address : ${_textEditingControllerAddress.text}' : 'Address : ${_textEditingControllerApartmentNo.text},'
                                                  '\n${_textEditingControllerApartmentAddress.text},'
                                                  '\n${_textEditingControllerCity.text},'
                                                  '\n${_textEditingControllerPinCode.text},'
                                                  '\n${_textEditingControllerState.text},'
                                                  '\n$_selectedItem.',
                                              style: const TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.normal,
                                                color: Color(0xFF565656),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            /*const Text('---------- or ----------',
                                              textAlign: TextAlign.center,
                                              softWrap: true,
                                              style: TextStyle(
                                                fontSize: 25,
                                                color: Color(0xFF777777),
                                              ),),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Address : ${_textEditingControllerApartmentNo.text},'
                                                  '\n${_textEditingControllerApartmentAddress.text},'
                                                  '\n${_textEditingControllerCity.text},'
                                                  '\n${_textEditingControllerPinCode.text},'
                                                  '\n${_textEditingControllerState.text},'
                                                  '\n$_selectedItem.',
                                              style: const TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.normal,
                                                color: Color(0xFF565656),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),*/
                                          ],
                                        ),
                                      ),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text(
                                              'Cancel',
                                              style: TextStyle(fontSize: 25),
                                            )),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text(
                                              'Ok',
                                              style: TextStyle(fontSize: 25),
                                            )),
                                      ],
                                    ));
                          } else {
                            if(_textEditingControllerAddress.text.isEmpty /*|| (
                                _textEditingControllerApartmentNo.text.isNotEmpty &&
                                _textEditingControllerApartmentAddress.text.isNotEmpty &&
                                _textEditingControllerCity.text.isNotEmpty &&
                                _textEditingControllerPinCode.text.isNotEmpty &&
                                _textEditingControllerState.text.isNotEmpty && _selectedItem.isNotEmpty)*/){
                              if (_textEditingControllerAddress.text.isEmpty) {
                                setState(() {
                                  isAddress = false;
                                });
                              } else {
                                setState(() {
                                  isAddress = true;
                                });
                              }
                            }
                            else {
                              if (_textEditingControllerApartmentNo.text.isEmpty &&
                                  _textEditingControllerApartmentAddress.text.isEmpty &&
                                  _textEditingControllerCity.text.isEmpty &&
                                  _textEditingControllerPinCode.text.isEmpty &&
                                  _textEditingControllerState.text.isEmpty) {
                                if (_textEditingControllerApartmentNo.text
                                    .isEmpty) {
                                  setState(() {
                                    isApartmentNo = false;
                                  });
                                } else {
                                  setState(() {
                                    isApartmentNo = true;
                                  });
                                }
                                if (_textEditingControllerApartmentAddress.text
                                    .isEmpty) {
                                  setState(() {
                                    isApartmentAddress = false;
                                  });
                                } else {
                                  setState(() {
                                    isApartmentAddress = true;
                                  });
                                }
                                if (_textEditingControllerCity.text.isEmpty) {
                                  setState(() {
                                    isCity = false;
                                  });
                                } else {
                                  setState(() {
                                    isCity = true;
                                  });
                                }
                                if (_textEditingControllerPinCode.text
                                    .isEmpty) {
                                  setState(() {
                                    isPinCode = false;
                                  });
                                } else {
                                  setState(() {
                                    isPinCode = true;
                                  });
                                }
                                if (_textEditingControllerState.text.isEmpty) {
                                  setState(() {
                                    isState = false;
                                  });
                                } else {
                                  setState(() {
                                    isState = true;
                                  });
                                }
                              }
                            }
                          }
                        },
                        style: ButtonStyle(
                          fixedSize:
                              MaterialStateProperty.all(const Size(150, 60)),
                        ),
                        child: const Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
              ]),
        ),
      ),
      drawer: const DrawerScreen(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: const FloatingActionButtonScreen(),
    );
  }
}

/*class DynamicTextField extends StatefulWidget {
  const DynamicTextField({Key? key}) : super(key: key);

  @override
  State<DynamicTextField> createState() => _DynamicTextFieldState();
}

class _DynamicTextFieldState extends State<DynamicTextField> {

  late int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic TextField'),
        titleTextStyle: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.normal,
          fontFamily: 'Consolas',
          letterSpacing: 6,
          wordSpacing: 6,
        ),
        backgroundColor: const Color(0xFF6895ED),
        toolbarHeight: 160,
        actions: [
          IconButton(onPressed: (){
              setState((){
                count++;
              });
            },
            icon: const Icon(Icons.post_add_outlined),
            iconSize: 45,
            splashColor: const Color(0xFF6895ED),
            splashRadius: 45,
          ),
          IconButton(onPressed: (){
            setState((){
              count--;
            });
          },
            icon: const Icon(Icons.remove_done_outlined),
            iconSize: 45,
            splashColor: const Color(0xFF6895ED),
            splashRadius: 45,
          ),
          IconButton(onPressed: (){
            setState((){
              count = 0;
            });
          },
            icon: const Icon(Icons.refresh_outlined),
            iconSize: 45,
            splashColor: const Color(0xFF6895ED),
            splashRadius: 45,
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        child: ListView.builder(itemBuilder: (context, index)=>
            TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Label $index'
              ),
            ),
            itemCount: count,
          itemExtent: 100,
        ),
      ),
    );
  }
}*/

