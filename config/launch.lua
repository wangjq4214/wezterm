local platform = require('utils.platform')

local options = {
  default_prog = {},
  launch_menu = {},
}

if platform.is_win then
  options.default_prog = { 'powershell' }
  options.launch_menu = {
    { label = 'PowerShell Core', args = { 'pwsh' } },
    -- { label = 'PowerShell Desktop', args = { 'powershell' } },
    -- { label = 'Command Prompt',     args = { 'cmd' } },
    -- { label = 'Nushell',            args = { 'nu' } },
    -- {
    --    label = 'Git Bash',
    --    args = { 'bash.exe' },
    -- },
    -- {
    --    label = 'Ubuntu Linux',
    --    args = { 'ssh', 'kali@127.0.0.1', '-p', '10022' },
    -- },
  }
elseif platform.is_mac then
  options.default_prog = { '/bin/zsh' }
  options.launch_menu = {
    { label = 'Zsh', args = { 'zsh' } },
    { label = 'Bash', args = { 'bash' } },
    { label = 'Nushell', args = { '/opt/homebrew/bin/nu' } },
  }
end

return options
