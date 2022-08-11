import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:simpledrawerui/Widgets/Background Image/image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Developer extends StatefulWidget {
  const Developer({Key? key}) : super(key: key);

  @override
  State<Developer> createState() => _DeveloperState();
}

class _DeveloperState extends State<Developer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.0),
            child: Text('About Developer',
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'PT Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Stack(
          children: [
            const BackgroundImage(),
            Container(
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(
                      child: Container(
                        color: Colors.transparent,
                        width: MediaQuery.of(context).size.width,
                        height: 500.0,
                        child: FlipCard(
                          speed: 1000,
                          direction: FlipDirection.HORIZONTAL,
                          front: Material(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(50),
                            shadowColor: const Color(0x802196F3).withOpacity(0.2),
                            child: buildIntroPage(),
                          ),
                          back: Material(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(50),
                            shadowColor: const Color(0x802196F3).withOpacity(0.2),
                            child: buildSocialPage(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
  Widget buildIntroPage(){
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage('assets/photo2.jpg'),
              radius: 35.0,
            ),
            const SizedBox(height: 5.0,),
            const Text('Muhammad Warzan',
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'PT Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.work_rounded,size: 18.0,color: Colors.blue[500],),
                const SizedBox(width: 10.0,),
                Text('Mobile Application Developer (Flutter)',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.blue[500],
                    fontFamily: 'PT Sans',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.4,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.mail_rounded,size: 18.0,color: Colors.blue[500],),
                const SizedBox(width: 10.0,),
                Text('muhammad1649programmer@gmail.com',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'PT Sans',
                    color: Colors.blue[500],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.4,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.phone_rounded,size: 18.0,color: Colors.blue[500],),
                const SizedBox(width: 10.0,),
                Text('+92 333 8777217',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'PT Sans',
                    color: Colors.blue[500],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.4,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.location_on_rounded,size: 18.0,color: Colors.blue[500],),
                const SizedBox(width: 10.0,),
                Text('Karachi, Pakistan',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'PT Sans',
                    color: Colors.blue[500],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.4,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0,),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Currently pursuing a bachelor\'s degree in computer science at FAST National University of Computer and Emerging Sciences with a strong desire to advance my abilities in the information technology sector. Experienced mobile application developer with a track record of accomplishments in the field. Skilled in Flutter, Android, and IOS. Also interested in gaining experience in many other development disciplines, such as web development, graphic design, etc. In order to secure further employment from them. I have a strong desire to acquire new abilities so that I may compete in the expanding market. In search of a business or opportunity where I may put my education and skills to work in assisting the organization in achieving its objectives. I\'m looking for a job opportunity that will enable me to succeed more practically in the software sector.',
                style: TextStyle(
                  fontSize: 11.0,
                  fontFamily: 'PT Sans',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.4,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      )
    );
  }
  Widget buildSocialPage(){
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text('Social Section',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    letterSpacing: 0.3,
                    fontFamily: 'PT Sans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ),
            const SizedBox(height: 10.0,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400.0,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const FaIcon(FontAwesomeIcons.youtubeSquare,size: 30.0,),
                        const SizedBox(width: 10.0,),
                        Text('www.youtube.com/c/JohannesMilke',
                          style: TextStyle(
                            color: Colors.blue[800],
                            fontSize: 14.0,
                            fontFamily: 'PT Sans',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const FaIcon(FontAwesomeIcons.facebookSquare,size: 30.0,),
                        const SizedBox(width: 10.0,),
                        Text('www.facebook.com/muhammad.warzan.92',
                          style: TextStyle(
                            color: Colors.blue[800],
                            fontSize: 14.0,
                            fontFamily: 'PT Sans',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const FaIcon(FontAwesomeIcons.instagramSquare,size: 30.0,),
                        const SizedBox(width: 10.0,),
                        Text('www.instagram.com/sacrastic_viki/',
                          style: TextStyle(
                            color: Colors.blue[800],
                            fontSize: 14.0,
                            fontFamily: 'PT Sans',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const FaIcon(FontAwesomeIcons.linkedin,size: 30.0,),
                        const SizedBox(width: 10.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('www.linkedin.com/in/muhammad-warzan-',
                              style: TextStyle(
                                color: Colors.blue[800],
                                fontSize: 14.0,
                                fontFamily: 'PT Sans',
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text('13897420a/',
                              style: TextStyle(
                                color: Colors.blue[800],
                                fontSize: 14.0,
                                fontFamily: 'PT Sans',
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 25.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const FaIcon(FontAwesomeIcons.githubSquare,size: 30.0,),
                        const SizedBox(width: 10.0,),
                        Text('www.github.com/hacker1649',
                          style: TextStyle(
                            color: Colors.blue[800],
                            fontSize: 14.0,
                            fontFamily: 'PT Sans',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const FaIcon(FontAwesomeIcons.twitterSquare,size: 30.0,),
                        const SizedBox(width: 10.0,),
                        Text('www.twitter.com/warzan_222555',
                          style: TextStyle(
                            color: Colors.blue[800],
                            fontSize: 14.0,
                            fontFamily: 'PT Sans',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}




