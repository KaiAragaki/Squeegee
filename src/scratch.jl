path = expanduser("~")*"/Downloads/2021-12-07_tgfb-elisa_uc6-rt112-hi-lo-dense_uc6.pda.txt"

lines = readlines(path)

ends = findall(lines .== "~End")

sectionstarts = append!([2], ends[1:end-1])
sectionends = ends .- 1

lines[sectionstarts[1]:sectionends[1]]

sections = []

for i = 1:length(sectionstarts)
    push!(sections, lines[sectionstarts[i]:sectionends[i]])
end
