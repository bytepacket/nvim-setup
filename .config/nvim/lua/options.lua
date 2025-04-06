require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt = 'both' -- to enable cursorline!
o.updatetime = 750

local function add(value, str, sep)
    sep = sep or ','
    str = str or ''
    value = type(value) == 'table' and table.concat(value, sep) or value
    return str ~= '' and table.concat({ value, str }, sep) or value
  end
  

vim.o.wildignore = add {
    '*.aux,*.out,*.toc',
    '*.o,*.obj,*.dll,*.jar,*.pyc,*.rbc,*.class',
    '*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp',
    '*.avi,*.m4a,*.mp3,*.oga,*.ogg,*.wav,*.webm',
    '*.eot,*.otf,*.ttf,*.woff',
    '*.doc,*.pdf',
    '*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz',
    -- Cache
    '.sass-cache',
    '*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*.gem',
    -- Temp/System
    '*.*~,*~ ',
    '*.swp,.lock,.DS_Store,._*,tags.lock'
  }