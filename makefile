clean:
	@melos clean

pub_get:
	@melos bootstrap

format:
	@melos run format

analyze:
	@melos run analyze

l10n:
	@melos run l10n

test:
	@melos run test

lint:
	@melos run lint

metrics:
	@melos run metrics

format_lint:
	@melos run format_lint

test_coverage:
	@melos run test_coverage

build_all:
	@melos run build_all

force_build_all:
	@melos run force_build_all

sync:
	@melos bootstrap
	@melos run l10n
	@melos run force_build_all

#generate run config with flavors
generate_run_config:
	@melos generate-run-config
