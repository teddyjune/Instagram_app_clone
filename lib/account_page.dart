import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Stack(
              children: [
                const SizedBox(
                  width: 80,
                  height: 80,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHU7zwBRBbmqp6dqUMgWcU4Uz-9IgrJvuxRw&usqp=CAU'),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: SizedBox(
                      width: 25,
                      height: 25,
                      child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.add))),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '김석진',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        const Text(
          '0\n게시물',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
        const Text(
          '0\n팔로워',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
        const Text(
          '0\n팔로잉',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }

  _buildAppBar() {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.exit_to_app),
        ),
      ],
    );
  }
}
