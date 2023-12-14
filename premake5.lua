include "../../premake/common_premake_defines.lua"

project "ImGuizmo"
	kind "StaticLib"
	language "C++"
	cppdialect "C++latest"
	cdialect "C17"
	targetname "%{prj.name}"
	inlining "Auto"
	tags { "use_header_only_mle" }

	files {
		"./*.h",
		"./*.cpp"
	}

	includedirs {
		"%{IncludeDir.fmt}",
		"%{IncludeDir.mle}",
		"%{IncludeDir.fmt}",
		"%{IncludeDir.boost}",
		"%{IncludeDir.imgui}",
		"%{IncludeDir.spdlog}",
		"%{IncludeDir.magic_enum}",
		"%{IncludeDir.intrinsics}",
		"%{IncludeDir.general_includes}"
	}

	filter "toolset:msc"
		disablewarnings { "4018" }