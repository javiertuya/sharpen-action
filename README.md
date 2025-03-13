# Sharpen docker action

This docker container action converts java to C# using the [Sharpen converter](https://github.com/mono/sharpen).

NOTICE: I have replaced the use converter by [JavaToCSharp](https://github.com/paulirwin/JavaToCSharp) which although it is a syntactic converter, is simpler to configure and not constrained by the Java 7 syntax.
The below projects are already converted:
- [portable](https://github.com/javiertuya/portable)
- [visual-assert](https://github.com/javiertuya/visual-assert)
- [selema](https://github.com/javiertuya/selema)
- [tdrules](https://github.com/giis-uniovi/tdrules)
- [qacover](https://github.com/giis-uniovi/qacover)

## Inputs

- `working-dir`: Directory from which sharpen will be run. Default is the current directory.
- `project-dir`: **Required.** Directory that contains the java source code to be converted.
- `sharpen-args`: Additional arguments to be passed to sharpen.

## Example usage

```
uses: javiertuya/sharpen-action@main
with:
  project-dir: 'src/main/java'
  sharpen-args: '@sharpen-all-options.txt'
```

Will produce the converted code in `src/main/main.net`. The options file `@sharpen-all-options.txt` passed as argument specifies the conversion configuration:

```
-flatDirectoryStructure
-pascalCase+ 
-organizeUsings 
-nativeTypeSystem 
-separateInterfaceConstants 
-maxColumns 280 
```
