--[[======================================
||	filename:	CloudNet
||	owner: 		luyao.huang
||	description:	2.8云网物件用
||	LogName:	CloudNet
||	Protection:	
=======================================]]--

local Tri = {
    [1] = { name = "any_gadget_die_cloud_net", config_id = 8000001, event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_any_gadget_die_cloud_net", trigger_count = 0},
   
}

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

end

------------------------------------------------------------------
function action_any_gadget_die_cloud_net(context,evt)


    for i = 1, #CloudNets do
        if (evt.param1 == CloudNets[i].pillar_1 or evt.param1 == CloudNets[i].pillar_2) then
            ScriptLib.PrintContextLog(context,"## [CloudNet]action_any_gadget_die_cloud_net: 柱子死亡"..evt.param1)
            ScriptLib.KillEntityByConfigId(context,{group_id = base_info.group_id, config_id = CloudNets[i].pillar_1, EntityType.GADGET})
            ScriptLib.KillEntityByConfigId(context,{group_id = base_info.group_id, config_id = CloudNets[i].pillar_2, EntityType.GADGET})
            ScriptLib.KillEntityByConfigId(context,{group_id = base_info.group_id, config_id = CloudNets[i].net_1, EntityType.GADGET})
        end
    end
    return 0
end


------------------------------------------------------------------
Initialize()