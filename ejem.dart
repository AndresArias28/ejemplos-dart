main() {
  var cats = ['Abyssinian', 'Scottish Fold', 'Domestic Shorthair'];
  print(cats); // [Abyssinian, Scottish Fold, Domestic Shorthair]
  
  var catsInReverse = cats.map((String cat) {
    return new String.fromCharCodes(cat.codeUnits.reversed);
  }).toList(); // [nainissybA, dloF hsittocS, riahtrohS citsemoD]
  print(catsInReverse);
}
