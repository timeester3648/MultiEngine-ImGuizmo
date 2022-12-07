include "../../premake/common_premake_defines.lua"

project "ImGuizmo"
	kind "StaticLib"
	language "C++"
	cppdialect "C++latest"
	cdialect "C17"
	targetname "%{prj.name}"
	inlining "Auto"

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
		"%{IncludeDir.intrinsics}",
		"%{IncludeDir.general_includes}"
	}

	filter "action:vs*"
		disablewarnings { "4018" }