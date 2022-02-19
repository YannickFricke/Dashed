.PHONY: clear fetch-deps compile-deps compile test test-with-codecov docs inspect analyze ci

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
	
test-with-codecov:
	mix test --cover

docs:
	mix docs

inspect:
	mix credo

analyze:
	mix dialyzer

ci: fetch-deps compile-deps compile test-with-codecov inspect analyze docs
