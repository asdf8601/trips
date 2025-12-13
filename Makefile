DENO_BIN := /Users/mgreco/.deno/bin/deno

.PHONY: install up

install:
	curl -fsSL https://deno.land/install.sh | sh

up:
	$(DENO_BIN) run -A --unstable-kv -r https://get.silverbullet.md .
