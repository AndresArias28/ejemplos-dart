void main() {
  final Map<String, dynamic> poke = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilidad': <String>['impostor'],
    'sprites': {1: 'dittop/font.png', 2: 'dittop/font.png'}
  };

  print(poke);
  print('nombre: ${poke['name']} ');
  print('sprites: ${poke['sprites']} ');
  print('sprinte back: ${poke['sprites'][2]} ');
  print('sprinte front: ${poke['sprites'][1]} ');
}