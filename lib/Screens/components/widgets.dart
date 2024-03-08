import 'package:flutter/material.dart';
import 'package:skills_rewards/Screens/components/assets.dart';

Widget sizeBox(double w, double h) {
  return SizedBox(
    height: h,
    width: w,
  );
}

myBoxShadow() {
  return const BoxShadow(
    color: Color.fromARGB(15, 0, 0, 0),
    offset: Offset(0.0, 0), // Shadow position
    blurRadius: 1.0, // Shadow spread
    spreadRadius: 1.0, // Shadow size
  );
}

myGradient() {
  return const LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xFF863FC1), // #863FC1
      Color(0xFFE531E9), // #E531E9
      Color(0xFFF53636), // #F53636
    ],
  );
}

Widget courseCard(
  String title,
  String img,
  // ignore: non_constant_identifier_names
  BuildContext context,
  openPage,
) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => openPage));
    },
    child: Container(
      padding: const EdgeInsets.all(8),
      height: 85,
      width: 340,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 246, 253),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(width: 1, color: secondaryColor.withOpacity(0.1)),
        boxShadow: [myBoxShadow()],
      ),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              // height: 70,
              width: 70,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 241, 241),
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage(
                      img,
                    ),
                  )),
              // child:  Image(image:  AssetImage(img,),)
            ),
            SizedBox(
              width: 240,
              // color: const Color.fromARGB(255, 53, 60, 53),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text("3 Modules"),
                  const Text("250 Students"),
                ],
              ),
            ),
            // SizedBox(
            //   width: 40,
            //   // color: const Color.fromARGB(255, 169, 169, 169),
            //   child: IconButton(
            //       onPressed: () {}, icon: const Icon(Icons.favorite_border)),
            // ),
          ]),
    ),
  );
}

Widget courseTopCard(String title, String subtitle, String img) {
  return Center(
      child: Container(
    padding: const EdgeInsets.all(12),
    margin: const EdgeInsets.symmetric(vertical: 12),
    width: 340,
    height: 130,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      gradient: myGradient(),
    ),
    child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heading1(title, Colors.white),
              subHeading(subtitle, Colors.white),
            ],
          ),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                // color: Colors.black12,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.contain,
                )),
          )
        ]),
  ));
}

Widget moduleCard(
    String img, String title, String subtitle, BuildContext context,
    [course]) {
  return InkWell(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => course));
    },
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: 340,
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black12),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        // leading: icon,
        // leading: Icon(icon, color: Colors.black12, size: 40,),
        // leading: const Icon(Icons.book_rounded, color: Colors.black12, size: 40,),
        leading: Container(
          height: 40,
          width: 40,
          decoration:
              BoxDecoration(image: DecorationImage(image: AssetImage(img))),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(
          Icons.playlist_add_check_rounded,
          color: Color(0xffE531E9),
        ),
      ),
    ),
  );
}

Widget lessonCard(String title, String subtitle, BuildContext context,
    [course]) {
  return InkWell(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => course));
    },
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: 340,
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black12),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: const Icon(
          Icons.play_circle_fill_rounded,
          color: Color(0xffE531E9),
          size: 40,
        ),
        // leading: Icon(icon, color: Colors.black12, size: 40,),
        // leading: const Icon(Icons.book_rounded, color: Colors.black12, size: 40,),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(
          Icons.check_circle_outline_rounded,
          color: Color(0xffE531E9),
        ),
      ),
    ),
  );
}

Widget quizCard(String title, String subtitle) {
  return InkWell(
    onTap: () {
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => course));
    },
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: 340,
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black12),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: const Icon(
          Icons.analytics_rounded,
          color: Color(0xffE531E9),
          size: 40,
        ),
        // leading: Icon(icon, color: Colors.black12, size: 40,),
        // leading: const Icon(Icons.book_rounded, color: Colors.black12, size: 40,),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(
          Icons.check_circle_outline_rounded,
          color: Color(0xffE531E9),
        ),
      ),
    ),
  );
}

Widget textBtton(String txt) {
  return TextButton(
    onPressed: () {
      // Add your button functionality here
    },
    style: ButtonStyle(
      backgroundColor: primaryColorBtn(),
    ),
    child: Text(
      txt,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  );
}

Widget notesCard(BuildContext context,String title, String subtitle, [Icon? icon]) {
  return InkWell(
          onTap: () {
            
        // addCourse = null ? 
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: heading(
            'Under Maintenance',
            // style: TextStyle(color: Colors.white),
             Colors.black87
          ),
          backgroundColor: Colors.grey[200],
          duration: const Duration(milliseconds: 200),
        ));
      },

    child: Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: secondaryColor.withOpacity(0.3))),
      ),
      child: ListTile(
        title: 
        // Text(
          subHeading(title, Colors.black),
          // style: const TextStyle(fontWeight: FontWeight.w700),
        // ),
        subtitle: Text(subtitle),
        trailing: icon,
        iconColor: secondaryColor,
      ),
    ),
  );
}

Widget menuOption(Icon icon, String txt, BuildContext context, [page]) {
  return Container(
    decoration:  BoxDecoration(
        border: Border(bottom: BorderSide( color: secondaryColor.withOpacity(0.3)))),
    child: ListTile(
      hoverColor: secondaryColor.withOpacity(0.6),
      leading: icon,
      iconColor: Colors.black45,
      title: subHeading(txt,   page ==null?  Colors.black12:Colors.black87),
      trailing: Icon(Icons.chevron_right,   color: page ==null?Colors.black12 : secondaryColor,),
      onTap: () {

        // ignore: avoid_print
        page ==null? 
           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: heading(
            'Under Maintenance',
            // style: TextStyle(color: Colors.white),
             Colors.black87
          ),
          
          backgroundColor: Colors.grey[200],
          duration: const Duration(milliseconds: 200),
        ))
        :
                  Navigator.push(
          context, MaterialPageRoute(builder: (context) => page));

     
     
      },
    ),
  );
}
