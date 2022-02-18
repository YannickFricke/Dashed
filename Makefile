.PHONY: clear fetch-deps compile-deps compile docs inspect analyze

default: compile inspect analyze

clear:
	clear

fetch-deps:
	mix deps.get

compile-deps:
	mix deps.compile

compile:
	mix compile

docs:
	mix docs

inspect:
	mix credo

analyze:
	mix dialyzer
