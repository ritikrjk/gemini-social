
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:gemini_social/app/controllers/auth/auth_controller.dart';
import 'package:gemini_social/app/core/theme/app_theme.dart';

class VerifyAccountView extends GetView<AuthController> {
  const VerifyAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56.w,
      height: 60.h,
      textStyle: TextStyle(fontSize: 22.sp, color: AppTheme.secondaryColor),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12.r),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Account'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24.w),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 500.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Enter the 4-digit code sent to your email.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                ),
                SizedBox(height: 32.h),
                Pinput(
                  length: 4,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      border: Border.all(color: AppTheme.primaryColor),
                    ),
                  ),
                  onCompleted: (pin) { // TODO: Implement logic
                    print(pin);
                  },
                ),
                SizedBox(height: 32.h),
                ElevatedButton(
                  onPressed: () { // TODO: Implement logic
                     Get.offAllNamed('/home');
                  },
                  child: const Text('Verify'),
                ),
                SizedBox(height: 16.h),
                TextButton(
                  onPressed: () { // TODO: Implement logic
                  },
                  child: const Text('Resend Code'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
