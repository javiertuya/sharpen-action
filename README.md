# Sharpen docker action

This docker container action converts java to C# using the [Sharpen converter](https://github.com/mono/sharpen).

## Inputs

## `working-dir`
Directory from which sharpen will be run. Default is the current directory.

## `project-dir`
**Required.** Directory that contains the java source code to be converted.

## `sharpen-args`
Additional arguments to be passed to sharpen.

## Example usage

```
uses: javiertuya/sharpen-action@main
with:
  project-dir: 'src/main/java'
  sharpen-args: '@sharpen-all-options.txt'
```

Will produce the converted code in `src/main/main.net`. The options file passed as argument specifies the conversion configuration:

```
-flatDirectoryStructure
-pascalCase+ 
-organizeUsings 
-nativeTypeSystem 
-separateInterfaceConstants 
-maxColumns 280 
```
