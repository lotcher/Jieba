module Jieba
using PyCall

export jieba, analyse
export cut, cut_for_search

const jieba, analyse = PyNULL(), PyNULL()

# https://github.com/JuliaPy/PyCall.jl#using-pycall-from-julia-modules
function __init__()
    copy!(jieba, pyimport("jieba"))
    copy!(analyse, pyimport("jieba.analyse"))
end

cut(msg; use_paddle = false, cut_all = false, HMM = false) = jieba.lcut(
    msg, use_paddle = use_paddle, cut_all = cut_all, HMM = HMM
)
cut_for_search(msg; HMM = false) = jieba.lcut_for_search(msg, HMM = HMM)

end