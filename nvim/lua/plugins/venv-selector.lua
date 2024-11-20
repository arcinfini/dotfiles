-- Used to select a venv in a python project for functionality with LSP servers
return {
    'linux-cultist/venv-selector.nvim',
    branch = "regexp",
    ft={ 'python', 'py', '.py' },

    opts = {
        notify_user_on_venv_activation = true,
        enable_cached_venvs = true,
        cached_venv_automatic_activation = true,
        activate_venv_in_terminal = true,
    }
}
