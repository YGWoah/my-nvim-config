-- alpha_config.lua
-- alpha_config.lua
return {
    ['goolord/alpha-nvim'] = {
        config = function ()
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
        end
    }
}
