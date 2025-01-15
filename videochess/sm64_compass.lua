local RDRAM = {
    ['mario_angle'] = 0x33B19E
}

local function lerp(a, b, t)
	return a + (b - a) * t
end

local function drawCompass()
    -- image file pointers
    local compass_png_path = "data/sm64_compass.png"
    local mid_top_png_path = "data/sm64_compass_top.png"
    local mid_bottom_png_path = "data/sm64_compass_bottom.png"
    local bracket_l_png_path = "data/sm64_compass_bracket_l.png"
    local bracket_r_png_path = "data/sm64_compass_bracket_r.png"
    -- misc vars
    local compass_png_width = 256
    local compass_png_height = 19
    local anchor_y = client.bufferheight() - 39
    local mid_point = client.bufferwidth() / 2

    local angle = mainmemory.read_s16_be(RDRAM.mario_angle)
    local angle_max = 32767
    local progress = angle / angle_max / 2
    local mod_pos_x = lerp(0, compass_png_width, progress)

    -- debug stuff
    --local label_string = "whatecer"
    --gui.drawText(12, 32, label_string, 0x9600086a)

    -- draw the little midpoint markers above and below the compass
    gui.drawImage(mid_top_png_path, mid_point - 8 , anchor_y - 11)
    gui.drawImage(mid_bottom_png_path, mid_point - 8 , anchor_y + 12)
    -- draw the compass
    gui.drawImageRegion(compass_png_path, (((compass_png_width * 3) / 2)) - mod_pos_x - 16, 0, 128 + 16, 19, mid_point - 72, anchor_y)
    -- draw the brackets on either end of the compass
    gui.drawImage(bracket_l_png_path, mid_point - 78 , anchor_y - 1)
    gui.drawImage(bracket_r_png_path, mid_point + 68 , anchor_y - 1)
end

while true do
    drawCompass();

    emu.frameadvance();
end