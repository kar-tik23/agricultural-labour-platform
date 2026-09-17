import 'package:flutter/material.dart';

class ServiceProviderSkillScreen extends StatefulWidget {
  const ServiceProviderSkillScreen({super.key});

  @override
  State<ServiceProviderSkillScreen> createState() =>
      _ServiceProviderSkillScreenState();
}

class _ServiceProviderSkillScreenState
    extends State<ServiceProviderSkillScreen> {
  final Map<String, List<String>> _skillsByCrop = {
    'Grape': [
      'Pruning (October and April)',
      'Harvesting',
      'Grading',
      'Packing',
      'Installation of drip system',
    ],
    'Pomegranate': [
      'Pruning and canopy management',
      'Harvesting',
      'Grading',
      'Packing',
      'Installation of drip system',
    ],
    'Guava': [
      'Pruning',
      'Training & canopy management',
      'Harvesting',
      'Grading',
      'Packing',
    ],
    'Onion': [
      'Seed sowing',
      'Seedling transplanting',
      'Harvesting',
      'Grading',
    ],
  };

  final Set<String> _selectedSkills = {};

  // Temporary selection until we connect the actual selected crops.
  final List<String> _selectedCrops = [
    'Grape',
    'Pomegranate',
    'Guava',
    'Onion',
  ];

  List<String> get _availableSkills {
    final skills = <String>{};

    for (final crop in _selectedCrops) {
      skills.addAll(_skillsByCrop[crop] ?? []);
    }

    return skills.toList();
  }

  void _continue() {
    if (_selectedSkills.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select at least one skill.'),
        ),
      );
      return;
    }

    // Next: expected pay screen.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Skills'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 24),

            const Text(
              'What work can you perform?',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              'Select all the agricultural skills you provide.',
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView(
                children: _availableSkills.map((skill) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: CheckboxListTile(
                      title: Text(skill),
                      value: _selectedSkills.contains(skill),
                      onChanged: (selected) {
                        setState(() {
                          if (selected == true) {
                            _selectedSkills.add(skill);
                          } else {
                            _selectedSkills.remove(skill);
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