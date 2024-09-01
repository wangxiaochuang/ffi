# fii

## nodejs调用 rust 库

使用脚手架代码 [package-template](https://github.com/napi-rs/package-template)

编译

```sh
yarn install
yarn build
```

## python调用 rust 库

### 开发环境

#### rye

[rye](https://github.com/astral-sh/rye) 一个 python 环境的管理工具

```sh
curl -sSf https://rye.astral.sh/get | bash
echo 'source "$HOME/.rye/env"' >> ~/.bash_profile
```

#### maturin

maturin 将rust 编译成 python 下的库的工具

#### 创建子项目

```sh
cd $WORKSPACE
rye init python-binding --build-system maturin
cd python-binding
rye sync
rye install maturin
rye add --dev pip
rye add --dev ipython
```

都安装好了后，可以开始编译了

```sh
# 注意编译使用的 python 版本是否和运行使用的版本一致
maturin develop
rye run ipython
```

实际 python 里库的名字想要换成algo

```sh
mv python-binding/python/python_binding python_binding/python/algo
# 修改 python_binding/python/algo/__init__.py 里的内容 python_binding -> algo
# 修改 python_binding/pyproject.toml 里的内容 python_binding -> algo
```
