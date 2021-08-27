# cc2020_cl_cam_ac_uk

[![Main workflow](https://github.com/yallop/cc_cl_cam_ac_uk/actions/workflows/test.yml/badge.svg)](https://github.com/yallop/cc_cl_cam_ac_uk/actions/workflows/test.yml)

## slang-cli

To build the slang compiler and interpreter

```
dune build slang-cli
```

To clean the repo

```
dune clean
```

## Project Structure

- slang - The slang library containing the code for the compilation steps and interpreters
- slagn-cli - The cli tool wrapping the slang library
- web - A js_of_ocaml wrapper around the slang library exposing the compiler for the `compiler-explorer`
- compiler-explorer - A graphical ui for exploring the various representations and their evaluations on virtual machines
