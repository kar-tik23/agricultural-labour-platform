import 'package:flutter/material.dart';
import 'service_provider_type_screen.dart';
class ServiceProviderMobileScreen extends StatefulWidget {
  const ServiceProviderMobileScreen({super.key});

  @override
  State<ServiceProviderMobileScreen> createState() =>
      _ServiceProviderMobileScreenState();
}

class _ServiceProviderMobileScreenState
    extends State<ServiceProviderMobileScreen> {
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
          builder: (_) => const ServiceProviderTypeScreen(),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Service Provider'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 32),

            const Text(
              'Enter your mobile number',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              'We will use your mobile number to create or access your provider account.',
            ),

            const SizedBox(height: 32),

            TextField(
              controller: _mobileController,
              keyboardType: TextInputType.phone,
              maxLength: 10,
              decoration: const InputDecoration(
                labelText: 'Mobile Number',
                hintText: 'Enter 10-digit mobile number',
                border: OutlineInputBorder(),
                prefixText: '+91 ',
              ),
            ),

            const SizedBox(height: 24),

            ElevatedButton(
              onPressed: _continue,
              child: const Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}