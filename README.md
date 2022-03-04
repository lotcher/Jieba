# Jieba.jl

jieba分词的PyCall调用版本

## Install

```shell
julia> ]
pkg> add https://github.com/lotcher/Jieba.jl.git
```

## Usage

## 分词

```julia
using Jieba

cut("我是真的大帅哥")   # ["我", "是", "真的", "大", "帅哥"]
cut_for_search("卡梅隆安东尼戴维斯")  # ["卡梅隆", "安东", "安东尼", "维斯", "戴维斯"]
```

## 其他

使用样例见test/runtests.jl

```julia
using Jieba

jieba  # python: import jieba

analyse  # python: import jieba.analyse

pseg  # python: import jieba.posseg as pseg
```



