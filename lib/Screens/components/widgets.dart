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

Widget coursePkg(
  String title,
  String img,
  BuildContext context,
  openPage,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: InkWell(
      hoverColor: Colors.white,
      splashColor: secondaryColor03,
      borderRadius: BorderRadius.circular(8),
      highlightColor: Colors.white,

      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => openPage));
      },
      // main container
      child: Container(
        width: MediaQuery.of(context).size.width >= 360
            ? 370
            : MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1, color: secondaryColor03),
          boxShadow: [myBoxShadow()],
        ),
        child: Row(
          children: [
            // Thumbnail
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: secondaryColor03),
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Thumbnail end
            const SizedBox(width: 15),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  heading(title, secondaryColor),
                  const Text("HTML | CSS | JavaScript | React "),
                  const SizedBox(height: 8),
                  SizedBox(child: pkgInfoIcons(5, 3.5, 25, 10)),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget pkgInfoIcons(int m, double r, double s, int f) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      labelIcon(m.toString(), Icons.menu_book),
      labelIcon(r.toString(), Icons.star),
      labelIcon(s.toString(), Icons.groups_2_rounded),
      labelIcon(f.toString(), Icons.favorite),
    ],
  );
}

Widget labelIcon(String txt, IconData icon) {
  return Row(
    children: [
      Text(
        txt,
        style: infoHeading(),
      ),
      sizeBox(5, 0),
      infoIcon(icon),
    ],
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
    splashColor: secondaryColor.withOpacity(0.3),
    borderRadius: BorderRadius.circular(8),
    highlightColor: Colors.white,
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => course));
    },
    child: Container(
      width: 340,
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: secondaryColor.withOpacity(0.3)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(image: AssetImage(img))),
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
    splashColor: secondaryColor.withOpacity(0.3),
    borderRadius: BorderRadius.circular(8),
    highlightColor: Colors.white,
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => course));
    },
    child: Container(
      width: 340,
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: secondaryColor.withOpacity(0.3)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Icon(
          Icons.play_circle_fill_rounded,
          color: secondaryColor,
          size: 40,
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(subtitle),
        trailing: Icon(
          Icons.check_circle_outline_rounded,
          color: secondaryColor,
        ),
      ),
    ),
  );
}

Widget quizCard(String title, String subtitle) {
  return InkWell(
    splashColor: secondaryColor03,
    borderRadius: BorderRadius.circular(8),
    highlightColor: Colors.white,
    onTap: () {
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => course));
    },
    child: Container(
      width: 340,
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: secondaryColor03),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Icon(
          Icons.analytics_rounded,
          color: secondaryColor,
          size: 40,
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(subtitle),
        trailing: Icon(
          Icons.check_circle_outline_rounded,
          color: secondaryColor,
        ),
      ),
    ),
  );
}

Widget textBtton(String txt) {
  return TextButton(
    onPressed: () {},
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

Widget notesCard(BuildContext context, String title, String subtitle,
    [Icon? icon]) {
  return InkWell(
        splashColor: secondaryColor03,
    highlightColor: Colors.white,

    onTap: () {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: heading('Under Maintenance', Colors.black87),
        backgroundColor: Colors.grey[200],
        duration: const Duration(milliseconds: 200),
      ));
    },
    child: Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: secondaryColor03)),
      ),
      child: ListTile(
        title: subHeading(title, Colors.black),
        subtitle: Text(subtitle),
        trailing: icon,
        iconColor: Colors.grey,
      ),
    ),
  );
}

Widget menuOption(Icon icon, String txt, BuildContext context, [page]) {
  return Container(
    decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: secondaryColor))),
    child: ListTile(
      hoverColor: secondaryColor03,
      splashColor: secondaryColor03,
      leading: icon,
      iconColor: page == null ? Colors.black12 : Colors.grey,
      title: subHeading(txt, page == null ? Colors.black12 : Colors.grey),
      trailing: Icon(
        Icons.chevron_right,
        color: page == null ? Colors.grey : secondaryColor03,
      ),
      onTap: () {
        page == null
            ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: heading('Under Maintenance', Colors.grey),
                backgroundColor: Colors.grey[200],
                duration: const Duration(milliseconds: 200),
              ))
            : Navigator.push(
                context, MaterialPageRoute(builder: (context) => page));
      },
    ),
  );
}
