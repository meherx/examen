import 'package:flutter/material.dart';
import 'package:health_care/app_bars.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, right: 10, left: 10, bottom: 0),
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/header1.png'),
                        fit: BoxFit.fill)),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30, bottom: 20),
                child: Text(
                  "Healthcare Services",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 145, 194, 22),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              GridView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 8,
                  mainAxisExtent: 110,
                ),
                children: [
                  buildService("General Care", 'doctor.jpg'),
                  buildService("Covid Care", 'doctor.jpg'),
                  buildService("Elder Care", 'doctor.jpg'),
                  buildService("Nursing Care", 'doctor.jpg'),
                  buildService("ICU at Home", 'doctor.jpg'),
                  buildService("Diagnosis", 'doctor.jpg'),
                  buildService("Vaccination", 'doctor.jpg'),
                  buildService("Nutritional Care", 'doctor.jpg'),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.search),
                    contentPadding: const EdgeInsets.only(left: 15, right: 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: "Search for healthcare service",
                    hintStyle: const TextStyle(
                        fontSize: 14, fontStyle: FontStyle.italic),
                  ),
                  style: const TextStyle(fontSize: 18),
                  cursorHeight: 30,
                ),
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/banner.jpg'),
                        fit: BoxFit.fill)),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30, bottom: 20),
                child: Text(
                  "Staff near you",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 145, 194, 22),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 160,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildStaff("Tbib 1", "Offer Older Care and General Care",
                        'staff.jpg'),
                    buildStaff("Tbib 2 ", "Offer Covid Care and Vaccination",
                        'staff.jpg'),
                    buildStaff("Tbib 3", "Offer Nursing Care", 'staff.jpg'),
                    buildStaff("Tbib 4", "Offer Diagnosis and ICU Treatment",
                        "staff.jpg"),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30, bottom: 20),
                child: Text(
                  "Trending Articles",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 145, 194, 22)),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildArticle(
                        "What is healthcare?",
                        "Healthcare refers to maintaining/improving physical or mental health.",
                        "article.jpg"),
                    buildArticle(
                        " What is a healthcare provider?",
                        "Healthcare provider is a licensed/certified professional delivering healthcare services.",
                        "article.jpg"),
                    buildArticle(
                        "Why should you take care of your health ? ",
                        "You should take care of your health to prevent illnesses, improve well-being, and live a longer, happier life.",
                        "article.jpg"),
                    buildArticle(
                        "What's ICU treatment ?",
                        "ICU treatment is intensive care provided to critically ill patients who require close monitoring and advanced life support measures.",
                        "article.jpg"),
                    buildArticle(
                        "How to stay fit during work from home?",
                        "To stay fit during work, you can establish an exercise routine,have a  diet, and prioritize good sleep habits.",
                        "article.jpg"),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildService(String title, String image) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        elevation: 3,
        child: Column(
          children: [
            Container(
              height: 70,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                image: DecorationImage(
                    image: AssetImage('assets/$image'), fit: BoxFit.fill),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)),
                color: Color(0xFFFFFFFF),
              ),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildStaff(String name, String desc, String image) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        elevation: 2,
        child: Column(
          children: [
            Container(
              height: 70,
              width: 125,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                image: DecorationImage(
                    image: AssetImage('assets/$image'), fit: BoxFit.fill),
              ),
            ),
            Container(
              width: 125,
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              decoration: const BoxDecoration(
                color: Color(0xFFEBFAFF),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  const Icon(
                    Icons.security,
                    size: 15,
                    color: Colors.cyan,
                  )
                ],
              ),
            ),
            Container(
              width: 125,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 2.5),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)),
                color: Color(0xFFFFFFFF),
              ),
              child: Text(
                desc,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 10, fontWeight: FontWeight.bold, height: 1.3),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildArticle(String title, String desc, String image) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        elevation: 2,
        child: Column(
          children: [
            Container(
              height: 90,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                image: DecorationImage(
                    image: AssetImage('assets/$image'), fit: BoxFit.fill),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.white,
                        height: 1.1,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
              width: 150,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)),
                color: Color(0xFFFFFFFF),
              ),
              child: Text(
                desc,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 10, fontWeight: FontWeight.bold, height: 1.3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
