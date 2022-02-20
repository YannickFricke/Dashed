.PHONY: clear fetch-deps compile-deps compile test test-with-codecov docs inspect analyze watch watch-cmd serve-docs serve-coverage serve-all

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

watch:
	npx onchange -i -k "**/*.ex" "**/*.exs" -- make watch-cmd

watch-cmd:
	clear 
	mix docs
	mix test --cover

serve-docs:
	npx live-server doc/

serve-coverage:
	npx live-server cover/

serve-all:
	npx live-server .
