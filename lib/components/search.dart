import 'dart:math';

import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/scaled_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recipe_abgleich/components/Button.dart';

class Post {
  final String title;
  final String body;

  Post(this.title, this.body);
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final SearchBarController<Post> _searchBarController = SearchBarController();
  bool isReplay = false;

  Future<List<Post>> _getALlPosts(String text) async {
    await Future.delayed(Duration(seconds: text.length == 4 ? 3 : 1));
    if (isReplay) return [Post("Replaying !", "Replaying body")];
    List<Post> posts = [];
    List<String> foods = ['커피', '버거', '피자'];

    var random = new Random();
    for (int i = 0; i < 1; i++) {
      posts.add(Post("$text", "body random number : ${random.nextInt(100)}"));
    }
    return posts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SearchBar<Post>(
                searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
                headerPadding: EdgeInsets.symmetric(horizontal: 10),
                listPadding: EdgeInsets.symmetric(horizontal: 10),
                onSearch: _getALlPosts,
                searchBarController: _searchBarController,
                placeHolder: Text(
                    "검색어를 입력해주세요. 한국어는 지원하지 않습니다, 영어로는 4글자부터 가능합니다. ex) coff, pizz, burg/ 현재 총 음식 개수는 3개입니다."),
                cancellationWidget: Text("Cancel"),
                emptyWidget: Text("empty"),
                indexedScaledTileBuilder: (int index) =>
                    ScaledTile.count(1, index.isEven ? 2 : 1),
                //header: Row(
                //children: <Widget>[
                //RaisedButton(
                //child: Text("sort"),
                //onPressed: () {
                //_searchBarController.sortList((Post a, Post b) {
                // return a.body.compareTo(b.body);
                //});
                //},
                //),
                // RaisedButton(
                // child: Text("Desort"),
                //onPressed: () {
                // _searchBarController.removeSort();
                //},
                // ),
                //RaisedButton(
                //child: Text("Replay"),
                //onPressed: () {
                // isReplay = !isReplay;
                // _searchBarController.replayLastSearch();
                // },
                // ),
                //],
                // ),
                onCancelled: () {
                  print("Cancelled triggered");
                },
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 2,
                onItemFound: (Post post, int index) {
                  /*return Container(
              color: Colors.lightBlue,
              child: ListTile(
                title: Text(post.title),
                isThreeLine: true,
                subtitle: Text(post.body),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => description1()));

                },
              ),
            );*/
                  if (post.title == '커' ||
                      post.title == '커피' ||
                      post.title == 'coff' ||
                      post.title == 'coffe' ||
                      post.title == 'coffee') {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AspectRatio(
                            aspectRatio: 2 / 1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/images/coffee.jpeg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "커피",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "집에서 커피 만들어 보자",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                          TextButton(
                            child: Text('커피 레시피'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => description1()),
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  } else if (post.title == '버' ||
                      post.title == '버거' ||
                      post.title == 'burg' ||
                      post.title == 'burge' ||
                      post.title == 'burger') {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AspectRatio(
                            aspectRatio: 2 / 1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/images/burger.jpeg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "버거",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "집에서 버거 만들어 보자",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                          TextButton(
                            child: Text('버거 레시피'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => description2()),
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  } else if (post.title == '피' ||
                      post.title == '피자' ||
                      post.title == 'piz' ||
                      post.title == 'pizz' ||
                      post.title == 'pizza') {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AspectRatio(
                            aspectRatio: 2 / 1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/images/pizza.jpeg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "피자",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "집에서 피자 만들어 보자",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                          TextButton(
                            child: Text('피자 레시피'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => description3()),
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Container(child: Text("검색어가 없습니다."));
                  }
                })));
  }
}
