function LF_Initialize_Group(triggers, suites)
	local id=8100001
	for i=1,#gadgets do
		if gadgets[i].gadget_id == 70900380 then
			local configId=gadgets[i].config_id
			local insertRegion={ config_id = id, shape = RegionShape.SPHERE, radius = 14.5, pos=gadgets[i].pos, area_id = gadgets[i].area_id,ability_group_list = { "Fly_Electric_Core_Play" } }
			table.insert(regions,insertRegion)
			for j=1,#suites do
				for k=1,#suites[j].gadgets do
					if suites[j].gadgets[k]==configId then
						table.insert(suites[j].regions,id)
					end
				end
			end
			id=id+1
		end
	end
--初始化
end

function Electric_Core_Explain(context)
	ScriptLib.MarkPlayerAction(context, 7002, 3, 1)
	return 0
end

LF_Initialize_Group(triggers, suites)