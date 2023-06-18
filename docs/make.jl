using SuperLU_Base
using Documenter

DocMeta.setdocmeta!(SuperLU_Base, :DocTestSetup, :(using SuperLU_Base); recursive=true)

makedocs(;
    modules=[SuperLU_Base],
    authors="Raye Kimmerer <kimmerer@mit.edu>",
    repo="https://github.com/Wimmerer/SuperLU_Base.jl/blob/{commit}{path}#{line}",
    sitename="SuperLU_Base.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Wimmerer.github.io/SuperLU_Base.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Wimmerer/SuperLU_Base.jl",
    devbranch="main",
)
