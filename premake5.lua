project "ImGui"
	language "C++"
	kind "StaticLib"
	location ""
	cppdialect "C++20"
    architecture "x64"

	files
	{
        "imgui.h",
        "imonfig.h",
        "imgui_internal.h",
        "imstb_rectpack.h",
        "imstb_truetype.h",
        "imstb_textedit.h",

        "imgui.cpp",
        "imgui_demo.cpp",
        "imgui_draw.cpp",
        "imgui_tables.cpp",
        "imgui_widgets.cpp",
	}

	optimize "Speed"
	floatingpoint "Fast"
	intrinsics "On"

    filter { "configurations:Debug" }
        buildoptions {"/MDd"}

    filter {"configurations:Release"}
        buildoptions {"/MD"}

