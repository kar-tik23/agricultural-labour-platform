import 'package:flutter/material.dart';
import 'service_provider_skill_screen.dart';
class ServiceProviderCropScreen extends StatefulWidget {
  const ServiceProviderCropScreen({super.key});

  @override
  State<ServiceProviderCropScreen> createState() =>
      _ServiceProviderCropScreenState();
}

class _ServiceProviderCropScreenState
    extends State<ServiceProviderCropScreen> {
  final List<String> _crops = const [
    'Grape',
    'Pomegranate',
    'Guava',
    'Onion',
  ];

  final Set<String> _selectedCrops = {};

  void _continue() {
    if (_selectedCrops.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select at least one crop.'),
        ),
      );
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const ServiceProviderSkillScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Crops'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 24),

            const Text(
              'Which crops do you work with?',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              'Select all crops for which you provide agricultural services.',
            ),

            const SizedBox(height: 24),

            Expanded(
              child: ListView(
                children: _crops.map((crop) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: CheckboxListTile(
                      title: Text(crop),
                      value: _selectedCrops.contains(crop),
                      onChanged: (selected) {
                        setState(() {
                          if (selected == true) {
                            _selectedCrops.add(crop);
                          } else {
                            _selectedCrops.remove(crop);
                          }
                        });
                      },
                    ),
                  );
                }).toList(),
              ),
            ),

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
