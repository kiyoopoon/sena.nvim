-- Before you scroll any further I warn you, my code sucks and this script will suck even more cause it's my first time making stuffs for neovim, please open a PR if you think you can improve the script.

local Job = require("plenary.job")
local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

local function list_live_servers()
    local live_servers = {}

    local find_job = Job:new({
        command = "lsof",
        args = { "-iTCP", "-n", "-P" },
        on_exit = function(job)
            local result = job:result()
            for _, line in ipairs(result) do
                if line:find("node") and line:find("LISTEN") then
                    local port = line:match(":%d+")
                    if port then
                        table.insert(live_servers, "Live server running on port " .. port:sub(2))
                    end
                end
            end

            if #live_servers > 0 then
                vim.schedule(function()
                    pickers
                        .new({}, {
                            prompt_title = "Running Live Servers",
                            finder = finders.new_table({
                                results = live_servers,
                            }),
                            sorter = require("telescope.config").values.generic_sorter({}),
                            attach_mappings = function(prompt_bufnr, map)
                                map("i", "<CR>", function()
                                    local selection = action_state.get_selected_entry()
                                    actions.close(prompt_bufnr)
                                    print(selection[1] .. " selected!")
                                    local port = selection[1]:match("%d+")
                                    if port then
                                        Job:new({
                                            command = "lsof",
                                            args = { "-t", "-i:" .. port },
                                            on_exit = function(kill_job)
                                                local pid = kill_job:result()[1]
                                                if pid then
                                                    Job:new({
                                                        command = "kill",
                                                        args = { pid },
                                                        on_exit = function()
                                                            print("Live server on port " .. port .. " stopped.")
                                                        end,
                                                    }):start()
                                                end
                                            end,
                                        }):start()
                                    end
                                end)
                                return true
                            end,
                        })
                        :find()
                end)
            else
                print("No live servers found.")
            end
        end,
    })

    find_job:start()
end

return {
    list_live_servers = list_live_servers,
}
