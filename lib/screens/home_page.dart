import 'package:bootcamp/widgets/top_var.dart';
import 'package:flutter/material.dart';

class HomepageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(
                title: 'Shahin',
                subtitle: '@sha._.04',
                color: Color(0xFFFF5454),
              ),
              const SizedBox(height: 10),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('Portfolio',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 22,
                          color: Color(0xff000000)))),
              const SizedBox(height: 10),
              GridView.builder(
                padding: EdgeInsets.all(10),
                itemCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2),
                itemBuilder: (ctx, index) => Container(
                  child: Image.network(
                    'https://cdn.wallpaperhub.app/cloudcache/6/7/a/f/6/d/67af6d336b1e8178533f897067c5463a1a403d76.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
