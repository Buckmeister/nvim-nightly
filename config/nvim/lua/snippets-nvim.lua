require'snippets'.use_suggested_mappings()

require'snippets'.snippets = {
    _global = {
        date = function() return os.date() end,
        todo = [[TODO(${1=io.popen("id -un"):read"*l"}): ]],
        note = [[NOTE(${1=io.popen("id -un"):read"*l"}): ]]
    }
}

