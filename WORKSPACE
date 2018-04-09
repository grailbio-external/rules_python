# Copyright 2017 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

workspace(name = "rules_python")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")
http_archive(
    name = "bazel_federation",
    url = "https://github.com/bazelbuild/bazel-federation/archive/4da9b5f83ffae17613fa025a0701fa9db9350d41.zip",
    sha256 = "5b1cf980e327a8f30fc81c00c04007c543e17c09ed612fb645753936de790ed7",
    strip_prefix = "bazel-federation-4da9b5f83ffae17613fa025a0701fa9db9350d41",
    type = "zip",
)

load("@bazel_federation//:repositories.bzl", "rules_python_deps")
rules_python_deps()

load("@bazel_federation//setup:rules_python.bzl",  "rules_python_setup")
rules_python_setup(use_pip=True)

load("//:internal_deps.bzl", "rules_python_internal_deps")
rules_python_internal_deps()

load("//:internal_setup.bzl", "rules_python_internal_setup")
rules_python_internal_setup()

http_file(
    name = "wheel_0_31_1_whl",
    sha256 = "80044e51ec5bbf6c894ba0bc48d26a8c20a9ba629f4ca19ea26ecfcf87685f5f",
    # From https://pypi.org/project/wheel/
    urls = [("https://files.pythonhosted.org/packages/81/30/" +
           "e935244ca6165187ae8be876b6316ae201b71485538ffac1d718843025a9/" +
           "wheel-0.31.1-py2.py3-none-any.whl")],
    downloaded_file_path = "wheel-0.31.1-py2.py3-none-any.whl"
)
