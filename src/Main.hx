import routines.conc.CapitalizedLetter;
import frontend.CommandLineUserInterface;
import routines.impl.IEnabled;
import obfuscator.Obfuscator;

// https://haxe.org/manual/cr-metadata.html

class Main {
  private static var DEBUG_MODE = true;
  private static var input:String = DEBUG_MODE ? "I like big milk and I cannot lie." : new CommandLineUserInterface().readUserInput();

  public static function main() {
    CompileTime.importPackage("routines.conc");
    var output:String = "";
    var obfuscationEngine = new Obfuscator();

    for (i in 0...input.length)
      output += obfuscationEngine.obfuscate(input.charAt(i));

    trace(output);
  }
}
