import 'package:angular2/core.dart';
import 'package:sharlatan/roulet.dart';


@Component(
    selector: 'roulet',
    templateUrl: 'roulet_component.html',
    styleUrls: const['roulet_component.css'])
class RouletComponent{
  int playCount=0;
  int memberSize=400;
  List results = new List();

  onPlay(int memberSize){
    var roulet = new Roulet(memberSize.toInt());
    roulet.playToWin();
    results.add(roulet.playCount);
  }

  onClean(){
    results.clear();
  }

}