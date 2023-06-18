module SuperLU_Base

using SparseBase
# Common definitions for SuperLU, SuperLU_MT, and
# SueprLU_DIST.
include("common.jl")

# convert and unsafe_convert definitions for formats.

# NOTE: S *must* outlive the conversion.

function Base.unsafe_convert(
    ::Type{<:Common.NCformat}, S::SparseBase.CSCStore{Tv, CIndex{Ti}}
) where {Tv, Ti}
    return Common.NCformat{Ti}(
        nstored(S), 
        Ptr{Cvoid}(pointer(S.v)), 
        Base.unsafe_convert(Ptr{Ti}, S.idx),
        Base.unsafe_convert(Ptr{Ti}, S.ptr)
    ), S
end

function Base.unsafe_convert(
    ::Type{<:Common.NRformat}, S::SparseBase.CSRStore{Tv, CIndex{Ti}}
) where {Tv, Ti}
    return Common.NRFormat{Ti}(
        nstored(S), 
        Ptr{Cvoid}(pointer(S.v)), 
        Base.unsafe_convert(Ptr{Ti}, S.idx),
        Base.unsafe_convert(Ptr{Ti}, S.ptr)
    ), S
end

end
