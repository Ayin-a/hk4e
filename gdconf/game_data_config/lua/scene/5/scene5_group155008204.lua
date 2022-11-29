-- 基础信息
local base_info = {
	group_id = 155008204
}

-- Trigger变量
local defs = {
	group_ID = 155008204,
	gadget_airforce = 204001,
	gadget_windforce = 204003,
	route_01 = 500800041,
	gadget_Switch = 204004,
	reachpoint = 2
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {defs.gadget_Switch}
local Worktops = {}
local DayAppearGadgets = {}
local NightAppearGadgets = {}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 204001, gadget_id = 70690028, pos = { x = -155.464, y = 166.325, z = 136.234 }, rot = { x = 357.186, y = 0.180, z = 352.685 }, level = 36, route_id = 500800041, start_route = false, area_id = 200 },
	{ config_id = 204003, gadget_id = 70690030, pos = { x = -155.464, y = 166.325, z = 136.234 }, rot = { x = 357.186, y = 0.180, z = 352.685 }, level = 36, area_id = 200 },
	{ config_id = 204004, gadget_id = 70360305, pos = { x = -164.149, y = 169.557, z = 132.467 }, rot = { x = 11.962, y = 145.254, z = 5.394 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
	-- 靠近冥鱼开始移动
	{ config_id = 204009, shape = RegionShape.SPHERE, radius = 2.8, pos = { x = -155.464, y = 169.325, z = 136.234 }, area_id = 200 }
}

-- 触发器
triggers = {
	-- 进入黑夜干掉冥鱼
	{ config_id = 1204002, name = "LEVEL_TAG_CHANGE_204002", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "condition_EVENT_LEVEL_TAG_CHANGE_204002", action = "action_EVENT_LEVEL_TAG_CHANGE_204002", trigger_count = 0 },
	-- 创建机关时set他正确的state
	{ config_id = 1204005, name = "GADGET_CREATE_204005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_204005", action = "action_EVENT_GADGET_CREATE_204005", trigger_count = 0 },
	-- group_load创建机关
	{ config_id = 1204006, name = "GROUP_LOAD_204006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_204006", trigger_count = 0 },
	-- 到达后停止平台
	{ config_id = 1204007, name = "PLATFORM_REACH_POINT_204007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_204007", action = "action_EVENT_PLATFORM_REACH_POINT_204007", trigger_count = 0 },
	-- 机关冥鱼出现
	{ config_id = 1204008, name = "GADGET_STATE_CHANGE_204008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_204008", action = "action_EVENT_GADGET_STATE_CHANGE_204008", trigger_count = 0 },
	-- 靠近冥鱼开始移动
	{ config_id = 1204009, name = "ENTER_REGION_204009", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_204009", action = "action_EVENT_ENTER_REGION_204009", trigger_count = 0 },
	-- 冥鱼结束后reset机关
	{ config_id = 1204010, name = "ANY_GADGET_DIE_204010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_204010", action = "action_EVENT_ANY_GADGET_DIE_204010", trigger_count = 0 },
	-- 冥鱼203创生风场
	{ config_id = 1204011, name = "GADGET_STATE_CHANGE_204011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_204011", action = "action_EVENT_GADGET_STATE_CHANGE_204011", trigger_count = 0 }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 204009 },
		triggers = { "LEVEL_TAG_CHANGE_204002", "GADGET_CREATE_204005", "GROUP_LOAD_204006", "PLATFORM_REACH_POINT_204007", "GADGET_STATE_CHANGE_204008", "ENTER_REGION_204009", "ANY_GADGET_DIE_204010", "GADGET_STATE_CHANGE_204011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_LEVEL_TAG_CHANGE_204002(context, evt)
	-- 返回渊下宫当前是否为黑夜
	    local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
	    if (current_env_state_id == 2) then
	        return true
	    else
	        return false
	    end 
	
	return true
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_204002(context, evt)
	ScriptLib.PrintContextLog(context,"进入黑夜")
	
	ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_airforce )
	ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_windforce )
	
	
	return 0
		
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_204005(context, evt)
	if 204004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_204005(context, evt)
	--lua层调用，将指定gadget转到一个合适的昼夜激活状态
	local is_daynight_gadget = false
	for i = 1 ,#EnvControlGadgets do
	  if (204004 == EnvControlGadgets[i]) then
	    is_daynight_gadget = true
	  end
	end
	
	if (not is_daynight_gadget) then 
	    ScriptLib.PrintContextLog(context,"EnvState: 错误的传入了一个不在昼夜列表中的物件！！！")
	    return -1 
	end
	local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
	local current_env_state = ScriptLib.GetLevelTagNameById(context,current_env_state_id)
	if (current_env_state == "2_4_Day") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,204004,202)
	end
	if (current_env_state == "2_4_Night") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,204004,302)
	end
	
	
	--lua层调用，重置gadget状态
	local is_daynight_gadget = false
	for i = 1 ,#EnvControlGadgets do
	  if (204004 == EnvControlGadgets[i]) then
	    is_daynight_gadget = true
	  end
	end
	
	if (not is_daynight_gadget) then 
	    ScriptLib.PrintContextLog(context,"EnvState: 错误的传入了一个不在昼夜列表中的物件！！！")
	    return -1 
	end
	local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
	local current_env_state = ScriptLib.GetLevelTagNameById(context,current_env_state_id)
	local current_state = ScriptLib.GetGadgetStateByConfigId(context,0,204004)
	local current_phase = current_state % 10
	if (current_env_state == "2_4_Day") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,204004,200+current_phase)
	end
	if (current_env_state == "2_4_Night") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,204004,300+current_phase)
	end
	
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_204006(context, evt)
	-- 创建id为204004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 204004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_204007(context, evt)
	
	ScriptLib.PrintContextLog(context,"开始reachpoint")
	
	
	-- 判断是gadgetid 为 25003的移动平台，是否到达了500600028 的路线中的 2 点
	
	if defs.gadget_airforce ~= evt.param1 then
	    return false
	end
	
	if defs.route_01 ~= evt.param2 then
	    return false
	end
	
	if defs.reachpoint ~= evt.param3 then
	    return false
	end
	
	-- 返回渊下宫当前是否为白天
	local uid_List = ScriptLib.GetSceneUidList(context)
	local host_id = uid_List[1]
	local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
	if (current_env_state_id == 2) then
	    return false
	else
	    return true
	end 
	
	ScriptLib.PrintContextLog(context,"155006188-结束判断reachpoint")
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_204007(context, evt)
	ScriptLib.PrintContextLog(context,"开始stop platform")
	
	ScriptLib.StopPlatform(context, defs.gadget_airforce) 
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_airforce }) 
	--ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_airforce)
	ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_windforce)
			
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_204008(context, evt)
	if evt.param2 ~= defs.gadget_Switch then
	    return false
	end
	
	local currentState = ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, defs.gadget_Switch)
	
	ScriptLib.PrintContextLog(context,"开始判断222 ?="..currentState)
	
	if 222 ~= currentState then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_204008(context, evt)
	ScriptLib.PrintContextLog(context,"执行状态转换后action")
	
	ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_airforce )
	ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_windforce )
		
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_airforce })
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_airforce, 202)
	
	return 0
		
end

-- 触发条件
function condition_EVENT_ENTER_REGION_204009(context, evt)
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
	    return false
	end
	
	if 203 ~= ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, defs.gadget_airforce) then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_204009(context, evt)
		ScriptLib.StartPlatform(context, defs.gadget_airforce) 
	
		ScriptLib.PrintContextLog(context,"启动移动平台--完成")
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_204010(context, evt)
	if 204001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_204010(context, evt)
	--lua层调用，重置gadget状态
	local is_daynight_gadget = false
	for i = 1 ,#EnvControlGadgets do
	  if (204004 == EnvControlGadgets[i]) then
	    is_daynight_gadget = true
	  end
	end
	
	if (not is_daynight_gadget) then 
	    ScriptLib.PrintContextLog(context,"EnvState: 错误的传入了一个不在昼夜列表中的物件！！！")
	    return -1 
	end
	local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
	local current_env_state = ScriptLib.GetLevelTagNameById(context,current_env_state_id)
	local current_state = ScriptLib.GetGadgetStateByConfigId(context,0,204004)
	local current_phase = current_state % 10
	if (current_env_state == "2_4_Day") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,204004,200+current_phase)
	end
	if (current_env_state == "2_4_Night") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,204004,300+current_phase)
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_204011(context, evt)
	if 204001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_204011(context, evt)
	-- 创建id为204003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 204003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_4/EnvState"