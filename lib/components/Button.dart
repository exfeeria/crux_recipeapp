import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: SizedBox(
          height: 20,
          child: TextButton(
            child: Text('Open route'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => description1()),
              );
            },
          ),
        ),
      ),
    );
  }
}

class Button2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => description2()),
            );
          },
        ),
      ),
    );
  }
}

class Button3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => description3()),
            );
          },
        ),
      ),
    );
  }
}

class description1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("요리방법"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
              '커피 만드는 법: 원두, 거름종이, 설탕 \n 원두를 거름종이에 싸서 끓는 물에 약불로 30분 가량 끓인다. 그 후 기호에 따라 설탕을 넣는다.'),
        ),
      ),
    );
  }
}

class description2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("요리방법"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
              '버거 만드는 법: 빵, 치즈, 딸기잼, 햄, 토마토 \n 빵을 6분동안 찐다. 찌는 방법은 얕은 물 위에 지지대로 빵을 놓아 물과 접촉 없이 열을 가하는 것이다. '
              '햄을 10분가량 삶는다. 토마토는 꼭지를 따고 3~4등분한다. 이후, 기호에 따라 딸기잼, 치즈를 넣어먹으면 된다.'),
        ),
      ),
    );
  }
}

class description3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("요리방법"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
              '피자 만드는 법: 밀가루, 물, 올리브, 야채, 피자용 토마토 소스, 햄 \n 밀가루와 물을 2대 1비율로 섞고 피자용 접시에다가 넓게 핀다.'
              '그 위에 올리브, 야채, 햄 등을 올리고 소스를 펴바른다. 오븐에서 20분간 익힌다.'),
        ),
      ),
    );
  }
}
