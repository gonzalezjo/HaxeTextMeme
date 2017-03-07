package frontend;

import frontend.impl.IUserInterface;

class CommandLineUserInterface implements IUserInterface {
  inline public function new():Void {
  };

  public inline function readUserInput():String {
    return Sys.stdin().readLine();
  }
}
