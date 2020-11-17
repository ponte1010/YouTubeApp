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
              '国振チャンネル',
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
                          'https://lh3.googleusercontent.com/proxy/AMKGC9kJM4uzmZwBDsVN7cozej_8LAU8-Kd69xwLbTVQcoxrFB-rOhoz5xxmUbQu948L2O03Im-kECSNwHPNaXvgbKiRFwqAkOXyhs6imVmBBPUpjxz5G2MUMhheV6Es5Xo',
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                        children: <Widget>[
                          const Text(
                            '国振チャンネル',
                          ),
                          FlatButton(
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'SUBSCRIBE',
                                  style: TextStyle(color: Colors.red),
                                ),
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
                                builder: (context) => VideoDetailPage()),
                          );
                        },
                        contentPadding: EdgeInsets.all(8),
                        leading: Image.network(
                          'https://i.ytimg.com/vi/HuligzAKHw0/maxresdefault.jpg',
                        ),
                        title: Column(
                          children: <Widget>[
                            Text(
                              '中華のプロがレシピ公開！！超人気これが神のチャーハン【国振西新井】',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  '157K views - ',
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(
                                  '10 months ago',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                          ],
                        ),
                        trailing: Icon(Icons.more_vert),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
