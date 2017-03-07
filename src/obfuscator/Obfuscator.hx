package obfuscator;

import routines.impl.IRoutine;
import routines.impl.IEnabled;
import routines.conc.*;

class Obfuscator {
  private static var routineList = CompileTime.getAllClasses("routines.conc");

  private var routineArray = new Array();
  private var minimumLoops:Int;
  private var maximumLoops:Int;

  public inline function new(minimumLoops:Int = 0, maximumLoops:Int = 3) {
    this.minimumLoops = minimumLoops;
    this.maximumLoops = maximumLoops;

    for (i in routineList.iterator())
      routineArray.push(Type.createInstance(i, []));

  }

  public inline function obfuscate(message:String) {
    var output = message;

    for (i in minimumLoops...Std.random(maximumLoops + 1))
      output = routineArray[Std.random(routineArray.length)].obfuscate(output);

    return output;
  }
}
