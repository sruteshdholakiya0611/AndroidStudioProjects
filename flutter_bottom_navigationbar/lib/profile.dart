import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile{
  IconData icons;
  String title;
  String subTitle;

  Profile({
    required this.icons,
    required this.title,
    required this.subTitle,
  });
}

final List<Profile> _profile = <Profile>[
  Profile(icons: Icons.engineering, title: 'First Name', subTitle: 'User'),
  Profile(icons: Icons.supervisor_account_outlined, title: 'Last Name', subTitle: 'Surname'),
  Profile(icons: Icons.forum_rounded, title: 'Bio', subTitle: 'Dream Boy'),
  Profile(icons: FontAwesomeIcons.envelopeOpenText, title: 'E-Mail', subTitle: 'user@gmail.com'),
  Profile(icons: Icons.phone_in_talk_outlined, title: 'Phone', subTitle: '9876543210'),
  Profile(icons: Icons.person_pin_circle, title: 'Address', subTitle: 'surat, Gujarat'),
  Profile(icons: Icons.password_outlined, title: 'Password', subTitle: 'User@1234'),
];

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color(0xFFF0F8FF),
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListView(
            shrinkWrap: true,
            children: [
              Stack(
                children: [
                  Container(
                    height: 450,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      margin: const EdgeInsets.only(top: 100),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.add_a_photo_outlined,
                            size: 65,
                            color: Color(0xFF999999),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Click to add background image',
                            style: TextStyle(
                                fontSize: 25, color: Color(0xFF555555)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 450,
                    width: MediaQuery.of(context).size.width,
                    margin:
                        const EdgeInsets.only(top: 380, left: 20, right: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      margin: const EdgeInsets.only(top: 120),
                      padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'User Name',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.normal,
                                color: Color(0xFF778899),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            ElevatedButton(
                              onPressed: (){},
                              style: ButtonStyle(
                                fixedSize: MaterialStateProperty.all(const Size(350, 60)),
                                padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                                backgroundColor: MaterialStateProperty.all(const Color(0xFF1E90FF)),
                                elevation: MaterialStateProperty.all(2.5),
                                alignment: Alignment.center,
                                shadowColor: MaterialStateProperty.all(const Color(0xFF000000)),
                              ),
                              child: const Text('Preview', style: TextStyle(
                                fontSize: 25,
                              ),),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            const Divider(
                              thickness: 1.5,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                SizedBox(
                                  width: 25,
                                ),
                                FaIcon(
                                  FontAwesomeIcons.award,
                                  size: 40,
                                  color: Color(0xFF999999),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Text('B-Tech [Engineering]', style: TextStyle(
                                  fontSize: 27,
                                  color: Color(0xFF555555),
                                ),)
                              ],
                            ),
                          ],
                        ),
                    ),
                  ),
                  Positioned(
                      top: 280,
                      right: MediaQuery.of(context).size.width / 3.8,
                      height: 200,
                      width: 200,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: const Color(0xFFF0F8FF),
                            borderRadius: BorderRadius.circular(150)),
                        child: FaIcon(
                          FontAwesomeIcons.bookOpenReader,
                          size: 65,
                          color: const Color(0xFF6895ED).withOpacity(0.6),
                        ),
                      )),
                  Positioned(
                    top: 400,
                    right: 40,
                    height: 55,
                    width: 55,
                    child: IconButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const EditProfileScreen(),fullscreenDialog: true));
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.penToSquare,
                      ),
                      iconSize: 35,
                      color: const Color(0xFF999999),
                      padding: const EdgeInsets.all(8),
                      splashRadius: 40,
                      splashColor: const Color(0xFF6895ED),
                      hoverColor: const Color(0xFFB0C4DE),
                    ),
                  ),
                ],
              ),
              Container(
                height: 300,
                margin: const EdgeInsets.only(top: 50, left: 20, right: 20,),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                constraints: const BoxConstraints(
                  minHeight: 300,
                  maxHeight: 400,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        SizedBox(width: 20,),
                        Icon(Icons.person_pin, size: 60, color: Color(0xFF777777),),
                        SizedBox(width: 20,),
                        Text('About', style: TextStyle(
                          fontSize: 30,
                          color: Color(0xFF555555)
                        ),),
                        SizedBox(width: 145,),
                        Icon(Icons.add_task_rounded, size: 45, color: Color(0xFF999999),),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 100, right: 20, top: 10, bottom: 20),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 100, right: 20),
                      child: Text('Write about yourself, your experience or anything that attracts the recruiters.', style: TextStyle(
                        fontSize: 22.5,
                        color: Color(0xFF999999),
                        height: 1.35
                      ),),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              for (var item in _profile) Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Color(0xFFB0C4DE),
                      spreadRadius: 2,
                      // blurStyle: BlurStyle.outer,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: ListTile(
                    leading: Icon(
                      item.icons,
                      size: 50,
                    ),
                    iconColor: const Color(0xFF999999),
                    title: Text(item.title,
                      style: const TextStyle(fontSize: 28),
                    ),
                    textColor: const Color(0xFF777777),
                    subtitle: Text(item.subTitle,
                      style: const TextStyle(fontSize: 24),
                    ),
                    trailing: IconButton(onPressed: (){},
                      icon: const Icon(Icons.navigate_next_outlined),
                      iconSize: 35,
                      splashRadius: 50,
                      splashColor: const Color(0xFF6895ED),
                    ),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    contentPadding: const EdgeInsets.all(15),
                    style: ListTileStyle.drawer,
                    // selected: true,
                    // selectedTileColor: const Color(0xFFB0C4DE),
                    // selectedColor: const Color(0xFFFFFFFF),
                    horizontalTitleGap: 10,
                    minLeadingWidth: 80,
                    onTap: (){},
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {

  final TextEditingController _textEditingControllerName =
  TextEditingController();
  final TextEditingController _textEditingControllerLastName =
  TextEditingController();
  final TextEditingController _textEditingControllerEmail =
  TextEditingController();
  final TextEditingController _textEditingControllerNumber =
  TextEditingController();
  final TextEditingController _textEditingControllerPassword =
  TextEditingController();
  final TextEditingController _textEditingControllerConformPassword =
  TextEditingController();
  final TextEditingController _textEditingControllerAddress = TextEditingController();

  final FocusNode _focusNodeName = FocusNode();
  final FocusNode _focusNodeLastName = FocusNode();
  final FocusNode _focusNodeEmail = FocusNode();
  final FocusNode _focusNodeNumber = FocusNode();
  final FocusNode _focusNodePassword = FocusNode();
  final FocusNode _focusNodeConformPassword = FocusNode();
  final FocusNode _focusNodeAddress = FocusNode();

  bool isName = true;
  bool isLastName = true;
  bool isEmail = true;
  bool isNumber = true;
  bool isPassword = true;
  bool isObscurePassword = true;
  bool isObscureConformPassword = true;
  bool isConformPassword = true;
  bool isAddress = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: Container(
          margin: const EdgeInsets.only(left: 5, right: 5, top: 5),
          child: AppBar(
            title: const Text('Edit Details'),
            titleTextStyle: const TextStyle(
              fontFamily: 'Consolas',
              fontSize: 30,
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.normal,
              color: Color(0xFF555555),
            ),
            titleSpacing: 10,
            leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close_fullscreen_rounded),
              iconSize: 45,
              tooltip: 'Close',
            ),
            leadingWidth: 100,
            backgroundColor: const Color(0xFFF0F8FF),
            foregroundColor: const Color(0xFF555555),
            elevation: 0,
            scrolledUnderElevation: 5,
            toolbarHeight: 150,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xFFF0F8FF),
          borderRadius: BorderRadius.circular(5),
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
                      labelText: '| First Name ',
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
                      FocusScope.of(context).requestFocus(_focusNodeLastName);
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
                    controller: _textEditingControllerLastName,
                    autofocus: true,
                    obscureText: false,
                    maxLength: 40,
                    mouseCursor: SystemMouseCursors.text,
                    textCapitalization: TextCapitalization.words,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.name,
                    showCursor: true,
                    focusNode: _focusNodeLastName,
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
                      labelText: '| Last Name ',
                      labelStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                      ),
                      iconColor: const Color(0xFF999999),
                      /*floatingLabelStyle: TextStyle(
                        color: isName == true ? const Color(0xFF6895ED): Colors.redAccent,
                      ),*/
                      hintText: 'Enter LastName',
                      hintStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF989898),
                      ),
                      prefixIcon: const Icon(
                        Icons.supervisor_account_outlined,
                        size: 35,
                        semanticLabel: 'LastName Icon',
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 80,
                        minHeight: 90,
                      ),
                      prefixIconColor: const Color(0xFF999999),
                      suffixIcon: isLastName == true
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
                      errorText: isLastName ? null : 'required field',
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
                          isLastName = false;
                        });
                      } else {
                        setState(() {
                          isLastName = true;
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
                    obscureText: isObscurePassword,
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
                          ? (isObscurePassword == true
                          ? IconButton(
                          onPressed: () {
                            setState(() {
                              isObscurePassword = false;
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
                              isObscurePassword = true;
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
                    obscureText: isObscureConformPassword,
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
                              isObscureConformPassword = !isObscureConformPassword;
                            });
                          },
                          icon: Icon(
                            isObscureConformPassword == true
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
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    if ((_textEditingControllerName.text.isNotEmpty &&
                        _textEditingControllerLastName.text.isNotEmpty &&
                        _textEditingControllerEmail.text.isNotEmpty &&
                        _textEditingControllerNumber.text.isNotEmpty &&
                        _textEditingControllerPassword.text.isNotEmpty &&
                        _textEditingControllerConformPassword.text.isNotEmpty) &&
                        (_textEditingControllerAddress.text.isNotEmpty)) {
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
                                        'Name : ${_textEditingControllerName.text} ${_textEditingControllerLastName.text}',
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
                      if (_textEditingControllerLastName.text.isEmpty) {
                        setState(() {
                          isLastName = false;
                        });
                      } else {
                        setState(() {
                          isLastName = true;
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
                    'Update Profile',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
