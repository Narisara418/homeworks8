
import 'dart:math';

class Game {
  static const defaultMaxRandom = 100;
  int? _answer;
  int _guessCount = 0;
  static final List<int> guessCountList = [];

  Game({int maxRandom = defaultMaxRandom}) {
    var r = Random();
    _answer = r.nextInt(maxRandom) + 1;
    print('The answer is $_answer');
  }

  int get guessCount {
    return _guessCount;
  }

  void addCountList() {
    guessCountList.add(_guessCount);
  }

  int doGuess(int num) {
    _guessCount++;
    if (num > _answer!) {
      return 1;
    } else if (num < _answer!) {
      return -1;
    } else {
      return 0;
    }
  }
}

/*import 'dart:math';

class Game{ // camel case
  static const maxRandom = 100;
  int? _answer;
  int guessCount=0;

  Game(){
    var r = Random();
    _answer = r.nextInt(maxRandom)+1;
  }

  int doGuess(int num){
    print(_answer);
    guessCount++;
    if(num > _answer!){
      return 1;
    }else if(num < _answer!){
      return -1;
    }else{
      return 0;
    }
  }
}*/