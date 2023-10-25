pub_get:
	@melos bootstrap

clean:
	@melos clean

build_all:
	@melos run build_all

force_build_all:
	@melos run force_build_all

#generate run config with flavors
generate_run_config:
	@melos generate-run-config
