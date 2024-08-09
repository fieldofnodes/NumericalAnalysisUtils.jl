using NumericalAnalysisUtils
using Documenter

DocMeta.setdocmeta!(NumericalAnalysisUtils, :DocTestSetup, :(using NumericalAnalysisUtils); recursive=true)

makedocs(;
    modules=[NumericalAnalysisUtils],
    authors="Jonathan Miller jonathan.miller@fieldofnodes.com",
    sitename="NumericalAnalysisUtils.jl",
    format=Documenter.HTML(;
        canonical="https://fieldofnodes.github.io/NumericalAnalysisUtils.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/fieldofnodes/NumericalAnalysisUtils.jl",
    devbranch="main",
)
