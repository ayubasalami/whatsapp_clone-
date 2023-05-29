import 'package:chatify/colors.dart';
import 'package:chatify/common/utils/utils.dart';
import 'package:chatify/common/widgets/custom_button.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controller/auth_controller.dart';

class LoginScreen extends ConsumerStatefulWidget {
  static const routeName = '/login_screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  late final TextEditingController phoneNumberController;
  Country? country;
  void getCountry() {
    showCountryPicker(
        context: context,
        onSelect: (Country _country) {
          setState(() {
            country = _country;
          });
        });
  }

  void sendPhoneNumber() {
    String phoneNumber = phoneNumberController.text.trim();
    if (country != null && phoneNumber.isNotEmpty) {
      ref
          .read(authControllerProvider)
          .signInWithPhone(context, '${'+${country!.phoneCode}'}$phoneNumber');
    } else {
      showSnackBar(context: context, content: 'FIll out all fields ');
    }
  }

  @override
  void initState() {
    phoneNumberController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Enter your phone number'),
          elevation: 0,
          backgroundColor: backgroundColor,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('WhatsApp will need to verify your phone number'),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: getCountry,
                    child: const Text('Pick Country'),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      if (country != null) Text('+${country!.phoneCode}'),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: size.width * 0.7,
                        child: TextField(
                          controller: phoneNumberController,
                          decoration:
                              const InputDecoration(hintText: 'phone number'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.6,
                  ),
                  SizedBox(
                    width: 90,
                    child: CustomButton(
                      text: 'NEXT',
                      onPressed: sendPhoneNumber,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
