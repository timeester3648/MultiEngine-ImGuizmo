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

 	filter "system:windows"
		disablewarnings { "4018" }

 	filter "configurations:Debug"
		defines { "MLE_DEBUG_BUILD", "DEBUG" }
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		defines { "MLE_RELEASE_BUILD", "NDEBUG" }
		flags { "LinkTimeOptimization" }
		runtime "Release"
		optimize "speed"
		intrinsics "on"

	filter "configurations:Distribution"
		defines {  "MLE_DISTRIBUTION_BUILD", "NDEBUG" }
		flags { "LinkTimeOptimization" }
		runtime "Release"
		optimize "speed"
		intrinsics "on"