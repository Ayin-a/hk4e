--[[
local defs={
    Portal_Eff = 999,
    Portal_Trigger = 999,
    Streaming_Gadget = 999,
    Region = 999,
    air_wall = 999,
    air_wall = 999,
}
]]
local t3_last_group = {
    [246203001] = 246203004,
    [246203002] = 246203001,
    [246203003] = 246203002,
    [246203004] = 246203003,
}
local t3_next_group = {
    [246203001] = 246203002,
    [246203002] = 246203003,
    [246203003] = 246203004,
    [246203004] = 246203001,
}
local t3_time_order = {
    {1,2,3,4}
}
local temp_Variables_Rogue_Terrain_3 = {
	{  config_id=50000001,name = "Is_Inited", value = 0, no_refresh = false },
	{  config_id=50000002,name = "Unload", value = 0, no_refresh = false },
	{  config_id=50000003,name = "Can_Be_Inited", value = 1, no_refresh = false },
}
local temp_Tirgger_Rogue_Terrain_3 = {
--[[ 
    {event = EventType.EVENT_CHALLENGE_SUCCESS,source = "",condition="",action="action_t3_EVENT_CHALLENGE_SUCCESS",trigger_count=0},
    {event = EventType.EVENT_ROGUE_START_FIGHT,source = "",condition="",action="action_t3_EVENT_ROGUE_START_FIGHT",trigger_count=0},
	{event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_t3_EVENT_CHALLENGE_FAIL",trigger_count = 0},
	{event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_t3_EVENT_GROUP_LOAD",trigger_count = 0},
     ]]
	{event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_t3_EVENT_ENTER_REGION", trigger_count = 0 },
	{event = EventType.EVENT_ROGUE_OPEN_ACCESS,source = "",condition="",action="action_t3_EVENT_ROGUE_OPEN_ACCESS",trigger_count=0},
	{event = EventType.EVENT_PLATFORM_REACH_POINT,source = "",condition="",action="action_t3_EVENT_PLATFORM_REACH_POINT",trigger_count=0},
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "Unload", condition = "", action = "action_t3_EVENT_VARIABLE_CHANGE_Unload", trigger_count = 0 },

}
--确认走到下个房间后，卸载本间表现物件
function action_t3_EVENT_VARIABLE_CHANGE_Unload(context,evt)
    ScriptLib.PrintContextLog(context,"## Rogue_Terraion_3 action_t3_EVENT_VARIABLE_CHANGE_Unload")
    --触发器卸载，streaming物件卸载
    ScriptLib.KillEntityByConfigId(context, {config_id=defs.Streaming_Gadget, entity_type = EntityType.GADGET})
    ScriptLib.KillEntityByConfigId(context, {config_id=defs.Portal_Trigger, entity_type = EntityType.GADGET})
    --罗盘和指针卸载
    ScriptLib.KillEntityByConfigId(context, {config_id=defs.clock, entity_type = EntityType.GADGET})
    ScriptLib.KillEntityByConfigId(context, {config_id=defs.pointer, entity_type = EntityType.GADGET})
    --传送门贴图恢复原状，回到禁止触发状态
    ScriptLib.SetGadgetStateByConfigId(context,defs.Portal_Eff,100+defs.pointarray)
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.Portal_Eff, "SGV_Disable", 1)
    return 0
end
--指针转动完成
function action_t3_EVENT_PLATFORM_REACH_POINT(context,evt)
    ScriptLib.PrintContextLog(context,"## Rogue_Terraion_3 action_t3_EVENT_PLATFORM_REACH_POINT:p1="..evt.param1)
    --罗盘刻度
    local _t = defs.pointarray +1
    if _t == 5 then _t = 1 end
    ScriptLib.SetEntityServerGlobalValueByConfigId(context,defs.clock,"SGV_Time",_t)
    --传送门贴图
    ScriptLib.SetGadgetStateByConfigId(context,defs.Portal_Eff,100+_t)
    --传送门可触发
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.Portal_Eff, "SGV_Disable", 0)
    --关空气墙
    ScriptLib.KillEntityByConfigId(context, {config_id=defs.air_wall, entity_type = EntityType.GADGET})
    return 0
end
--玩家进入房间
function action_t3_EVENT_ENTER_REGION(context,evt)
    if evt.param1 ~= defs.Region then return 0 end
    ScriptLib.PrintContextLog(context,"## Rogue_Terraion_3 action_t3_EVENT_ENTER_REGION:")
    if ScriptLib.GetGroupVariableValue(context,"Is_Inited") ~= 1 and ScriptLib.GetGroupVariableValue(context,"Can_Be_Inited") == 1 then
        ScriptLib.PrintContextLog(context,"## Rogue_Terraion_3 action_t3_EVENT_ENTER_REGION:Is_Inited=1")
        if ScriptLib.CreateGadget(context,{config_id = defs.clock}) ~= 0  then ScriptLib.PrintContextLog(context,"## Rogue_Terraion_3 action_t3_EVENT_ENTER_REGION:defs.clock=create fail") end
        if ScriptLib.CreateGadget(context,{config_id = defs.pointer}) ~= 0  then ScriptLib.PrintContextLog(context,"## Rogue_Terraion_3 action_t3_EVENT_ENTER_REGION:defs.pointer=create fail") end
        if ScriptLib.CreateGadget(context,{config_id = defs.air_wall}) ~= 0  then ScriptLib.PrintContextLog(context,"## Rogue_Terraion_3 action_t3_EVENT_ENTER_REGION:defs.air_wall=create fail") end
        --传送门贴图恢复原状，回到禁止触发状态
        ScriptLib.SetGadgetStateByConfigId(context,defs.Portal_Eff,100+defs.pointarray)
        ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.Portal_Eff, "SGV_Disable", 1)
        ScriptLib.SetGroupVariableValue(context,"Is_Inited",1)
        for k , v in pairs(t3_last_group) do
            ScriptLib.SetGroupVariableValueByGroup(context,"Can_Be_Inited",0,k) --任意房间被初始化，所有房间的值要设成0（防止还有各种奇怪方式触发到别的房间的region），同一时间只能有一个房间初始化，直到玩家打通房间
            if k == base_info.group_id then 
                ScriptLib.SetGroupVariableValueByGroup(context,"Unload",0,v)
                ScriptLib.SetGroupVariableValueByGroup(context,"Is_Inited",0,v)
            end
        end
    end
    return 0
end
--打开前往下一间的通路：
function action_t3_EVENT_ROGUE_OPEN_ACCESS(context,evt)
    ScriptLib.PrintContextLog(context,"## Rogue_Terraion_3 action_t3_EVENT_ROGUE_OPEN_ACCESS:")
    if evt.param1 == 1 then return 0 end --通关后不需要开通路
    --创建streaming物件，预加载目标位置场景
    ScriptLib.CreateGadget(context,{config_id = defs.Streaming_Gadget})
    local _t = defs.pointarray +1
    if _t == 5 then _t = 1 end
    --开始拨动指针
    ScriptLib.SetPlatformPointArray(context, defs.pointer, defs.pointarray, {defs.pointarray,_t}, {route_type = 0, turn_mode = false})
    --如果是第一间，那么注目天空轮盘
    local _vec = ScriptLib.GetRogueDiaryRoundAndRoom(context)
    if #_vec == 2 then 
        local _stage = _vec[1]
        local _cell = _vec[2]
        ScriptLib.PrintContextLog(context,"## Rogue_Terraion_3 action_t3_EVENT_ROGUE_OPEN_ACCESS:_stage=".._stage .."|_cell=".._cell)
        if _stage == 1 and _cell == 2 then  --此时cell已经变成2 因为打完了第一间
            for k,v in pairs(gadgets) do
                if v.config_id == defs.clock then 
                    ScriptLib.BeginCameraSceneLook(context, { look_pos = v.pos, duration = 2, is_force = false, is_broadcast = false, is_recover_keep_current = true, delay = 1, is_set_follow_pos =false, follow_pos = {x=0,y=0,z=0}, is_force_walk =true, is_change_play_mode = true, screen_x = 0, screen_y = 0, is_set_screenXY = false, other_params ={}, keep_rot_type = KeepRotType.KEEP_ROT_XY, custom_radius = 0})
                end
            end
        end
    else
        ScriptLib.PrintContextLog(context,"## Rogue_Cell action_EVENT_ENTER_REGION[Warning]:#_vec="..#_vec)
    end
    --通知下一个房间，可以被Inited
    for k , v in pairs(t3_next_group) do
        if k == base_info.group_id then 
            ScriptLib.SetGroupVariableValueByGroup(context,"Can_Be_Inited",1,v)
        end
    end
    return 0
end

--[[ 
function action_t3_EVENT_CHALLENGE_SUCCESS(context,evt)
    ScriptLib.PrintContextLog(context,"## Rogue_Terraion_3 action_t3_EVENT_CHALLENGE_SUCCESS:")
    return 0
end
function action_t3_EVENT_ROGUE_START_FIGHT(context,evt)
    ScriptLib.PrintContextLog(context,"## Rogue_Terraion_3 action_t3_EVENT_ROGUE_START_FIGHT:")
    return 0
end
function action_t3_EVENT_CHALLENGE_FAIL(context,evt)
    return 0
end
function action_t3_EVENT_GROUP_LOAD(context,evt)
    return 0
end
 ]]
function SLC_Active_Portal(context)
    ScriptLib.CreateGadget(context, { config_id = defs.Portal_Trigger })
    return 0
end
--初始化
function Initialize_3()
	--加触发器
    if temp_Tirgger_Rogue_Terrain_3 ~= nil then 
        for k,v in pairs(temp_Tirgger_Rogue_Terrain_3) do
            v.name = "temp_Tirgger3_"..k
            v.config_id = 40300000 + k
            table.insert(triggers, v)
            table.insert(suites[init_config.suite].triggers, v.name)
        end
    end
	--加变量
    if temp_Variables_Rogue_Terrain_3 ~= nil then 
        for k,v in pairs(temp_Variables_Rogue_Terrain_3) do
            table.insert(variables,v)
        end
    end
    --给传送门增加sgv
    for k,v in pairs(gadgets) do
        if v.gadget_id == 70800140 then
            v.server_global_value_config = { ["SGV_Disable"] = 1}
        end 
    end
    --给钟增加sgv
    for k,v in pairs(gadgets) do
        if v.gadget_id == 70800163 then
            v.server_global_value_config = { ["SGV_Time"] = defs.pointarray}
        end 
    end
	return 0
end
Initialize_3()