import 'package:flutter/material.dart';

import '../models/crop.dart';
import '../models/skill.dart';
import '../services/catalogue_service.dart';

class LabourSearchScreen extends StatefulWidget {
  const LabourSearchScreen({super.key});

  @override
  State<LabourSearchScreen> createState() => _LabourSearchScreenState();
}

class _LabourSearchScreenState extends State<LabourSearchScreen> {
  Crop? _selectedCrop;
  Skill? _selectedSkill;

  List<Skill> get _availableSkills {
    if (_selectedCrop == null) {
      return [];
    }

    return CatalogueService.getSkillsForCrop(_selectedCrop!.id);
  }

  void _onCropChanged(Crop? crop) {
    setState(() {
      _selectedCrop = crop;
      _selectedSkill = null;
    });
  }

  void _findWorkers() {
    if (_selectedCrop == null || _selectedSkill == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select a crop and required work/skill.'),
        ),
      );
      return;
    }

    // Location and matching will be connected next.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find Labour'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),

              const Text(
                'Find the right labour',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Select the crop and agricultural work you need help with.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 32),

              DropdownButtonFormField<Crop>(
                initialValue: _selectedCrop,
                decoration: const InputDecoration(
                  labelText: 'Select Crop',
                  border: OutlineInputBorder(),
                ),
                items: CatalogueService.crops.map((crop) {
                  return DropdownMenuItem<Crop>(
                    value: crop,
                    child: Text(crop.name),
                  );
                }).toList(),
                onChanged: _onCropChanged,
              ),

              const SizedBox(height: 24),

              DropdownButtonFormField<Skill>(
                initialValue: _selectedSkill,
                decoration: const InputDecoration(
                  labelText: 'Required Work / Skill',
                  border: OutlineInputBorder(),
                ),
                items: _availableSkills.map((skill) {
                  return DropdownMenuItem<Skill>(
                    value: skill,
                    child: Text(skill.name),
                  );
                }).toList(),
                onChanged: _selectedCrop == null
                    ? null
                    : (skill) {
                        setState(() {
                          _selectedSkill = skill;
                        });
                      },
              ),

              const SizedBox(height: 32),

              ElevatedButton(
                onPressed: _findWorkers,
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