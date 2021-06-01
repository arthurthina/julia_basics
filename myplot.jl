using CSV
using DataFrames
using Plots
using Pipe

d = CSV.read("data/micro_seo.csv", DataFrame)|> dropmissing

print(d)

bar(d.Day, d.Sessions, label = "Sessions")
savefig("plots/sessions_micro.png")
