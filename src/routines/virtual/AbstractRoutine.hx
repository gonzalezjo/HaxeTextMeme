package routines.virtual;

class AbstractRoutine {
  var isOpen = false;

  private inline function open(message:String):String {
    throw "Attempt to access method of abstract class.";
    return "";
  }

  private inline function close(message:String):String {
    throw "Attempt to access method of abstract class.";
    return "";
  }

  public inline function obfuscate(message:String):String {
    isOpen != isOpen;
    return isOpen ? open(message) : close(message);
  }
}
