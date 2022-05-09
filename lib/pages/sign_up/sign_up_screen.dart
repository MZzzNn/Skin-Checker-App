import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../login/login_screen.dart';
import '../../shared/style/color_manager.dart';
import '../../shared/widgets/components.dart';


class SignUpScreen extends StatelessWidget {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
            child: Column(
              children: [
                SizedBox(height: size.height * 0.1),
                const CustomLogoAndTitle(customSize: 65),
                SizedBox(height: size.height * 0.03),
                Text('Sign up',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: ColorManager.primary)),
                SizedBox(height: size.height * 0.005),
                Text('Create an account',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: ColorManager.black, fontSize: 18)),
                SizedBox(height: size.height * 0.03),
                DefaultFormField(
                  controller: firstNameController,
                  type: TextInputType.name,
                  validate: (String? value) {
                    return null;
                  },
                  label: 'First name',
                ),
                SizedBox(height: size.height * 0.017),
                DefaultFormField(
                  controller: lastNameController,
                  type: TextInputType.name,
                  validate: (String? value) {
                    return null;
                  },
                  label: 'Last name',
                ),
                SizedBox(height: size.height * 0.017),
                DefaultFormField(
                  controller: emailController,
                  type: TextInputType.emailAddress,
                  validate: (String? value) {
                    return null;
                  },
                  label: 'Email',
                ),
                SizedBox(height: size.height * 0.017),
                DefaultFormField(
                  controller: passwordController,
                  type: TextInputType.visiblePassword,
                  suffix: Icons.remove_red_eye,
                  isPassword: false,
                  suffixPressed: () {},
                  validate: (String? value) {
                    return null;
                  },
                  label: 'Password',
                ),
                SizedBox(height: size.height * 0.017),
                DefaultFormField(
                  controller: confirmPasswordController,
                  type: TextInputType.visiblePassword,
                  suffix: Icons.remove_red_eye,
                  isPassword: false,
                  suffixPressed: () {},
                  validate: (String? value) {
                    return null;
                  },
                  label: 'Confirm password',
                ),
                SizedBox(height: size.height * 0.017),
                DefaultFormField(
                  controller: locationController,
                  type: TextInputType.text,
                  validate: (String? value) {
                    return null;
                  },
                  label: 'Location',
                ),
                SizedBox(height: size.height * 0.025),
                DefaultButton(
                  function: () {},
                  text: 'Sign up',
                  width: size.width * 0.5,
                ),
                SizedBox(height: size.height * 0.025),
                Text.rich(
                  TextSpan(
                    text: 'have an account? ',
                    style: Theme.of(context).textTheme.bodyText2!
                        .copyWith(color: ColorManager.grey,fontSize: 16),
                    children: [
                      TextSpan(
                          text: 'log in',
                          style: Theme.of(context).textTheme.bodyText2!
                              .copyWith(color: ColorManager.primary,fontSize: 16,fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => navigateAndReplace(context, LoginScreen())
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
