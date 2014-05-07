
clangfiles:
	~/pfff/pfff -gen_clang compile_commands.json
	~/pfff/pfff_test.opt -uninclude_clang
