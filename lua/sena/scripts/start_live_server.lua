local Job = require("plenary.job")

local function start_or_open_live_server()
    local port_range_start = 3000
    local port_range_end = 4000
    local default_port = 3000

    Job:new({
        command = "lsof",
        args = { "-i", ":" .. default_port },
        on_exit = function(job, return_val)
            local result = job:result()

            if #result > 0 then
                print("Live server is already running on port " .. default_port)
                Job:new({
                    command = "xdg-open",
                    args = { "http://localhost:" .. default_port },
                }):start()
            else
                local port = math.random(port_range_start, port_range_end)
                print("Starting live-server on port " .. port .. "...")

                Job:new({
                    command = "live-server",
                    args = { "--port=" .. port },
                    on_exit = function()
                        vim.defer_fn(function()
                            Job:new({
                                command = "xdg-open",
                                args = { "http://localhost:" .. port },
                            }):start()
                        end, 2000)
                    end,
                }):start()
            end
        end,
    }):start()
end

return {
    start_or_open_live_server = start_or_open_live_server,
}
