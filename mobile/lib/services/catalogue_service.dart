import '../models/crop.dart';
import '../models/skill.dart';

class CatalogueService {
  static const List<Crop> crops = [
    Crop(
      id: 'grape',
      name: 'Grape',
    ),
    Crop(
      id: 'pomegranate',
      name: 'Pomegranate',
    ),
    Crop(
      id: 'guava',
      name: 'Guava',
    ),
    Crop(
      id: 'onion',
      name: 'Onion',
    ),
  ];

  static const Map<String, List<Skill>> skillsByCrop = {
    'grape': [
      Skill(
        id: 'grape_pruning',
        name: 'Pruning (October and April)',
      ),
      Skill(
        id: 'grape_harvesting',
        name: 'Harvesting',
      ),
      Skill(
        id: 'grape_grading',
        name: 'Grading',
      ),
      Skill(
        id: 'grape_packing',
        name: 'Packing',
      ),
      Skill(
        id: 'grape_drip',
        name: 'Installation of drip system',
      ),
    ],
    'pomegranate': [
      Skill(
        id: 'pomegranate_pruning',
        name: 'Pruning and canopy management',
      ),
      Skill(
        id: 'pomegranate_harvesting',
        name: 'Harvesting',
      ),
      Skill(
        id: 'pomegranate_grading',
        name: 'Grading',
      ),
      Skill(
        id: 'pomegranate_packing',
        name: 'Packing',
      ),
      Skill(
        id: 'pomegranate_drip',
        name: 'Installation of drip system',
      ),
    ],
    'guava': [
      Skill(
        id: 'guava_pruning',
        name: 'Pruning',
      ),
      Skill(
        id: 'guava_training',
        name: 'Training & canopy management',
      ),
      Skill(
        id: 'guava_harvesting',
        name: 'Harvesting',
      ),
      Skill(
        id: 'guava_grading',
        name: 'Grading',
      ),
      Skill(
        id: 'guava_packing',
        name: 'Packing',
      ),
    ],
    'onion': [
      Skill(
        id: 'onion_seed_sowing',
        name: 'Seed sowing',
      ),
      Skill(
        id: 'onion_transplanting',
        name: 'Seedling transplanting',
      ),
      Skill(
        id: 'onion_harvesting',
        name: 'Harvesting',
      ),
      Skill(
        id: 'onion_grading',
        name: 'Grading',
      ),
    ],
  };

  static List<Skill> getSkillsForCrop(String cropId) {
    return skillsByCrop[cropId] ?? [];
  }
}