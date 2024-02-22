import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

void main() {
  runApp(const SOSpage());
}

class SOSpage extends StatelessWidget {
  const SOSpage({super.key});
  //void _handleEmergencyButtonPress() {
  //   // Replace '123456789' with the actual recipient's phone number
  //   String recipientNumber = '123456789';
  //
  //   // Replace 'Hello, this is an SMS from Flutter!' with your desired message
  //   String message = 'Hello, this is an SMS from Flutter!';
  //
  //   SmsSender sender = SmsSender();
  //   SmsMessage smsMessage = SmsMessage(recipientNumber, message);
  //
  //   sender.sendSms(smsMessage);
  //
  //   print('SMS sent to $recipientNumber: $message');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        automaticallyImplyLeading: false,
        actions: const [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        top: true,
        child: Material(
          color: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(0),
              shape: BoxShape.rectangle,
            ),
            alignment: const AlignmentDirectional(0, 0),
            child: Align(
              alignment: const AlignmentDirectional(0, -1),
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Align(
                      alignment: AlignmentDirectional(0, -1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 10),
                        child: Text(
                          'Emergency help\nNeeded?',
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: TextStyle(
                            fontFamily: 'Reade Pro',
                            color: Colors.white,
                            fontSize: 25,
                            letterSpacing: 0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 51,
                        child: Container(
                          // decoration: BoxDecoration(),
                          // border: Border.all(
                          //     color: Colors.red.shade400, width: 10),
                          // color: Colors.black,
                          // borderRadius:
                          //     BorderRadius.circular(90.0)), //<-- SEE HERE
                          child: InkWell(
                            borderRadius: BorderRadius.circular(100.0),
                            onTap: () {},
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(
                                // Iconsax.radio2,
                                //Icons.radar,
                                Icons.wifi_tethering_rounded,
                                size: 132,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, -1),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                          child: Text(
                            'press the button to send sos',
                            style: TextStyle(
                              fontFamily: 'Reade Pro',
                              color: Color(0xFF636363),
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Align(
                        alignment: const AlignmentDirectional(0, -1),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20, 20, 20, 20),
                          child: GridView(
                            // padding: const EdgeInsets.fromLTRB(
                            //   10,
                            //   10,
                            //   0,
                            //   10,
                            // ),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 25,
                              mainAxisSpacing: 30,
                              childAspectRatio: 1,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              Align(
                                  alignment: const AlignmentDirectional(-1, -1),
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 51,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(60),
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.local_police_outlined,
                                        ),
                                        color: Colors.blue[700],
                                        iconSize: 120,
                                      ),
                                      // child: Container(
                                      //   width: double.infinity,
                                      //   height: double.infinity,
                                      //   decoration: BoxDecoration(
                                      //     color: const Color(0xFF242829),
                                      //     image: DecorationImage(
                                      //       // fit: BoxFit.none,
                                      //
                                      //       //fit: BoxFit.contain,
                                      //       image: Image.asset("assets/11.png")
                                      //           .image,
                                      //     ),
                                      //     boxShadow: const [
                                      //       BoxShadow(
                                      //           offset: Offset(10, 10),
                                      //           blurRadius: 2,
                                      //           color: Colors.grey)
                                      //     ],
                                      //     borderRadius: BorderRadius.circular(60),
                                      //     //  shape: BoxShape.rectangle,
                                      //     //border: Border.all(color: Colors.white60),
                                      //   ),
                                      //   //
                                    ),
                                  )),
                              Align(
                                alignment: const AlignmentDirectional(-1, -1),
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Material(
                                      color: Colors.transparent,
                                      elevation: 50,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Iconsax.alarm,
                                        ),
                                        color: Colors.deepPurple[900],
                                        iconSize: 100,
                                      )
                                      // child: Container(
                                      //width: double.infinity,
                                      //   height: double.infinity,
                                      //   decoration: BoxDecoration(
                                      //     color: const Color(0xFF242829),
                                      //     image: DecorationImage(
                                      //       //   fit: BoxFit.none,
                                      //       image:
                                      //           Image.asset("assets/22.png").image,
                                      //     ),
                                      //     boxShadow: const [
                                      //       BoxShadow(
                                      //           offset: Offset(10, 10),
                                      //           blurRadius: 2,
                                      //           color: Colors.grey)
                                      //     ],
                                      //     borderRadius: BorderRadius.circular(60),
                                      //     //shape: BoxShape.rectangle,
                                      //     // border: Border.all(color: Colors.white30),
                                      //   ),
                                      // ),
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1, -1),
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Material(
                                      color: Colors.transparent,
                                      elevation: 51,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(60),
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.phone,
                                        ),
                                        color: Colors.green,
                                        iconSize: 120,
                                      )
                                      // child: Container(
                                      //   width: double.infinity,
                                      //   height: double.infinity,
                                      //   decoration: BoxDecoration(
                                      //     color: const Color(0xFF242829),
                                      //     image: DecorationImage(
                                      //       // fit: BoxFit.none,
                                      //       image:
                                      //           Image.asset('assets/33.png').image,
                                      //     ),
                                      //     boxShadow: const [
                                      //       BoxShadow(
                                      //           offset: Offset(10, 10),
                                      //           blurRadius: 2,
                                      //           color: Colors.grey)
                                      //     ],
                                      //     borderRadius: BorderRadius.circular(60),
                                      //     //  shape: BoxShape.rectangle,
                                      //     // border: Border.all(color: Colors.white),
                                      //   ),
                                      // ),
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1, -1),
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 51,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(60),
                                    ),
                                    child: IconButton(
                                      style: ButtonStyle(
                                          //elevation: 10,
                                          ),
                                      onPressed: () {},
                                      icon: const Icon(
                                        Iconsax.map,
                                      ),
                                      color: Colors.pink[700],
                                      iconSize: 120,
                                    ),
                                    // child: InkWell(
                                    //   child: Container(
                                    //     width: double.infinity,
                                    //     height: double.infinity,
                                    //     decoration: BoxDecoration(
                                    //       color: const Color(0xFF242829),
                                    //       image: DecorationImage(
                                    //         //fit: BoxFit.none,
                                    //         image: Image.asset("assets/44.png")
                                    //             .image,
                                    //       ),
                                    //       boxShadow: const [
                                    //         BoxShadow(
                                    //             offset: Offset(10, 10),
                                    //             blurRadius: 2,
                                    //             spreadRadius: 2,
                                    //             color: Colors.grey)
                                    //       ],
                                    //       borderRadius: BorderRadius.circular(60),
                                    //       // shape: BoxShape.rectangle,
                                    //       // border: Border.all(color: Colors.white),
                                    //     ),
                                    //   ),
                                    // ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
