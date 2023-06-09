local colors = require("serika.colors")

local setting = {
	fill = colors.serika0_gui,
	indicator = colors.serika9_gui,
	bg = colors.serika0_gui,
	buffer_bg = colors.serika0_gui,
	buffer_bg_selected = colors.serika4_gui,
    buffer_fg_selected = colors.serika0_gui,
	buffer_bg_visible = colors.serika0_gui,
	bold = true,
	italic = true,
}

local M = {}
M.highlights = function(new_setting)
	if new_setting ~= nil then
		for key, value in pairs(new_setting) do
			setting[key] = value
		end
	end

	local fill = setting.fill
	local indicator = setting.indicator
	local bg = setting.bg
	local buffer_bg = setting.bg
	local buffer_bg_selected = setting.buffer_bg_selected
    local buffer_fg_selected = setting.buffer_fg_selected
	local buffer_bg_visible = setting.buffer_bg_visible
	local bold = setting.bold
	local italic = setting.italic

	return {
		fill = {
			bg = fill,
		},
		background = {
			bg = bg,
		},

		buffer_selected = {
			bg = buffer_bg_selected,
            fg = buffer_fg_selected,
			italic = italic,
		},
		buffer_visible = {
			bg = buffer_bg_visible,
			italic = italic,
		},

		numbers = {
			bg = buffer_bg,
		},
		numbers_selected = {
			bg = buffer_bg_selected,
            fg = buffer_fg_selected,
		},
		numbers_visible = {
			bg = buffer_bg_visible,
			italic = italic,
		},

		diagnostic = {
			bg = buffer_bg,
		},
		diagnostic_selected = {
			bg = buffer_bg_selected,
            fg = buffer_fg_selected,
			bold = bold,
			italic = italic,
		},
		diagnostic_visible = {
			bg = buffer_bg_visible,
		},

		hint = {
			bg = buffer_bg,
		},
		hint_visible = {
			bg = buffer_bg_visible,
		},
		hint_selected = {
			bg = buffer_bg_selected,
            fg = buffer_fg_selected,
			bold = bold,
			italic = italic,
		},
		hint_diagnostic = {
			bg = buffer_bg,
		},
		hint_diagnostic_visible = {
			bg = buffer_bg_visible,
		},
		hint_diagnostic_selected = {
			bg = buffer_bg_selected,
            fg = buffer_fg_selected,
			bold = bold,
			italic = italic,
		},

		info = {
			bg = buffer_bg,
		},
		info_visible = {
			bg = buffer_bg_visible,
		},
		info_selected = {
			bg = buffer_bg_selected,
            fg = buffer_fg_selected,
			bold = bold,
			italic = italic,
		},
		info_diagnostic = {
			bg = buffer_bg,
		},
		info_diagnostic_visible = {
			bg = buffer_bg_visible,
		},
		info_diagnostic_selected = {
			bg = buffer_bg_selected,
            fg = buffer_fg_selected,
			bold = bold,
			italic = italic,
		},

		warning = {
			bg = buffer_bg,
		},
		warning_visible = {
			bg = buffer_bg_visible,
		},
		warning_selected = {
			bg = buffer_bg_selected,
            fg = buffer_fg_selected,
			bold = bold,
			italic = italic,
		},
		warning_diagnostic = {
			bg = buffer_bg,
		},
		warning_diagnostic_visible = {
			bg = buffer_bg_visible,
		},
		warning_diagnostic_selected = {
			bg = buffer_bg_selected,
            fg = buffer_fg_selected,
			bold = bold,
			italic = italic,
		},
		error = {
			bg = buffer_bg,
		},
		error_visible = {
			bg = buffer_bg_visible,
		},
		error_selected = {
			bg = buffer_bg_selected,
            fg = buffer_fg_selected,
			bold = bold,
			italic = italic,
		},
		error_diagnostic = {
			bg = buffer_bg,
		},
		error_diagnostic_visible = {
			bg = buffer_bg_visible,
		},
		error_diagnostic_selected = {
			bg = buffer_bg_selected,
            fg = buffer_fg_selected,
			bold = bold,
			italic = italic,
		},

		close_button = {
			bg = buffer_bg,
		},
		close_button_visible = {
			bg = buffer_bg_visible,
		},
		close_button_selected = {
			bg = buffer_bg_selected,
            fg = buffer_fg_selected,
		},

		duplicate = {
			bg = buffer_bg,
		},
		duplicate_selected = {
			bg = buffer_bg_selected,
            fg = buffer_fg_selected,
		},
		duplicate_visible = {
			bg = buffer_bg_visible,
		},

		separator = {
			fg = fill,
			bg = buffer_bg,
		},
		separator_selected = {
			fg = fill,
			bg = buffer_bg_selected,
		},
		separator_visible = {
			fg = fill,
			bg = buffer_bg_visible,
		},
		modified = {
			bg = buffer_bg,
		},
		modified_selected = {
            fg = buffer_fg_selected,
			bg = buffer_bg_selected,
		},
		modified_visible = {
			bg = buffer_bg_visible,
		},
		indicator_selected = {
			fg = indicator,
			bg = buffer_bg_selected,
		},
		pick = {
			bg = buffer_bg,
			bold = bold,
			italic = italic,
		},
		pick_selected = {
            fg = buffer_fg_selected,
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},
		pick_visible = {
			bg = buffer_bg_visible,
			bold = bold,
			italic = italic,
		},
	}
end

return M
