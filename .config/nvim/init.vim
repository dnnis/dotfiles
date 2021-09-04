""       ____      _ __ 
""      /  _/___  (_) /_
""      / // __ \/ / __/
""    _/ // / / / / /_  
""   /___/_/ /_/_/\__/  

"" This is the initialization file for neovim.
"" Here, if you want to add or remove a plugin's settings remove or comment
"" the line that matches the plugin, include more files with the runtime
"" command if you want.

"Initializing vim-plug list (new plugins need to be added in the included file
"below!)
runtime settings/plugin_list.vim
"Initializing standard neovim settings
runtime settings/general.vim
"Initializing settings for color and theme settings
runtime settings/colors.vim
"Initializing settings for native vim character autocompletion (default: all disabled)
runtime settings/syntax.vim
"Initializing settings for vim registers
runtime settings/registers.vim
"Initializing settings for some of vims keybindings
runtime settings/keybinds.vim

"Initializing plugin custom settings
runtime settings/plugin-settings/coc.vim
runtime settings/plugin-settings/airline.vim
runtime settings/plugin-settings/NerdTree.vim
runtime settings/plugin-settings/devIcons.vim
runtime settings/plugin-settings/indentLine.vim
runtime settings/plugin-settings/MatchTagAlways.vim
runtime settings/plugin-settings/confortable-motion.vim

