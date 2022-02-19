dsl_calls = [
  name: 1
]

[
  inputs: ["{mix,.formatter}.exs", "{config,lib,test}/**/*.{ex,exs}"],
  locals_without_parens: dsl_calls,
  export: [
    locals_without_parens: dsl_calls
  ],
  import_deps: [:stream_data]
]
