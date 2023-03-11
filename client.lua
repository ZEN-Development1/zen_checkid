-- Define the chat command
RegisterCommand("id", function()
  -- Get the player's ID
  local playerId = GetPlayerServerId(PlayerId())
  
  -- Show the player's ID in the chat
  TriggerEvent("chat:addMessage", {
    color = { 255, 255, 255 },
    multiline = true,
    args = { "Your ID is", playerId }
  })
end, false)

-- Print a message when the script loads
Citizen.CreateThread(function()
  print("The /id command is now available.")
end)
