using SuperLUBase
using Documenter

DocMeta.setdocmeta!(SuperLUBase, :DocTestSetup, :(using SuperLUBase); recursive=true)

makedocs(;
    modules=[SuperLUBase],
    authors="Raye Kimmerer <kimmerer@mit.edu>",
    repo="https://github.com/Wimmerer/SuperLUBase.jl/blob/{commit}{path}#{line}",
    sitename="SuperLUBase.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Wimmerer.github.io/SuperLUBase.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Wimmerer/SuperLUBase.jl",
    devbranch="main",
)
