
import 'package:figma_task_1/constants/image_constats.dart';
import 'package:figma_task_1/constants/text_contans.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'iphone_14.dart';

/// iphone 13

class Iphone13 extends StatefulWidget {
  const Iphone13({Key? key}) : super(key: key);

  @override
  State<Iphone13> createState() => _Iphone13PageState();
}

class _Iphone13PageState extends State<Iphone13> {
  bool password = false;
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(TextConst.appBarText13,style: TextStyle(fontSize: 28,color: Colors.black),),
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>  const Iphone14()));
            setState(() {
              //hello
            });
          },
          icon:const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30,top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
             TextConst.login,
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            /// email
            TextField(
              textInputAction: TextInputAction.next,
              style: const TextStyle(fontSize: 20),
              decoration: InputDecoration(
                filled: true,
                border: const UnderlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.blueGrey.shade100,
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                prefixIcon:  const Icon(
                  Icons.mail,
                  size: 22,
                  color: Colors.grey,
                ),
                prefixIconConstraints: const BoxConstraints(
                  minWidth: 60,
                ),
                hintText: "Email",
                hintStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            TextField(
              obscureText: password,
              style: const TextStyle(fontSize: 20),
              decoration: InputDecoration(
                filled: true,
                border: const UnderlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.blueGrey.shade100,
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                prefixIcon: const Icon(
                  CupertinoIcons.lock_fill,
                  size: 25,
                  color: Colors.grey,
                ),
                prefixIconConstraints: const BoxConstraints(
                  minWidth: 60,
                ),
                hintText: "Password",
                hintStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade600,
                ),
                suffixIcon: IconButton(
                  icon: password
                      ? Icon(
                    Icons.visibility_off,
                    color: Colors.blueGrey.shade400,
                  )
                      : Icon(
                    Icons.visibility,
                    color: Colors.blueGrey.shade400,
                  ),
                  onPressed: () {
                    setState(() {
                      password = !password;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 46,
            ),
            /// check box
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Row(
                children: [
                  Checkbox(
                    activeColor: const Color.fromARGB(255, 188, 0, 99),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                    side: const BorderSide(
                      width: 3,
                      color: Color.fromARGB(255, 188, 0, 99),
                    ),
                    value: check ? true : false,
                    onChanged: (bool? value) {
                      setState(() {
                        check = !check;
                      });
                    },
                  ),
                  const Text(
                    TextConst.checkBoxText,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 188, 0, 99),
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 188, 0, 99),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    )),
                onPressed: () {},
                child: const Text(
                  TextConst.signIn,
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                ),
              ),
            ),
            const SizedBox(height: 21,),
            const Center(
              child: Text(
                TextConst.forgot,
                style: TextStyle(
                  color: Color.fromARGB(255, 188, 0, 99),
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 40,),
            Row(
              children: [
                Container(
                  height: 1,
                  width: 120,
                  color: Colors.grey,
                ),
                const Text(TextConst.or,style: TextStyle(color: Colors.grey,fontSize: 16),),
                Container(
                  height: 1,
                  width: 120,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(height: 37,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    border: Border.all(color: Colors.black12),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Icon(
                      Icons.facebook,
                      size: 35,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    border: Border.all(color: Colors.black12),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade100,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        )),
                    onPressed: () {},
                    child: const Image(
                      image: AssetImage(ImageConst.googleLogo),
                      height: 30,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    border: Border.all(color: Colors.black12),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade200,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        )),
                    onPressed: () {},
                    child: const Image(
                      image: AssetImage(ImageConst.appleLogo),
                    ),
                  ),
                ),
              ],
            ),
             const SizedBox(height: 55),
            Center(
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                  children: [
                    const TextSpan(
                        text: TextConst.oldHaveAccount),
                    TextSpan(
                      text: TextConst.signUp,
                      style: const TextStyle(color: Color.fromARGB(255,188,0,99)),
                      recognizer: TapGestureRecognizer()..onTap = () {
                        debugPrint(TextConst.signUp);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


