load("@build_bazel_rules_nodejs//:defs.bzl", "node_repositories")
load("@io_bazel_rules_sass//:defs.bzl", "sass_repositories")
load("@io_bazel_rules_sass//:package.bzl", "rules_sass_dependencies")
load("@io_bazel_skydoc//:setup.bzl", "skydoc_repositories")

# Requirements for building our piptool.
load(
    "@piptool_deps//:requirements.bzl",
    _piptool_install = "pip_install",
)

# Imports for examples.
load(
    "@examples_helloworld//:requirements.bzl",
    _helloworld_install = "pip_install",
)
load(
    "@examples_version//:requirements.bzl",
    _version_install = "pip_install",
)
load(
    "@examples_boto//:requirements.bzl",
    _boto_install = "pip_install",
)
load(
    "@examples_extras//:requirements.bzl",
    _extras_install = "pip_install",
)


def rules_python_internal_setup():
    # TODO(fweikert): The following four function calls should be replaced with
    # bazel_stardoc_setup(), rules_sass_setup() and rules_nodejs_setup().
    # However, those setup functions don't exist yet.
    skydoc_repositories()
    rules_sass_dependencies()
    node_repositories()
    sass_repositories()

    # Requirements for building our piptool.
    _piptool_install()

    # Imports for examples.
    _helloworld_install()
    _version_install()
    _boto_install()
    _extras_install()
