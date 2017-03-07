package routines.impl;

interface IRoutine {
  private var isOpen = false;
  private function open(message:String):String;
  private function close(message:String):String;
  public function obfuscate(message:String):String;
}
