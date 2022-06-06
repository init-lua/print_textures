minetest.after(6, function()

    local out = {}

    local modnames = minetest.get_modnames()

    for i, name in ipairs(modnames) do

        local filepath = minetest.get_modpath(name).."/textures/"

        local files
        files = minetest.get_dir_list(filepath, false)
        for f=1, #files do
            local filename = files[f]
            local outname, _ext = filename:match("(.*)$")
            table.insert(out, outname)
        end
        table.sort(out,function(a,b) return a<b end)
    end

    print(dump(out))


end)
