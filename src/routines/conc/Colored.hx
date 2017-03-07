package routines.conc;

import routines.impl.IEnabled;
import routines.impl.IRoutine;
import routines.virtual.AbstractRoutine;

class Colored extends AbstractRoutine implements IEnabled implements IRoutine {
  inline public function new() {

  };

  private override function open(message:String):String {
    return message.toUpperCase();
  }

  private override function close(message:String):String {
    return message.toUpperCase();
  }
}
