# Neovim Config

Neovim config for Ruby/Rails, JavaScript, Python and Go.

## Plugins

### Core
- **lazy.nvim** - Plugin manager with lazy loading
- **nvim-lspconfig** - LSP client configuration
- **mason.nvim** - Automatic LSP server installation
- **nvim-treesitter** - Syntax highlighting and parsing

### Completion & Snippets
- **blink.cmp** - Fast completion engine
- **friendly-snippets** - Collection of snippets for various languages

### LSP & Diagnostics
- **trouble.nvim** - Diagnostics and symbols panel
- **ruby-lsp** - Ruby Language Server (via rbenv)
- **ts_ls** - TypeScript/JavaScript LSP
- **pyright** - Python LSP
- **lua_ls** - Lua LSP

### Formatting & Linting
- **conform.nvim** - Auto-formatting with rubocop, prettier, eslint
- **gitsigns.nvim** - Git integration and change indicators

### File Management
- **nvim-tree** - File explorer tree
- **mini.files** - Alternative file manager
- **snacks.nvim** - Fast file picker

### Search & Replace
- **grug-far.nvim** - Find and replace across project
- **snacks picker** - Fuzzy file/text search

### Testing
- **neotest** - Test runner framework
- **neotest-rspec** - RSpec adapter for Ruby/Rails testing

### UI & Appearance
- **github-nvim-theme** - GitHub dark theme
- **lualine.nvim** - Modern statusline
- **nvim-colorizer** - Color code highlighting
- **indent-blankline** - Indent guides
- **mini.indentscope** - Current scope highlighting

### Git Integration
- **gitsigns.nvim** - Git changes in gutter
- **lazygit** - Git UI (via snacks)

### Utilities
- **auto-save.nvim** - Automatic file saving
- **nvim-treesitter-textobjects** - Smart text objects (functions, classes)
- **nvim-treesitter-context** - Context breadcrumbs

## Key Bindings

### Basic Navigation
- `<Space>` - Leader key
- `z` - Close current window/buffer
- `<Cmd+Shift+E>` - Toggle file tree

### File Operations
- `<Space><Space>` or `<Space>ff` - Find files
- `<Space>fg` - Live grep
- `<Space>fb` - Buffers
- `<Space>fm` - Mini files
- `<Space>sr` - Search and replace

### LSP & Diagnostics
- `gd` - Go to definition
- `K` - Hover documentation
- `<Space>ca` - Code actions
- `<Space>rn` - Rename symbol
- `<Space>d` - Show diagnostics
- `[d` / `]d` - Previous/next diagnostic

### Git
- `<Space>gg` - Open lazygit
- `<Space>gp` - Preview hunk
- `<Space>gs` - Stage hunk
- `<Space>gr` - Reset hunk
- `<Space>gR` - Reset buffer
- `]h` / `[h` - Next/previous hunk

### Testing
- `<Space>tt` - Run nearest test
- `<Space>tf` - Run file tests
- `<Space>ts` - Toggle test summary

### Text Objects
- `vaf` / `vif` - Select function (around/inner)
- `vac` / `vic` - Select class (around/inner)
- `vaa` / `via` - Select argument/parameter

### Other
- `<Cmd+/>` - Comment/uncomment lines
- `<Tab>` - Show completion menu
- `<Down>` / `<Up>` - Navigate snippets
- `<Space>xx` - Toggle diagnostics panel

## Setup for macOS/iTerm2

### Terminal Key Mappings

To enable `<Cmd+/>` for commenting lines, configure iTerm2 key mappings:

1. Open iTerm2 → Preferences → Profiles → Keys → Key Mappings
2. Add a new key mapping:
   - **Keyboard Shortcut**: `⌘/` (Cmd+Slash)
   - **Action**: Send Escape Sequence
   - **Esc+**: `d`
