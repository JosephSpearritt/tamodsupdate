function spectators(x, y)
	if viewPort.isScoreboardOpen() then
		local spectator_list = game.spectators()

		-- Draw the list only if we actually have spectators
		if spectator_list == "" then
			drawText("No Spectators", text_color1, x, y, 1, 1)
		else
			drawText("Specs " .. spectator_list, text_color1, x, y, 1, 1)
		end
	end
end
