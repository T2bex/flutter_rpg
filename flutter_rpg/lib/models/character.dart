import 'package:flutter_rpg/models/skill.dart';
import 'package:flutter_rpg/models/stats.dart';
import 'package:flutter_rpg/models/vocation.dart';

class Character with Stats{

  //constructor
  Character({
    
    required this.name,
    required this.slogan,
    required this.vocation,
    required this.id
  });

  //fields
  final Set<Skill> skills = {};
  final Vocation vocation;
  final String name;
  final String slogan;
  final String id;
  bool _isFav = false;

  //getters
  bool  get isFav => _isFav;

  //methods
  void toggleIsFav() {
    _isFav = !_isFav;
  }

  void updateSkill (Skill skill) {
    skills.clear();
    skills.add(skill);
  }
}


//dummy character data

List<Character> characters = [
  Character(id: '1', name: 'Tobe', vocation: Vocation.wizard, slogan: 'Yeahyeah'),
  Character(id: '2', name: 'Tole', vocation: Vocation.junkie, slogan: 'Light me up'),
  Character(id: '3', name: 'Tosin', vocation: Vocation.raider, slogan: 'Watch the world burn'),
  Character(id: '4', name: 'Vick', vocation: Vocation.ninja, slogan: 'Heal the world'),
];