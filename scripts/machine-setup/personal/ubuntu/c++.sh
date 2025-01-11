apt-get update

wget -qO- https://apt.llvm.org/llvm-snapshot.gpg.key | sudo tee /etc/apt/trusted.gpg.d/apt.llvm.org.asc
# LLVM
apt-get install -y libllvm-18-ocaml-dev libllvm18 llvm-18 llvm-18-dev llvm-18-doc llvm-18-examples llvm-18-runtime
# Clang and co
apt-get install -y clang-18 clang-tools-18 clang-18-doc libclang-common-18-dev libclang-18-dev libclang1-18 clang-format-18 python3-clang-18 clangd-18 clang-tidy-18
# compiler-rt
apt-get install -y libclang-rt-18-dev
# polly
apt-get install -y libpolly-18-dev
# libfuzzer
apt-get install -y libfuzzer-18-dev
# lldb
apt-get install -y lldb-18
# lld (linker)
apt-get install -y lld-18
# libc++
apt-get install -y libc++-18-dev libc++abi-18-dev
# OpenMP
apt-get install -y libomp-18-dev
# libclc
apt-get install -y libclc-18-dev
# libunwind
apt-get install -y libunwind-18-dev
# mlir
apt-get install -y libmlir-18-dev mlir-18-tools
# bolt
apt-get install -y libbolt-18-dev bolt-18
# flang
apt-get install -y flang-18
# wasm support
apt-get install -y libclang-rt-18-dev-wasm32 libclang-rt-18-dev-wasm64 libc++-18-dev-wasm32 libc++abi-18-dev-wasm32 libclang-rt-18-dev-wasm32 libclang-rt-18-dev-wasm64

ln -sf /usr/bin/clangd-18 /usr/bin/clangd
ln -sf /usr/bin/clang-18 /usr/bin/clang
ln -sf /usr/bin/clang-tidy-18 /usr/bin/clang-tidy
ln -sf /usr/bin/clang-format-18 /usr/bin/clang-format
ln -sf /usr/bin/lld-18 /usr/bin/lld
