import 'package:flutter/material.dart';

class TransactionPageUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      // resizeToAvoidBottomInset: t,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined),
          onPressed: () {},
          color: Colors.black,
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
              color: Colors.black),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: size.height*.20),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(
                //   height: size.height * .20,
                // ),
                Text("Start Your Transaction",
                    // style: GoogleFonts.poppins(
                    //   textStyle:
                    //   TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    // )
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.only(left: 15, right: 15, ),
                  margin: EdgeInsets.only(left: size.width>481?80:40, right: size.width>481?80:40),
                  //padding: EdgeInsets.only(left: 20,right: 20),
                  decoration: BoxDecoration(
                    // border: ,
                    color: Colors.indigo,//HexColor("#E5EBF3"),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: TextField(
                    autofocus: true,
                    showCursor: false,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              //  Chips()

              ],
            ),
          ),
         // FooterUi()
        ],
      ),
    );
  }
}
