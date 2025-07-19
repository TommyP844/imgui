project "ImGui"
	language "C++"
	kind "StaticLib"
	cppdialect "C++20"
    architecture "x64"
    staticruntime "Off"
    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir    ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")
   
	files
	{
        "imgui.h",
        "imgui_stdlib.h",
        "imgui_config.h",
        "imgui_internal.h",
        "imstb_rectpack.h",
        "imstb_truetype.h",
        "imstb_textedit.h",

        "imgui.cpp",
        "imgui_demo.cpp",
        "imgui_draw.cpp",
        "imgui_tables.cpp",
        "imgui_widgets.cpp",

        "misc/cpp/imgui_stdlib.h",
        "misc/cpp/imgui_stdlib.cpp",
	}

	optimize "Speed"
	floatingpoint "Fast"
	intrinsics "On"

    filter { "configurations:Debug" }
        runtime "Debug"

    filter {"configurations:Release"}
        runtime "Release"

