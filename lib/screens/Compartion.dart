import "package:flutter/material.dart";
import 'package:maqw/widget/navigationbottom.dart';
import 'package:maqw/widget/searchwidget.dart';
import '../main.dart';
import 'ContactUs.dart';
import 'Colors.dart';
import 'AllPhone.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



class compartion extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return compartionState();
  }
}
class compartionState extends State<compartion> {
  String? stringResponse;
  List listResponse = [];
  Map  mapResponse={};

  Future apicall() async{
    http.Response response;
    //here i put request url
    response=await http.get(Uri.parse(" "));
    if(response.statusCode==200){
       setState((){
         mapResponse=json.decode(response.body);
         listResponse=  mapResponse['devicedata'];

       });
    }
  }
  @override
  void initState(){
    apicall();
    super.initState();
  }
  void selectScreen(BuildContext ctx, String s) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      if (s == 'Compartion')
        return compartion();
      else if (s == "allphone")
        return allPhone();
      else
        return MyHomePage();
    }));
  }

  Widget addPhone() {
    return Stack(alignment: AlignmentDirectional.center, children: [
      Container(
        alignment: AlignmentDirectional.centerStart,
        width: 150,
        height: 250,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(color: w),
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(color: verygrey, blurRadius: 4.0, offset: Offset(0, 3)),
            BoxShadow(color: w, offset: Offset(-2, 0)),
            BoxShadow(color: w, offset: Offset(1, 0)),
            BoxShadow(color: w, offset: Offset(0, -0.5)),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                alignment: AlignmentDirectional.topEnd,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.close_rounded,
                      size: 30,
                      color: Greycolor,
                    ))),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/compartion/add (1).png'),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                    splashColor: b,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  search()));
                      // DraggableScrollableSheet(
                      //     initialChildSize: 0.4,
                      //     minChildSize: 0.1,
                      //     maxChildSize: 0.8,
                      //     builder: (context, controller) =>
                      //         ClipRRect(
                      //           borderRadius: BorderRadius.circular(12),
                      //           child: Container(
                      //             color: Colors.white70,
                      //             child: ListView.builder(
                      //                 controller: controller,
                      //                 itemCount: allphone.length,
                      //                 itemBuilder: (context, index) {
                      //                   final phone =allphone[index];
                      //                   return bulidPhone(phone);
                      //                 }),
                      //           ),
                      //         ));
                    },
                    child: Text(
                      'Add Phone',
                      style: TextStyle(fontSize: 17, color: Bluecolor),
                      textAlign: TextAlign.start,
                    )),
              ],
            ),
          ],
        ),
      ),
      InkWell(
        onTap: () {},
        child:
        Ink.image(image: AssetImage('assets/images/compartion/close.png')),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Bluecolor,
        title: Text(
          'Compartion',
          style: TextStyle(color: w),
        ),
      ),
      body: ListView(
        children: [
          Container(
            alignment: AlignmentDirectional.topCenter,
            color: w,
            padding: EdgeInsets.only(top: 15, left: 20, right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                addPhone(),
                SizedBox(
                  width: 20,
                ),
                addPhone(),

              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
              child: Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [

                  //for All Lines
                  Lines(),
                  //All Image for data
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        'assets/images/compartion/screen (1).png',
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Image.asset(
                        'assets/images/compartion/cpu (1).png',
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Image.asset(
                        'assets/images/compartion/ram.png',
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Image.asset(
                        'assets/images/compartion/gpu.png',
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Image.asset(
                        'assets/images/compartion/selfie-stick (2).png',
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 55,
                      ),
                      Image.asset(
                        'assets/images/compartion/selfie-stick (1).png',
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Image.asset(
                        'assets/images/compartion/battery (1).png',
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Image.asset(
                        'assets/images/compartion/lighting.png',
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Image.asset(
                        'assets/images/compartion/memory-card.png',
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Image.asset(
                        'assets/images/compartion/plus-button.png',
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Image.asset(
                        'assets/images/compartion/color-palette.png',
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Image.asset(
                        'assets/images/compartion/price-tag.png',
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  //All image for text data
                  Column(
                    children: [
                      SizedBox(
                        height: 90,
                      ),
                      Text(
                        'Screen',
                        style: TextStyle(fontSize: 20, color: Greycolor),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Text(
                        'Processor',
                        style: TextStyle(fontSize: 15, color: Greycolor),
                      ),
                      SizedBox(
                        height: 105,
                      ),
                      Text(
                        'RAM',
                        style: TextStyle(fontSize: 20, color: Greycolor),
                      ),
                      SizedBox(
                        height: 90,
                      ),
                      Text(
                        'Image ',
                        style: TextStyle(fontSize: 20, color: Greycolor),
                      ),
                      Text(
                        'Processor',
                        style: TextStyle(fontSize: 20, color: Greycolor),
                      ),
                      SizedBox(
                        height: 90,
                      ),
                      Text(
                        'Back',
                        style: TextStyle(fontSize: 15, color: Greycolor),
                      ),
                      Text(
                        'Camera',
                        style: TextStyle(fontSize: 15, color: Greycolor),
                      ),
                      SizedBox(
                        height: 85,
                      ),
                      Text(
                        'Selfie',
                        style: TextStyle(fontSize: 20, color: Greycolor),
                      ),
                      Text(
                        'Camera',
                        style: TextStyle(fontSize: 20, color: Greycolor),
                      ),
                      SizedBox(
                        height: 85,
                      ),
                      Text(
                        'Operating',
                        style: TextStyle(fontSize: 15, color: Greycolor),
                      ),
                      Text(
                        'System',
                        style: TextStyle(fontSize: 15, color: Greycolor),
                      ),
                      SizedBox(
                        height: 90,
                      ),
                      Text(
                        'Battery',
                        style: TextStyle(fontSize: 20, color: Greycolor),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Text(
                        'Storage',
                        style: TextStyle(fontSize: 15, color: Greycolor),
                      ),
                      Text(
                        'Capacity',
                        style: TextStyle(fontSize: 15, color: Greycolor),
                      ),
                      SizedBox(
                        height: 90,
                      ),
                      Text(
                        'Other',
                        style: TextStyle(fontSize: 20, color: Greycolor),
                      ),
                      SizedBox(
                        height: 110,
                      ),
                      Text(
                        'Colors',
                        style: TextStyle(fontSize: 20, color: Greycolor),
                      ),
                      SizedBox(
                        height: 110,
                      ),
                      Text(
                        'Price',
                        style: TextStyle(fontSize: 20, color: Greycolor),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  //All text from database
                  Row(
                    children: [
                      SizedBox(
                        width: 90,
                      ),
                      //database from left
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          //screen data
                          Column(
                            children: [
                            listResponse==null?Text('Data is loading'):Text(
                                listResponse[0]['disply_size'].toString(),
                                style:
                                TextStyle(fontSize: 20, color: Greycolor),),
                              SizedBox(height: 50,),
                              listResponse==null?Text('Data is loading'):Text(
                                listResponse[0]['disply_resolution'].toString(),
                                style:
                                TextStyle(fontSize: 20, color: Greycolor),),
                              ],
                          ),
                          SizedBox(
                            height: 110,
                          ),
                            //prosser
                            listResponse==null?Text('Data is loading'):Text(
                                listResponse[0]['chipset'].toString(),
                            style: TextStyle(fontSize: 20, color: Greycolor),
                          ),
                          SizedBox(
                            height: 110,
                          ),
                            //ram
                            listResponse==null?Text('Data is loading'):Text(
                              listResponse[0]['ram'].toString(),
                              style: TextStyle(fontSize: 20, color: Greycolor),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          //Gpu
                          listResponse==null?Text('Data is loading'):Text(
                            listResponse[0]['chipset'].toString(),
                            style: TextStyle(fontSize: 20, color: Greycolor),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          //camera back
                          Column(
                            children: [
                              listResponse==null?Text('Data is loading'):Text(
                                listResponse[0]['camera_pixsels'].toString(),
                                style:
                                TextStyle(fontSize: 20, color: Greycolor),),
                              SizedBox(height: 50,),
                              listResponse==null?Text('Data is loading'):Text(
                                listResponse[0]['vidio_pixsels'].toString(),
                                style:
                                TextStyle(fontSize: 20, color: Greycolor),),
                            ],
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          //camera selfi
                          Column(
                            children: [
                              listResponse==null?Text('Data is loading'):Text(
                                listResponse[0]['camera_pixsels'].toString(),
                                style:
                                TextStyle(fontSize: 20, color: Greycolor),),
                              SizedBox(height: 50,),
                              listResponse==null?Text('Data is loading'):Text(
                                listResponse[0]['vidio_pixsels'].toString(),
                                style:
                                TextStyle(fontSize: 20, color: Greycolor),),
                            ],
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          //opretaing system
                          listResponse==null?Text('Data is loading'):Text(
                            listResponse[0]['os'].toString(),
                            style: TextStyle(fontSize: 20, color: Greycolor),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          //battery
                          Column(
                            children: [
                              listResponse==null?Text('Data is loading'):Text(
                                listResponse[0]['battary_size'].toString(),
                                style:
                                TextStyle(fontSize: 20, color: Greycolor),),
                              SizedBox(height: 50,),
                              listResponse==null?Text('Data is loading'):Text(
                                listResponse[0]['battary_type'].toString(),
                                style:
                                TextStyle(fontSize: 20, color: Greycolor),),
                            ],
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          //storage capacity
                          listResponse==null?Text('Data is loading'):Text(
                            listResponse[0]['storage'].toString(),
                            style: TextStyle(fontSize: 20, color: Greycolor),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          //other
                          listResponse==null?Text('Data is loading'):Text(
                            listResponse[0]['body'].toString(),
                            style: TextStyle(fontSize: 20, color: Greycolor),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          //colors&body
                          listResponse==null?Text('Data is loading'):Text(
                            listResponse[0]['body'].toString(),
                            style: TextStyle(fontSize: 20, color: Greycolor),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          Text(
                              '20000\$',
                            style: TextStyle(fontSize: 20, color: Greycolor),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 125,
                      ),
                      //database from right
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          //screen data
                          Column(
                            children: [
                              listResponse==null?Text('Data is loading'):Text(
                                listResponse[1]['disply_size'].toString(),
                                style:
                                TextStyle(fontSize: 20, color: Greycolor),),
                              SizedBox(height: 50,),
                              listResponse==null?Text('Data is loading'):Text(
                                listResponse[1]['disply_resolution'].toString(),
                                style:
                                TextStyle(fontSize: 20, color: Greycolor),),
                            ],
                          ),
                          SizedBox(
                            height: 110,
                          ),
                          //prosser
                          listResponse==null?Text('Data is loading'):Text(
                            listResponse[1]['chipset'].toString(),
                            style: TextStyle(fontSize: 20, color: Greycolor),
                          ),
                          SizedBox(
                            height: 110,
                          ),
                          //ram
                          listResponse==null?Text('Data is loading'):Text(
                            listResponse[1]['ram'].toString(),
                            style: TextStyle(fontSize: 20, color: Greycolor),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          //Gpu
                          listResponse==null?Text('Data is loading'):Text(
                            listResponse[1]['chipset'].toString(),
                            style: TextStyle(fontSize: 20, color: Greycolor),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          //camera back
                          Column(
                            children: [
                              listResponse==null?Text('Data is loading'):Text(
                                listResponse[1]['camera_pixsels'].toString(),
                                style:
                                TextStyle(fontSize: 20, color: Greycolor),),
                              SizedBox(height: 50,),
                              listResponse==null?Text('Data is loading'):Text(
                                listResponse[1]['vidio_pixsels'].toString(),
                                style:
                                TextStyle(fontSize: 20, color: Greycolor),),
                            ],
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          //camera selfi
                          Column(
                            children: [
                              listResponse==null?Text('Data is loading'):Text(
                                listResponse[1]['camera_pixsels'].toString(),
                                style:
                                TextStyle(fontSize: 20, color: Greycolor),),
                              SizedBox(height: 50,),
                              listResponse==null?Text('Data is loading'):Text(
                                listResponse[1]['vidio_pixsels'].toString(),
                                style:
                                TextStyle(fontSize: 20, color: Greycolor),),
                            ],
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          //opretaing system
                          listResponse==null?Text('Data is loading'):Text(
                            listResponse[1]['os'].toString(),
                            style: TextStyle(fontSize: 20, color: Greycolor),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          //battery
                          Column(
                            children: [
                              listResponse==null?Text('Data is loading'):Text(
                                listResponse[1]['battary_size'].toString(),
                                style:
                                TextStyle(fontSize: 20, color: Greycolor),),
                              SizedBox(height: 50,),
                              listResponse==null?Text('Data is loading'):Text(
                                listResponse[1]['battary_type'].toString(),
                                style:
                                TextStyle(fontSize: 20, color: Greycolor),),
                            ],
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          //storage capacity
                          listResponse==null?Text('Data is loading'):Text(
                            listResponse[1]['storage'].toString(),
                            style: TextStyle(fontSize: 20, color: Greycolor),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          //other
                          listResponse==null?Text('Data is loading'):Text(
                            listResponse[1]['body'].toString(),
                            style: TextStyle(fontSize: 20, color: Greycolor),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          //colors&body
                          listResponse==null?Text('Data is loading'):Text(
                            listResponse[1]['body'].toString(),
                            style: TextStyle(fontSize: 20, color: Greycolor),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          Text(
                            '20000\$',
                            style: TextStyle(fontSize: 20, color: Greycolor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )),
        ],
      ),
      drawerScrimColor: Colors.black.withOpacity(0.4),
      drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  'MAQW MOBIL ^_^',
                  style: TextStyle(fontSize: 40, color: Bluecolor),
                ),
              ),
              ListTile(
                title: Text(
                  "Home",
                  style: TextStyle(fontSize: 25, color: Bluecolor),
                ),
                trailing: Icon(Icons.phone_android_rounded),
                onTap: () => selectScreen(context, "home"),
              ),
              ListTile(
                title: Text(
                  "All Phone",
                  style: TextStyle(fontSize: 25, color: Bluecolor),
                ),
                trailing: Icon(Icons.phone_android_rounded),
                onTap: () => selectScreen(context, "allphone"),
              ),
              ListTile(
                title: Text(
                  "Compartion",
                  style: TextStyle(fontSize: 25, color: Bluecolor),
                ),
                trailing: Icon(Icons.phonelink_setup),
                onTap: () => selectScreen(context, "Compartion"),
              ),
              ListTile(
                title: Text(
                  "Contact Us",
                  style: TextStyle(fontSize: 25, color: Bluecolor),
                ),
                trailing: Icon(Icons.email_outlined),
                onTap: () => selectScreen(context, "ContatUs"),
              ),
            ],
          ) // contact_Us(),
      ),
      //bottomNavigationBar: NavigationB(),
    );
  }
  Widget Lines() {
    return Container(
      color: Colors.white,
      width: 392,
      height: 1500,
      child: CustomPaint(
        foregroundPainter: LinePainter(),
      ),
    );
  }

  Widget bulidPhone(Phone phone) =>
      ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
                phone.imagephone, width: 50, height: 50, fit: BoxFit.cover),
          ),
          title: Text(
            phone.name,
            style: TextStyle(fontSize: 24),)

      );
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Greycolor
      ..strokeCap = StrokeCap.square
      ..strokeWidth = 3;

    canvas.drawLine(
      Offset(size.width * 3 / 8, size.height * 0 / 6),
      Offset(size.width * 3 / 8, size.height * 6 / 6),
      paint,
    );
    canvas.drawLine(
      Offset(size.width * 5 / 8, size.height * 6 / 6),
      Offset(size.width * 5 / 8, size.height * 0 / 6),
      paint,
    );
    canvas.drawLine(
      Offset(size.width * 6 / 6, size.height * 2 / 24),
      Offset(size.width * 0 / 6, size.height * 2 / 24),
      paint,
    );
    canvas.drawLine(
      Offset(size.width * 6 / 6, size.height * 4 / 24),
      Offset(size.width * 0 / 6, size.height * 4 / 24),
      paint,
    );
    canvas.drawLine(
      Offset(size.width * 6 / 6, size.height * 6 / 24),
      Offset(size.width * 0 / 6, size.height * 6 / 24),
      paint,
    );
    canvas.drawLine(
      Offset(size.width * 6 / 6, size.height * 8 / 24),
      Offset(size.width * 0 / 6, size.height * 8 / 24),
      paint,
    );
    canvas.drawLine(
      Offset(size.width * 6 / 6, size.height * 10 / 24),
      Offset(size.width * 0 / 6, size.height * 10 / 24),
      paint,
    );
    canvas.drawLine(
      Offset(size.width * 6 / 6, size.height * 12 / 24),
      Offset(size.width * 0 / 6, size.height * 12 / 24),
      paint,
    );
    canvas.drawLine(
      Offset(size.width * 6 / 6, size.height * 14 / 24),
      Offset(size.width * 0 / 6, size.height * 14 / 24),
      paint,
    );
    canvas.drawLine(
      Offset(size.width * 6 / 6, size.height * 16 / 24),
      Offset(size.width * 0 / 6, size.height * 16 / 24),
      paint,
    );
    canvas.drawLine(
      Offset(size.width * 6 / 6, size.height * 18 / 24),
      Offset(size.width * 0 / 6, size.height * 18 / 24),
      paint,
    );
    canvas.drawLine(
      Offset(size.width * 6 / 6, size.height * 20 / 24),
      Offset(size.width * 0 / 6, size.height * 20 / 24),
      paint,
    );
    canvas.drawLine(
      Offset(size.width * 6 / 6, size.height * 22 / 24),
      Offset(size.width * 0 / 6, size.height * 22 / 24),
      paint,
    );
    canvas.drawLine(
      Offset(size.width * 6 / 6, size.height * 24 / 24),
      Offset(size.width * 0 / 6, size.height * 24 / 24),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

class Phone {
  final String imagephone;
  final String name;

  const Phone({
    required this.name,
    required this.imagephone
  });
}