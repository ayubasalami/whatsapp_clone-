import 'package:flutter/material.dart';

class UserInformationScreen extends StatelessWidget {
  const UserInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://media.cntraveler.com/photos/60596b398f4452dac88c59f8/16:9/w_3999,h_2249,c_limit/MtFuji-GettyImages-959111140.jpg',
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_a_photo,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
