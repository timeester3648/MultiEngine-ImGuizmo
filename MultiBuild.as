void main(MultiBuild::Workspace& workspace) {	
	auto project = workspace.create_project(".");
	auto properties = project.properties();

	properties.name("ImGuizmo");
	properties.binary_object_kind(MultiBuild::BinaryObjectKind::eStaticLib);
	properties.license("./LICENSE");
	properties.tags("use_header_only_mle");

	properties.project_includes({
		"fmt",
		"mle",
		"fmt",
		"boost",
		"imgui",
		"spdlog",
		"magic_enum",
		"intrinsics"
	});

	project.include_own_required_includes(true);
	project.add_required_project_include({
		"."
	});

	properties.files({
		"./*.h",
		"./*.cpp"
	});

	{
		MultiBuild::ScopedFilter _(workspace, "project.compiler:VisualCpp");
		properties.disable_warnings({ "4018" });
	}
}