# `Grpc Build For Android aarch 64`

`host_env: ubuntu 22.04`  `ndk`交叉编译链为：`android-ndk-r28b`

`grpc`交叉编译出`Android`平台下的 `static` 以及 `shared` 库

本文是基于最新 [Release v1.70.2](https://github.com/grpc/grpc/releases/tag/v1.70.2) 以及 https://github.com/asheshvidyut/grpc/tree/fix/issue/39836 来编译出`so`以及`a`。

```shell
git clone https://github.com/grpc/grpc.git
```

默认`clone`下来的是`master`分支，需要`checkout`到版本分支上。

```shell
git branch --remote

git checkout -b origin/v1.72.x && git pull origin v1.72.x
```

切换并且更新`v1.72.x`分支。

```bash
git submodule update --init
```

安装所有 `submodule`， 之后可以`build`以及`install`库了。

## Shared  Build

静态库的编译需要执行如下的命令。

```bash
cmake -Bbuild -S. -DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK_HOME/build/cmake/android.toolchain.cmake   -DANDROID_ABI=arm64-v8a  -DANDROID_PLATFORM=android-30 -DANDROID_STL=c++_static -DCMAKE_BUILD_TYPE=Release  -DgRPC_BUILD_CODEGEN=OFF -DBUILD_SHARED_LIBS=ON -DCMAKE_POSITION_INDEPENDENT_CODE=ON -DgRPC_BUILD_TESTS=OFF -DgRPC_BUILD_CSHARP_EXT=OFF -DgRPC_BUILD_GRPC_CPP_PLUGIN=OFF -DgRPC_BUILD_GRPC_NODE_PLUGIN=OFF -DgRPC_BUILD_GRPC_OBJECTIVE_C_PLUGIN=OFF -DgRPC_BUILD_GRPC_PHP_PLUGIN=OFF -DgRPC_BUILD_GRPC_PYTHON_PLUGIN=OFF -DgRPC_BUILD_GRPC_RUBY_PLUGIN=OFF -DNDEBUG=ON -DCMAKE_C_FLAGS="-g0" -DCMAKE_CXX_FLAGS="-g0" -DCMAKE_INSTALL_PREFIX=`pwd`/sharedArmV8
```

请注意：可以编译出` v8` 的` grpc `版本是特殊的，必须是需要 `protocbuf` 的` v31.1`。而这一点在静态库倒是没问题是可以编译出来。

从 `grpc` 中 `clone` 下来代码是编译不通过的，编译过程中会出现：

```
ld: error: undefined symbol: google__protobuf__FeatureSetDefaults_msg_init
```

https://github.com/grpc/grpc/issues/36896 这个在`grpc`上版本上已经提出了`issuse.`

`github`上有一笔`pr`已经合入，grpc表明会在`V1.7.4b`版本修复这个问题。但是截至`2025/07/03`号， 最新的版本是`V1.7.3`，所以`clone`了`pr`的库。

https://github.com/grpc/grpc/pull/39916

下面是修复的`pr`

https://github.com/asheshvidyut/grpc/tree/fix/issue/39836

```bash
git clone https://github.com/asheshvidyut/grpc.git
cd grpc
git branch --remote
git checkout -b fix/issue/39836
git submodule update --init
```

执行完成之后 `grpc` 的 `submodule` 下载完成。需要确保 `./third_part/protocbuf `的版本是`V31.1`。

```bash
cd third_party/protobuf/
git describe --tag
//输出 v4.31.1

cmake --build build -j 8//开始编译
```

编译完成之后就会生成`so`库了。

## Static Build

编译出静态库仅仅使用 `clone` 下来` v1.72.x` 即可， 在下载所有的 `submodule` 执行下面的命令。

```bash
cmake -BbuildStatic -S. -DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK_HOME/build/cmake/android.toolchain.cmake -DANDROID_ABI=arm64-v8a  -DANDROID_PLATFORM=android-30 -DANDROID_STL=c++_static -DCMAKE_BUILD_TYPE=Release  -DgRPC_BUILD_CODEGEN=OFF -DCMAKE_POSITION_INDEPENDENT_CODE=ON -DgRPC_BUILD_TESTS=OFF -DgRPC_BUILD_CSHARP_EXT=OFF -DgRPC_BUILD_GRPC_CPP_PLUGIN=OFF -DgRPC_BUILD_GRPC_NODE_PLUGIN=OFF -DgRPC_BUILD_GRPC_OBJECTIVE_C_PLUGIN=OFF -DgRPC_BUILD_GRPC_PHP_PLUGIN=OFF -DgRPC_BUILD_GRPC_PYTHON_PLUGIN=OFF -DgRPC_BUILD_GRPC_RUBY_PLUGIN=OFF -DNDEBUG=ON -DCMAKE_C_FLAGS="-g0" -DCMAKE_CXX_FLAGS="-g0" -DCMAKE_INSTALL_PREFIX=`pwd`/staticArmV8

 cmake --build buildStatic -j 8
 
 cmake --install buildStatic
```

至此`.a`也编译完成，之后会对这些`.a`在编译可执行文件的时候使用。

## 错误排查

### 问题一

```shel
gmake[2]: *** No rule to make target '_gRPC_CPP_PLUGIN-NOTFOUND', needed by 'gens/src/proto/grpc/reflection/v1alpha/reflection.grpc.pb.cc'.  Stop.
gmake[1]: *** [CMakeFiles/Makefile2:2298: CMakeFiles/grpc++_reflection.dir/all] Error 2
gmake: *** [Makefile:156: all] Error 2
```

出现此问题是因为缺少宿主机的 `grpc-cpp-plugin`， 这一步存在两种解决方式，如果仅仅编译库而非 `protoc`可执行文件的话。

```shell -Dprotobuf_BUILD_PROTOC_BINARIES=OFF
-Dprotobuf_BUILD_PROTOC_BINARIES=OFF
```

另外一种就是通过源码编译出`x86 protoc bin`来使用， 建议也编译出x86的`protoc`插件工具来，方便后续对`protoc`文件生成`.cc`文件。

```shell
mkdir -p cmake/build_host && cd cmake/build_host
cmake -Bbuild -S../.. -DgRPC_BUILD_TESTS=OFF -DCMAKE_BUILD_TYPE=Release
cmake --build build编译出插件 x86 的插件。
```

修改[examples/cpp/cmake/common.cmake](https://github.com/grpc/grpc/blob/7f9b19b3cd56b4474b4d4abf282ddfebf9b58709/examples/cpp/cmake/common.cmake#L65) 中第64行`find_program`直接换成了如下的定义的编译出的`host`的`protoc_cpp`插件。

`set(_GRPC_CPP_PLUGIN_EXECUTABLE "/home/wdf/grpc/cmake/build_host/build/grpc_cpp_plugin")`

之后重新编译之后问题解决。

### 编译参数说明

```bash
-DgRPC_SSL_PROVIDER=none \          # 完全禁用 OpenSSL（不加密）
-DgRPC_UPB_PROVIDER=module \        # 内嵌 upb
-DgRPC_ABSL_PROVIDER=module \       # 内嵌 absl
-DgRPC_BUILD_TESTS=OFF \            # 关闭测试
-DgRPC_BUILD_CSHARP_EXT=OFF \       # 关闭 C# 支持
-DgRPC_BUILD_GRPC_NODE_PLUGIN=OFF \ # 关闭 Node.js 插件
-DgRPC_BUILD_GRPC_PYTHON_PLUGIN=OFF \ # 关闭 Python 插件
-DBUILD_SHARED_LIBS=OFF \           # 强制静态库（.a）
-DCMAKE_POSITION_INDEPENDENT_CODE=ON  # 支持 PIC（适用于动态加载）
```
