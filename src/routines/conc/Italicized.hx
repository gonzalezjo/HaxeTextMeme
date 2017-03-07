package routines.conc;

import routines.impl.IEnabled;
import routines.impl.IRoutine;
import routines.virtual.AbstractRoutine;

class Italicized extends AbstractRoutine implements IEnabled implements IRoutine {
  inline public function new() {

  };

  private override function open(message:String):String {
    return '[i]$message';
  }

  private override function close(message:String):String {
    return '$message[/i]';
  }
}
