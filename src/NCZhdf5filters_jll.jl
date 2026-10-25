# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule NCZhdf5filters_jll
using Base
using Base: UUID
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("NCZhdf5filters")
JLLWrappers.@generate_main_file("NCZhdf5filters", Base.UUID("32d0703f-864f-5a7b-ab44-f2b6ffafdad8"))
end  # module NCZhdf5filters_jll
