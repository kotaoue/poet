# go-lt
This is draft and script for lightning talks.

## Requirement
1. wasm_exec.js
    ```bash
    cp "$(go env GOROOT)/misc/wasm/wasm_exec.js" .
    ```
    * cf. [GoのWebAssemblyがこんなに簡単なわけがない](https://gusugusu1018.github.io/2019/09/17/Go%E3%81%AEWebAssembly%E3%81%8C%E3%81%93%E3%82%93%E3%81%AA%E3%81%AB%E7%B0%A1%E5%8D%98%E3%81%AA%E3%82%8F%E3%81%91%E3%81%8C%E3%81%AA%E3%81%84/)
    * cf. [can't run wasm module in browser: LinkError: WebAssembly Instantiation #29827](https://github.com/golang/go/issues/29827)
1. [shurcooL/goexec](https://github.com/shurcooL/goexec)
    ```bash
    go get -u github.com/shurcooL/goexec
    ```

## Usage
```
make build
make http
make open
```