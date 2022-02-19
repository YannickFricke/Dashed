# Dashed

Dashed is a Elixir library for composing CLI commands through a custom DSL
(domain specific language).

## Installation

Please execute the following command to get the latest version of dashed:

`mix hex.info dashed`

Everything behind the `Config: ` string needs to be added to the `mix.exs` file.

```elixir
def deps do
  [
    {:dashed, "~> X.X.X"}
  ]
end
```

## Supported data types

-   string
-   integer
-   float
-   boolean
-   list
-   map

## TODOs

-   [ ] CLI Application
    -   [x] Name
    -   [x] Description
    -   [x] Version
    -   [ ] Commands
-   [x] Input Parser
    -   [x] Can make use of options (`Keyword.t()`)
    -   [x] Supported data types
        -   [x] string
        -   [x] integer
        -   [x] float
        -   [x] boolean
        -   [x] list
        -   [x] map
-   [ ] Command
    -   [ ] Name
    -   [ ] Description
    -   [ ] Aliases
    -   [ ] Command Arguments
        -   [ ] Name
        -   [ ] Description
        -   [ ] Type (see [Supported data types](#supported-data-types))
        -   [ ] Required
        -   [ ] Rest of args (for list type)
    -   [ ] Command Flags
        -   [ ] Name
        -   [ ] Description
        -   [ ] Alias
        -   [ ] Type (see [Supported data types](#supported-data-types))
        -   [ ] Required

## Input parser

InputParsers are used for parsing the passed strings from the CLI into a Elixir
term.

They are used by the command arguments and command flags.
