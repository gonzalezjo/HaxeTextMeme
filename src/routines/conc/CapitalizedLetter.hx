package routines.conc;

import routines.impl.IEnabled;
import routines.impl.IRoutine;
import routines.virtual.AbstractRoutine;

class CapitalizedLetter extends AbstractRoutine implements IRoutine implements IEnabled {
  inline public function new() {

  };

  private override function open(message:String):String {
    return message.toUpperCase();
  }

  private override function close(message:String):String {
    return message.toUpperCase();
  }
}
