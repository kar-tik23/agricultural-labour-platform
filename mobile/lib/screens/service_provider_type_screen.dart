import 'package:flutter/material.dart';
import 'service_provider_profile_screen.dart';
class ServiceProviderTypeScreen extends StatefulWidget {
  const ServiceProviderTypeScreen({super.key});

  @override
  State<ServiceProviderTypeScreen> createState() =>
      _ServiceProviderTypeScreenState();
}

class _ServiceProviderTypeScreenState
    extends State<ServiceProviderTypeScreen> {
  String? _selectedType;

  final List<String> _providerTypes = const [
    'Individual Labour',
    'Labour Group',
    'Contractor',
  ];

  void _continue() {
    if (_selectedType == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select a service provider type.'),
        ),
      );
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const ServiceProviderProfileScreen(),
      ),
    );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Service Provider Type'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 24),

            const Text(
              'What type of service provider are you?',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              'Select the option that best describes your work.',
            ),

            const SizedBox(height: 28),

            ..._providerTypes.map(
              (type) => Card(
                margin: const EdgeInsets.only(bottom: 12),
                child: RadioListTile<String>(
                  title: Text(type),
                  value: type,
                  groupValue: _selectedType,
                  onChanged: (value) {
                    setState(() {
                      _selectedType = value;
                    });
                  },
                ),
              ),
            ),

            const Spacer(),

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