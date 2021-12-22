import 'dart:math';

class Game{ //camel case
  static const maxRandom =100;
  int? _answer;
  var count = 0;
  Game(){
    var r = Random();

    _answer= r.nextInt(maxRandom)+1;
  }
  int doGuess(int num){
    doCount();
    //ทายถูก return 0
    //มากไป return 1
    //น้อยไป return -1
    if(num > _answer!){
      return 1;
    }
    else if(num< _answer!){
      return -1;
    }
    else{
      return 0;
    }
  }
  int getmaxRandom(){
    return maxRandom;
  }
  doCount() {
    count++;
  }

  int getCount() {
    return count;
  }



}