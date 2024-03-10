import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card Widget'),
        ),
        body: ListView(
          children: [
            CardWidget(
              imageUrl:
              'https://th.bing.com/th/id/OIP.N6vGgH9-La-F8k5hmMA_ZQAAAA?rs=1&pid=ImgDetMain',
              title: 'Muhammad Affandi',
              subtitle: '22091397039',
            ),
            CardWidget(
              imageUrl:
              'https://yt3.ggpht.com/ytc/AKedOLSP6CTD3uDS4dGSZcHs44lRODhGx8XS7ECj7IU=s900-c-k-c0x00ffffff-no-rj',
              title: 'Ammar Ibrohim',
              subtitle: '22091397046',
            ),
            CardWidget(
              imageUrl:
              'https://i0.wp.com/newsfeed.ph/wp-content/uploads/2018/03/jm-de-guzman.jpg?resize=696%2C803&ssl=1',
              title: 'Resti Divana Putri',
              subtitle: '22091397060',
            ),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const CardWidget({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Color.fromARGB(255, 177, 138, 124),
      elevation: 7,
      child: ListTile(
        leading: ClipOval(
          child: Image.network(
            imageUrl,
            fit: BoxFit.fill,
            width: 80,
          ),
        ),
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}
