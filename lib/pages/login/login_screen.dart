import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../shared/style/color_manager.dart';
import '../../shared/widgets/components.dart';
import '../sign_up/sign_up_screen.dart';


class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LoginScreen({Key? key}) : super(key: key);
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
                SizedBox(height: size.height * 0.2),

                const CustomLogoAndTitle(customSize: 65),
                SizedBox(height: size.height * 0.07),
                Text('Sign in',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: ColorManager.primary)),
                SizedBox(height: size.height * 0.005),
                Text('Enter your email and password',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: ColorManager.black, fontSize: 18)),
                SizedBox(height: size.height * 0.03),

                /// Email
                DefaultFormField(
                  controller: emailController,
                  type: TextInputType.emailAddress,
                  validate: (String? value) {
                    return null;
                  },
                  label: 'Email',
                ),

                SizedBox(height: size.height * 0.017),

                //Password
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

                SizedBox(height: size.height * 0.015),

                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Forget password?',
                      style: Theme.of(context).textTheme.bodyText2!
                          .copyWith(color: ColorManager.primary, fontSize: 16)),
                ),

                SizedBox(height: size.height * 0.025),

                DefaultButton(
                  function: () {},
                  text: 'Sign in',
                  width: size.width * 0.5,
                ),
                SizedBox(height: size.height * 0.025),

                Text.rich(
                  TextSpan(
                    text: 'Don\'t have an account? ',
                    style: Theme.of(context).textTheme.bodyText2!
                        .copyWith(color: ColorManager.grey,fontSize: 16),
                    children: [
                      TextSpan(
                          text: 'Sign up',
                          style: Theme.of(context).textTheme.bodyText2!
                              .copyWith(color: ColorManager.primary,fontSize: 16,fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => navigateAndReplace(context, SignUpScreen())
                            ),
                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
