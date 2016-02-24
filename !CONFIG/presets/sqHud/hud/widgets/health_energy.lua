function health_energy(x, y)
	local health_pct = player.health() / player.healthMax()
	local hp_color = lerpColor(health_color_low, health_color_full, health_pct)
	local speed = in_vehicle and vehicle.speed() or player.speed()

	drawRect(x - 2, y - 2, x + 258, y + 58, bg_color1)

	-- Health
	drawBox(x, y, x + 191, y + 26, hp_color)
	drawProgressBar(x + 3, y + 3, x + 188, y + 23, hp_color, 1, health_pct)
	drawUTText(player.health(), hp_color, x + 198, y + 13, 0, 1, 1)

	y = y + 30
	-- Energy
	drawBox(x, y, x + 191, y + 26, energy_color)
	drawProgressBar(x + 3, y + 3, x + 188, y + 23, energy_color, 1, player.energyPct())
	drawUTText(speed, energy_color, x + 198, y + 13, 0, 1, 1)
end
