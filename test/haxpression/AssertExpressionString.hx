package haxpression;

import utest.Assert;
using haxpression.AssertExpression;

class AssertExpressionString {
  public static function evaluatesToTrue(input : String) : Void {
    (input : Expression).evaluatesToTrue();
  }

  public static function evaluatesToFalse(input : String) : Void {
    (input : Expression).evaluatesToFalse();
  }

  public static function evaluatesToBool(input : String, expected : Bool) : Void {
    (input : Expression).evaluatesToBool(expected);
  }

  public static function evaluatesToInt(input : String, expected : Int) : Void {
    (input : Expression).evaluatesToInt(expected);
  }

  public static function evaluatesToFloat(input : String, expected : Float) : Void {
    (input : Expression).evaluatesToFloat(expected);
  }

  public static function evaluatesToString(input : String, expected : String) : Void {
    (input : Expression).evaluatesToString(expected);
  }

  public static function evaluatesToNone(input : String) : Void {
    (input : Expression).evaluatesToNone();
  }

  public static function evaluatesToNA(input : String) : Void {
    (input : Expression).evaluatesToNA();
  }

  public static function evaluatesToNM(input : String) : Void {
    (input : Expression).evaluatesToNM();
  }

  public static function toObjectSameAs(input : String, expected : {}) : Void {
    (input : Expression).toObjectSameAs(expected);
  }

  public static function toStringSameAs(input : String, expected : {}) : Void {
    (input : Expression).toStringSameAs(expected);
  }

  public static function assertParses(input : String) : Void {
    try {
      var expr = Parser.parse(input);
      Assert.pass();
    } catch (e : Dynamic) {
      Assert.fail('"$input" should have parsed');
      trace(e);
    }
  }

  public static function assertParserThrows(input : String) : Void {
    try {
      var expr = Parser.parse(input);
      Assert.fail('"$input" should not have parsed');
      trace(expr.toExpressionType());
    } catch (e : Dynamic) {
      Assert.pass();
    }
  }
}
