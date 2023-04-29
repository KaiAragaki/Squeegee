function hw()
    println("Hello")
end

function readspectramax(path)
    # Assumption: First line (and only first line) will be a (useless) block # statement

    lines = readlines(path)

    CSV.read(path, DataFrame(), delim = "\t")
end
