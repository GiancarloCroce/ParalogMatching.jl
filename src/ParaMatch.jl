module ParaMatch

using FastaIO, ExtractMacro, Iterators, Compat
using Distributions
using MathProgBase

export read_fasta_alignment, prepare_alignments, run_matching,
       paralog_matching

# Including the types used for the Matching
include("types.jl")

# Including the reader for the FASTA
include("readdata.jl")

# Including some utilities for the FASTA/Alignment manip
include("utils_fasta.jl")

# Including the routines for manipulation/Preparing for merging the Alignment
include("manip_fasta.jl")

# utils.jl contains the matching/optimization routines
include("utils.jl")

# Performing the iterative/progressive matching task
include("matching_fasta.jl")

# Including the routines for evaluating/plotting the solution
include("plotting.jl")

end
