# clang-format

Simple plugin that uses the clang-format tool from the LLVM toolchain to format the current buffer with the given style file.

## Usage:

### Using lazy:

```lua
'marcosantos98/clang-format.nvim'

require('clang-format').setup({ clangFormatPath = <path> })
```

- `clangFormatPath`: path to a file containing the style options.

Btw, You can set `<path>` like a lua function.
Example:
```lua
require('clang-format').setup({ clangFormatPath = os.getenv("HOME")..'/.clang-format' })
```
