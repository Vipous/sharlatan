import 'dart:math';

class Roulet{
  final int membersSize;
  var random = new Random();
  List<int> members;
  int player;
  int playCount = 0;

  Roulet(this.membersSize);

  randomIndex()=>random.nextInt(members.length);

  init(){
    members = new List.generate(membersSize, (index)=>index);
    player = randomIndex();
  }

  draw(){
    var idx = randomIndex();
    int value = members[idx];
    members.removeAt(idx);
    return value;
  }

  play(){
    playCount++;
    while(members.length>1)
      draw();
    int winner = members.first;
    return winner==player;
  }

  playToWin(){
    while(!play()){
      init();
    }
  }

}