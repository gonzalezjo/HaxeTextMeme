package routines.virtual;

class AbstractRoutine {
  var isOpen = false;

  private function open(message:String):String {
    throw "Attempt to access method of abstract class.";
    return "";
  }

  private function close(message:String):String {
    throw "Attempt to access method of abstract class.";
    return "";
  }

  public function obfuscate(message:String):String {
    isOpen != isOpen;
    return isOpen ? open(message) : close(message);
  }
}
