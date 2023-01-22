local Items = {items = {}}

for scienceName in pairs(data.raw.tool) do
	if scienceName:sub(1, 6) == "sem:spg" then
		Items.items[scienceName] = { type = "tool" }
	end
end

return Items
