-- Once all mods are loaded...
minetest.register_on_mods_loaded(function()
	-- ...checked every registered node...
	for node, val in pairs(minetest.registered_nodes) do
		-- ...to see if it's a leaf-decaying node...
		if minetest.get_item_group(node, 'leafdecay') ~= 0 then
			-- ...that doesn't already drop...
			if minetest.get_item_group(node, 'leafdecay_drop') == 0 then
				-- .. and if it is, set it to drop when it decays.
				val.groups['leafdecay_drop'] = 1
			end
		end
	end
end)
