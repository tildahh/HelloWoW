
SLASH_HELLO1 = "/hellowow"
SLASH_HELLO2 = "/hellow"

-- prints greeting 
local function showGreeting(name)
    local greeting = "Hello " .. name .. "!"
    message(greeting)
end 

-- hello wow function 
local function HelloWoWHandler(name)
    
    local userAddedName = string.len(name) > 0
    
    if(userAddedName) then 
        showGreeting(name)
    else 
        local playerName = UnitName("player")
        showGreeting(playerName)
    end 
end 


SlashCmdList["HELLO"] = HelloWoWHandler



