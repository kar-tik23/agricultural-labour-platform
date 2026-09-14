import 'package:flutter/material.dart';
import 'farmer_auth_screen.dart';
class FarmerMobileScreen extends StatefulWidget {
  const FarmerMobileScreen({super.key});

  @override
  State<FarmerMobileScreen> createState() => _FarmerMobileScreenState();
}

class _FarmerMobileScreenState extends State<FarmerMobileScreen> {
  final _mobileController = TextEditingController();

  @override
  void dispose() {
    _mobileController.dispose();
    super.dispose();
  }

  void _continue() {
    final mobile = _mobileController.text.trim();

    if (mobile.length != 10) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter a valid 10-digit mobile number.'),
        ),
      );
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FarmerAuthScreen(
          mobileNumber: mobile,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Farmer Login'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 40),

              const Text(
                'Enter your mobile number',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                'We will use your mobile number to log in or register your account.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 32),

              TextField(
                controller: _mobileController,
                keyboardType: TextInputType.phone,
                maxLength: 10,
                decoration: const InputDecoration(
                  labelText: 'Mobile Number',
                  hintText: 'Enter 10-digit mobile number',
                  prefixText: '+91 ',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 16),

              ElevatedButton(
                onPressed: _continue,
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Continue',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}