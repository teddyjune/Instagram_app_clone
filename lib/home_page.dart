import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final googleSignIn = GoogleSignIn();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Instagram Clone',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                logout();
              },
              icon: const Icon(Icons.logout)),
        ],
      ),
      body: _buildbody(),
    );
  }

  Widget _buildbody() {
    return SafeArea(
        child: SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            const Text(
              'Instagram에 오신 것을 환영합니다',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 10),
            const Text('사진과 동영상을 보려면 팔로우하세요'),
            const SizedBox(height: 20),
            SizedBox(
              width: 260,
              child: Card(
                elevation: 4,
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    const SizedBox(
                      width: 80,
                      height: 80,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHU7zwBRBbmqp6dqUMgWcU4Uz-9IgrJvuxRw&usqp=CAU'),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text('이메일 주소',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    const Text('이름'),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: Image.network(
                              'https://4.bp.blogspot.com/-8peil7YYvPk/XPkh87RplMI/AAAAAAAAKbU/YlC59komSogTonP-wDC9rWfVLA3JGHyCQCLcBGAs/s1600/9973A3475CF91A2A39.gif',
                              fit: BoxFit.cover),
                        ),
                        const SizedBox(width: 5),
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJ1i_f0DRxquKWGSH7AbiqAbAT56XtGSupEns9fy0_AQHPSUYYaL7EnrEzV_qDGLJmflI&usqp=CAU',
                              fit: BoxFit.cover),
                        ),
                        const SizedBox(width: 5),
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsMv_yjNQ3yJSWx1cv25GBLe6XDEbTwRGJGw&usqp=CAU',
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(onPressed: () {}, child: const Text('팔로우')),
                    const SizedBox(height: 10),
                    const Text('Facebook 친구'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

void logout() async {
  await googleSignIn.signOut();
  await FirebaseAuth.instance.signOut();
  // google signOut
}
