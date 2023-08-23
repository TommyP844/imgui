project "ImGui"
	language "C++"
	kind "StaticLib"
	location ""
	cppdialect "C++17"
	
    includedirs
    {
        ".",
        "%VULKAN_SDK%/Include",
        "../../glfw/include"
    }

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

        -- Backends
        "backends/imgui_impl_glfw.h",
        "backends/imgui_impl_glfw.cpp",

        "backends/imgui_impl_vulkan.h",
        "backends/imgui_impl_vulkan.cpp"
	}

    links
    {
        "glfw",
        "%VULKAN_SDK%/Lib/vulkan-1.lib"
    }

	optimize "Speed"
	floatingpoint "Fast"
	intrinsics "On"
	
