--======== AutoCompletion - works with LSP =============
--including luasnip's snippet autocompletion = https://github.com/hrsh7th/nvim-cmp/wiki/Example-mappings#luasnip

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local luasnip = require("luasnip")
local cmp = require'cmp'

cmp.setup({
   snippet = {
     -- REQUIRED - you must specify a snippet engine
     expand = function(args)
       --vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
       luasnip.lsp_expand(args.body) -- For `luasnip` users.
       -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
       -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
     end,
   },
    mapping = {
      ["<up>"] = cmp.mapping.select_prev_item(),
      ["<down>"] = cmp.mapping.select_next_item(),
      -- ["<cr>"] = cmp.mapping.confirm(),
      ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),

    --luasnip snippet mapping
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
  }, --luasnip snippet mapping end
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' }, -- For luasnip users.
    { name = 'nvim_lua' },
    { name = 'path' }
  }, {
      { name = 'buffer' },
    })
})
