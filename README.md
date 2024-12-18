# Veda Task

Mono repo for VedaTask.

## Project Setup

```shell
# Setup dart to pick up global scripts: https://dart.dev/tools/pub/cmd/pub-global#running-a-script-from-your-path
dart pub global activate melos
melos bs
```

Note: For VSCode users, considering installing [melos extension](https://marketplace.visualstudio.com/items?itemName=blaugold.melos-code) as well.

## Generating Strings

```shell
melos run loc
```

## Generating compiled VEC for SVGs

```shell
melos run svg
```

## Running build runner

```shell
melos run br
```
