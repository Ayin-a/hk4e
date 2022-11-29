--[[======================================
||	filename:       Rogue_Terraion_1
||	owner:          juntao.chen
||	description:    肉鸽地城1的re(和谐)quire，用于地城1特有的地形控制（开门、刷空气墙等）
||	LogName:        Rogue_Terraion_1
||	Protection:     [Protection]
=======================================]]
--[[
    需求defs:

    defs.airwall = 9999 --空气墙的configid
    defs.bridge = 9999 --通往下个房间的光桥

]]
local next_group_info = {
    [246201001] = {246201002,2009,2015},
    [246201002] = {246201003,3009,3015},
    [246201003] = {246201004,4007,4015},
    [246201004] = {246201001,1009,1015},
}
local last_group_info = {
    [246201001] = {246201004,4007,4015},
    [246201002] = {246201001,1009,1015},
    [246201003] = {246201002,2009,2015},
    [246201004] = {246201003,3009,3015},
}

local temp_Variables_Rogue_Terrain_1 = {

}
local temp_Tirgger_Rogue_Terrain_1 = {
    --{event = EventType.EVENT_CHALLENGE_SUCCESS,source = "",condition="",action="action_t1_EVENT_CHALLENGE_SUCCESS",trigger_count=0},
    {event = EventType.EVENT_ROGUE_START_FIGHT,source = "",condition="",action="action_t1_EVENT_ROGUE_START_FIGHT",trigger_count=0},
    {event = EventType.EVENT_ROGUE_OPEN_ACCESS,source = "",condition="",action="action_t1_EVENT_ROGUE_OPEN_ACCESS",trigger_count=0},
	--{event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_t1_EVENT_CHALLENGE_FAIL",trigger_count = 0},
    --{event = EventType.EVENT_ROGUE_CREAGE_REPAIR_GADGET,source = "",condition="",action="action_t1_EVENT_ROGUE_CREAGE_REPAIR_GADGET",trigger_count=0},
    --{event = EventType.EVENT_ROGUE_CREAGE_FIGHT_GADGET,source = "",condition="",action="action_t1_EVENT_ROGUE_CREAGE_FIGHT_GADGET",trigger_count=0},

}
function action_t1_EVENT_ROGUE_OPEN_ACCESS(context,evt)
    ScriptLib.PrintContextLog(context,"## Rogue_Terraion_1 action_t1_EVENT_ROGUE_OPEN_ACCESS:")
    if evt.param1 == 1 then return 0 end --通关后不需要开通路
    LF_Open_Door(context)
    return 0
end
function action_t1_EVENT_ROGUE_START_FIGHT(context,evt)
    ScriptLib.PrintContextLog(context,"## Rogue_Terraion_1 action_t1_EVENT_ROGUE_START_FIGHT:")
    ScriptLib.PrintContextLog(context,"## Rogue_Terraion_1 action_t1_EVENT_ROGUE_START_FIGHT:创建空气墙")
    LF_Close_Door(context)
    return 0
end
function LF_Close_Door(context)
    for k,v in pairs(last_group_info) do
        if k == base_info.group_id then
            ScriptLib.SetGroupGadgetStateByConfigId(context, v[1], v[3], 0)
            ScriptLib.SetGroupGadgetStateByConfigId(context, v[1], v[2], 0)
            ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.air_wall, 0)
        end
    end
    return 0
end
function LF_Open_Door(context)
    for k,v in pairs(next_group_info) do
        if k == base_info.group_id then
            ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.bridge, 201)
            ScriptLib.SetGroupGadgetStateByConfigId(context, v[1], v[2], 201)
            ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.air_wall, 202)
        end
    end
    return 0
end
--初始化
function Initialize_1()
	--加触发器
    if temp_Tirgger_Rogue_Terrain_1 ~= nil then 
        for k,v in pairs(temp_Tirgger_Rogue_Terrain_1) do
            v.name = "temp_Tirgger_1_"..k
            v.config_id = 40100000 + k
            table.insert(triggers, v)
            table.insert(suites[init_config.suite].triggers, v.name)
        end
    end
	--加变量
    if temp_Variables_Rogue_Terrain_1 ~= nil then 
        for k,v in pairs(temp_Variables_Rogue_Terrain_1) do
            table.insert(variables,v)
        end
    end

	return 0
end
Initialize_1()