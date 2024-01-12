package funkin.util.tools;

/**
 * A static extension which provides utility functions for Maps.
 *
 * For example, add `using MapTools` then call `map.values()`.
 *
 * @see https://haxe.org/manual/lf-static-extension.html
 */
class MapTools
{
  /**
   * Return the quantity of keys in the map.
   */
  public static function size<K, T>(map:Map<K, T>):Int
  {
    return map.keys().array().length;
  }

  /**
   * Return a list of values from the map, as an array.
   */
  public static function values<K, T>(map:Map<K, T>):Array<T>
  {
    return [for (i in map.iterator()) i];
  }

  /**
   * Create a new array with all elements of the given array, to prevent modifying the original.
   */
  public static function clone<K, T>(map:Map<K, T>):Map<K, T>
  {
    return map.copy();
  }

  /**
   * Create a new array with clones of all elements of the given array, to prevent modifying the original.
   */
  public static function deepClone<K, T, U:ICloneable<T>>(map:Map<K, U>):Map<K, T>
  {
    // TODO: This function does NOT work.
    throw "Not implemented";

    /*
      var newMap:Map<K, T> = [];
      // Replace each value with a clone of itself.
      for (key in newMap.keys())
      {
        newMap.set(key, newMap.get(key).clone());
      }
      return newMap;
     */
  }

  /**
   * Return a list of keys from the map (as an array, rather than an iterator).
   * TODO: Rename this?
   */
  public static function keyValues<K, T>(map:Map<K, T>):Array<K>
  {
    return map.keys().array();
  }
}
