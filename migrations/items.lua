local Items = {items = {}}

local function has_valid_prefix(name, prefix) return name:sub(1, string.len(prefix)) == prefix end

for scienceName in pairs(data and data.raw.tool or {}) do
	if has_valid_prefix(scienceName, "sem:spg") then
		log(scienceName)
		Items.items[scienceName] = { type = "tool" }
	end
end

return Items
