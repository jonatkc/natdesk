local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'junegunn/fzf.vim' 
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'tpope/vim-fugitive'
  use 'shaunsingh/nord.nvim'    -- theme
  use 'ThePrimeagen/vim-be-good'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ('nvim-treesitter/playground')
  use 'ThePrimeagen/harpoon'
  use 'mbbill/undotree'
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
