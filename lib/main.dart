import 'package:flutter/material.dart';
import 'package:youtube_app/video_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        home: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            leading: Icon(Icons.videocam),
            title: const Text(
              'YouTube App',
            ),
            actions: <Widget>[
              SizedBox(
                width: 44,
                child: FlatButton(
                  child: Icon(Icons.search),
                  onPressed: () {
                    // todo
                  },
                ),
              ),
              SizedBox(
                width: 44,
                child: FlatButton(
                  child: Icon(Icons.more_vert),
                  onPressed: () {
                    // todo
                  },
                ),
              ),
            ],
          ),
          body: Container(
            child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 60,
                          height: 60,
                          child: Image.network(
                            'https://avatarbox.net/avatars/img4/the_simpsons_homer_thinking_avatar_picture_52539.png',
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          children: <Widget>[
                            const Text(
                              'YouTube App',
                            ),
                            FlatButton(
                              child: Row(
                                children: <Widget>[
                                  Text('SUBSCRIBE'),
                                ],
                              ),
                              onPressed: () {
                                // todo
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          onTap: () async {
                            // TODO: 画面遷移
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VideoDetailPage()
                              ),
                            );
                          },
                          contentPadding: EdgeInsets.all(8),
                          leading: Image.network(
                            'https://i.ytimg.com/vi/PXnqg_Ozouk/hqdefault.jpg',
                          ),
                          title: Column(
                            children: <Widget>[
                              Text(
                                '【Flutter超入門】リストを作る方法',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '14K views',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Text(
                                    ' 3 hours ago',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              )
                            ],
                          ),
                          trailing: Icon(Icons.more_vert),
                        );
                      },
                    ),
                  ),
                ];
            ),
          ),
        )
    );
  }
}