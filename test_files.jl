using Parquet

fs = readdir(;join=true)


fs = [f for f in fs if isfile(f)]

fs = [f for f in fs if splitext(f)[2]==".parquet"]

fs

pfs = ParFile.(fs)

rpfs = RecordCursor.(pfs)

crpfs = collect.(rpfs)

fcrpfs = first.(crpfs)
