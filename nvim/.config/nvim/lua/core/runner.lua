vim.cmd('command! Run :lua run_code()')
local run_command_table = {
    ['cpp'] = 'g++ % -o %:r && ./%:r',
    ['c'] = 'gcc % -o %:r && ./%:r',
    ['python'] = 'python3 %',
    ['lua'] = 'lua %',
    ['java'] = 'javac % && java %:r',
    ['zsh'] = 'zsh %',
    ['sh'] = 'sh %',
    ['rust'] = 'rustc % && ./%:r',
    ['go'] = 'go run %',
    ['javascript'] = 'node %'
}


local debug_command_table = {
    ['cpp'] = 'g++ -g % -o %:r && gdb ./%:r',
    ['c'] = 'gcc -g % -o %:r && gdb ./%:r',
}

local extra = 'printf \"\\\\n Press Enter to Continue!\""; read; exit;'


-- To run file run :Run or just press <F5>
function run_code()
    if (run_command_table[vim.bo.filetype]) then
       vim.cmd("2TermExec cmd='".. run_command_table[vim.bo.filetype].."; " .. extra .. "' direction=float")
   else
       print("\nFileType not supported\n")
   end
end

-- To run file run :Debug
function debug_code()
    if (debug_command_table[vim.bo.filetype]) then
       vim.cmd("2TermExec cmd='".. debug_command_table[vim.bo.filetype].."; " .. extra .. "' direction=float")
   else
       print("\nFileType not supported\n")
   end
end

local function strsplit (inputstr)
    local t={}
    for str in string.gmatch(inputstr, "([^\",\"]+)") do
        table.insert(t, str)
    end
    return t
end

-- Use the following function to update the execution command of a filetype temporarly
-- Usage :RunUpdate  --OR-- :RunUpdate filetype
-- If no argument is provided, the command is going to take the filetype of active buffer
function update_command_table(type, filetype)
    local command

    if(filetype == "")then
        filetype = vim.bo.filetype
    else
        filetype = string.sub(filetype, 2, -2)
    end

    filetype = strsplit(filetype)[1]
    
    if(type == 'run') then
        if(run_command_table[filetype]) then
            command = vim.fn.input(string.format("Update run command of filetype (%s): ", filetype),
            run_command_table[filetype], 'file')
        else
            command = vim.fn.input(string.format("Add new run command of filetype (%s): ", filetype))
        end
        if(#command ~= 0) then
            run_command_table[filetype] = command
            print("  Updated!")
        end
    end

    if(type == 'debug') then
        if(debug_command_table[filetype]) then
            command = vim.fn.input(string.format("Update debug command of filetype (%s): ", filetype),
            debug_command_table[filetype], 'file')
        else
            command = vim.fn.input(string.format("Add new debug command of filetype (%s): ", filetype))
        end
        if(#command ~= 0) then
            debug_command_table[filetype] = command
            print("  Updated!")
        end
    end
end
