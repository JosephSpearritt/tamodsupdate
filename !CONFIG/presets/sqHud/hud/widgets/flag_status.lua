function flag_status(x, y)
	local left_text = ""
	local right_text = ""

	if not flag.isHome(left_team) then
		if flag.holderName(left_team) ~= "" then
			right_text = flag.holderName(left_team)
		else
			left_text = flag.returnTime(left_team)
		end
	end
	if not flag.isHome(right_team) then
		if flag.holderName(right_team) ~= "" then
			if left_text ~= "" then
				left_text = left_text .. " " .. flag.holderName(right_team)
			else
				left_text = flag.holderName(right_team)
			end
		else
			if right_text ~= "" then
				right_text = flag.returnTime(right_team) .. " " .. right_text
			else
				right_text = flag.returnTime(right_team)
			end
		end
	end

	if left_text ~= "" then
		size = getSmallTextSize(left_text, 1)
		drawRect(x, y, x + size.x + 10, y + 20, bg_color2)
		drawSmallText(left_text, team_colors_text[left_color], x + 5, y + 11, 0, 1, 1) 
	end

	if right_text ~= "" then
		size = getSmallTextSize(right_text, 1)
		drawRect(x, y + 20, x + size.x + 10, y + 40, bg_color2)
		drawSmallText(right_text, team_colors_text[right_color], x + 5, y + 31, 0, 1, 1) 
	end
end
