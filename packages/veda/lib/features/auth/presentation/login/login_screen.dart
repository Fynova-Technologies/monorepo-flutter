import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:veda/app_setup/controller/base_state.dart';
import 'package:veda/config/route/paths.dart';
import 'package:veda/core/constants/enums.dart';
import 'package:veda/features/auth/controllers/auth_controller.dart' as auth;
import 'package:veda/features/auth/presentation/widgets/login_header.dart';

import 'package:veda_components/veda_componenets.dart';
import 'package:veda_resources/veda_resources.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
final _formKey = GlobalKey<FormState>();

class _LoginScreenState extends ConsumerState<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    ref.listen(auth.loginControllerProvider, (prev, next) {
      if (next is BaseError) {
        context.showSnackBar(message: next.failure.reason);
      }
      if (next is BaseSuccess) {
        context.go(Paths.welcomeScreenRoute.path);
        context.showSnackBar(message: "successfully logged in", isError: false);
      }
    });

    ref.listen(auth.signUpControllerProvider, (prev, next) {
      if (next is BaseError) {
        context.showSnackBar(message: next.failure.reason);
      }
      if (next is BaseSuccess) {
        context.go(Paths.welcomeScreenRoute.path);
        context.showSnackBar(
            message: "account created successfully", isError: false);
      }
    });
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SizedBox(
          height: screenHeight(context),
          child: Stack(
            children: [
              ClipPath(
                clipper: CustomClipPathDown(),
                child: Container(
                  height: screenHeight(context) / 1.5,
                  color: colorScheme(context).background,
                  padding: EdgeInsets.symmetric(
                      horizontal: 18, vertical: screenHeight(context) / 18),
                  width: screenWidth(context),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 35),
                      const Align(
                        alignment: Alignment.center,
                        child: LoginHeader(),
                      ),
                      const SizedBox(height: 35),
                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Login",
                              style: textTheme(context)
                                  .bodyLarge!
                                  .copyWith(fontWeight: FontWeight.w100),
                            ),
                            const SizedBox(height: 7),
                            Text(
                              "Email",
                              style: textTheme(context).bodyMedium!.copyWith(
                                    fontWeight: FontWeight.w200,
                                    fontSize: 12,
                                  ),
                            ),
                            VedaTextField(
                              controller: _emailController,
                              validator: (value) =>
                                  FormValidator.emailValidator(value!),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Password",
                              style: textTheme(context).bodyMedium!.copyWith(
                                    fontWeight: FontWeight.w200,
                                    fontSize: 12,
                                  ),
                            ),
                            VedaTextField(
                              controller: _passwordController,
                              isPassword: false,
                              onPressed: () {},

                              // validator: (value) =>
                              //     FormValidator.passwordValidator(value!),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: screenHeight(context) / 1.89,
                child: Column(
                  children: [
                    SizedBox(
                      width: screenWidth(context),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: screenHeight(context) / 18.8,
                            width: screenWidth(context) / 3,
                            child: Consumer(
                              builder: (context, ref, child) {
                                final signupState =
                                    ref.watch(auth.signUpControllerProvider);
                                return VedaButton.tonal(
                                  label: "SIGNUP",
                                  ontap: _signUp,
                                  showProgress:
                                      signupState is BaseLoading ? true : false,
                                );
                              },
                            ),
                          ),
                          SizedBox(width: screenWidth(context) / 50),
                          SizedBox(
                            height: screenHeight(context) / 18.8,
                            width: screenWidth(context) / 3,
                            child: Consumer(
                              builder: (context, ref, child) {
                                final authState0 =
                                    ref.watch(auth.loginControllerProvider);
                                return VedaButton(
                                  label: "LOGIN",
                                  showProgress:
                                      authState0 is BaseLoading ? true : false,
                                  ontap: _logIn,
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenHeight(context) * 0.09,
                    ),
                    Text(
                      'or login with',
                      style: textTheme(context)
                          .bodySmall
                          ?.copyWith(color: Colors.black),
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      width: screenWidth(context),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Consumer(
                            builder: (context, ref, child) {
                              final socialAuthState =
                                  ref.watch(auth.socialLoginIn);
                              return InkWell(
                                onTap: () {
                                  ref
                                      .read(auth.socialLoginIn.notifier)
                                      .loginWithSocialAuth(
                                          socialAuthType:
                                              SocialAuthType.google);
                                },
                                child: SocialContainer(
                                  source: Asset.icons.google,
                                  isLoading: socialAuthState is BaseLoading
                                      ? true
                                      : false,
                                ),
                              );
                            },
                          ),
                          InkWell(
                            onTap: () {
                              context.showSnackBar(
                                  message:
                                      "Facebook login is not implemented yet.");
                            },
                            child: SocialContainer(
                              source: Asset.icons.fb,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              context.showSnackBar(
                                  message: "X login is not implemented yet.");
                            },
                            child: SocialContainer(
                              source: Asset.icons.x,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenHeight(context) * 0.09,
                    ),
                    Row(
                      children: [
                        Text(
                          "Don't have an account yet?",
                          style: textTheme(context)
                              .bodySmall!
                              .copyWith(color: Colors.black),
                        ),
                        Text(
                          "SIGNUP",
                          style: textTheme(context).bodyMedium?.copyWith(
                              fontSize: 13,
                              color: colorScheme(context).background),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _signUp() {
    if (_formKey.currentState!.validate()) {
      ref.read(auth.signUpControllerProvider.notifier).signupWithCreds(
          email: _emailController.text, password: _passwordController.text);
      // ref.read(auth)
    }
  }

  _logIn() {
    if (_formKey.currentState!.validate()) {
      ref.read(auth.loginControllerProvider.notifier).loginWithCreds(
          email: _emailController.text, password: _passwordController.text);
      // context.push(Paths.welcomeScreenRoute.path);
      // context.showSnackBar(message: "successfully logged in", isError: false);
      // ref.read(auth)
    }
  }
}
