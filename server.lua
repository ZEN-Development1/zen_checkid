-- Listen for chat messages
AddEventHandler("chatMessage", function(source, name, message)
    -- Check if the message is "/id"
    if message:sub(1, 3) == "/id" then
      -- Get the player's ID
      local playerId = GetPlayerServerId(source)
      
      -- Check that the player who sent the message is the same as the player whose ID is being requested
      if message == "/id" then
        -- Show the player's ID in the chat
        TriggerClientEvent("chat:addMessage", source, {
          color = { 255, 255, 255 },
          multiline = true,
          args = { "Your ID is", playerId }
        })
      else
        -- Show an error message if the player who sent the message is not the same as the player whose ID is being requested
        TriggerClientEvent("chat:addMessage", source, {
          color = { 255, 0, 0 },
          multiline = true,
          args = { "You can only use the /id command to see your own ID." }
        })
      end
      
      -- Cancel the chat message so it doesn't appear in the chat box
      CancelEvent()
    end
  end)
  