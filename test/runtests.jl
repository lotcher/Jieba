using Jieba
using Test

@testset "Jieba.jl" begin
    # 分词
    cut("我是真的大帅哥") |> println
    cut_for_search("卡梅隆安东尼戴维斯") |> println

    # 特征提取
    analyse.extract_tags("提取TF-IDF特征向量") |> println
    analyse.textrank("提取TextRank特征向量") |> println

    # 词性标注
    pseg.lcut("我爱北京天安门") |> println
end
