My typst templates for note taking:

file structure
```
notes/
    |_ some-note-dir/
        |_ foo.typ
    |_ templates/
        |_ THIS-REPO
```

export TYPST_ROOT in your .bashrc
```bash
export TYPST_ROOT="$HOME/Documents/notes"
```

for typst preview in nvim make sure to export the right typst root directory
```lua
    require('typst-preview').setup({
    get_root = function(path)
        local env = os.getenv("TYPST_ROOT")
        if env and env ~= "" then
            return vim.fn.expand(env)
        end
        return vim.fn.fnamemodify(path, ':p:h')
    end,
})
```

After you did all that you just need to add
```typst
#import "/templates/main.typ": *

#show: doc => template(
    [TITEL],
    true, // enable-header
    doc,
)
```

to your typst file to use the template
