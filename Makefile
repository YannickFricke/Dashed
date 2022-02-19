.PHONY: clear fetch-deps compile-deps compile test docs inspect analyze

default: fetch-deps \
		 compile-deps \
		 compile \
		 docs

clear:
	clear

fetch-deps:
	mix deps.get

compile-deps:
	mix deps.compile

compile:
	mix compile

test:
	mix test

docs:
	mix docs

inspect:
	mix credo

analyze:
	mix dialyzer
