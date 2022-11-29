-- 基础信息
local base_info = {
	group_id = 155005334
}

-- Trigger变量
local defs = {
	group_ID = 155005334,
	gadget_airforce = 334001,
	gadget_windforce = 334003,
	route_01 = 500500104,
	gadget_Switch = 334004,
	reachpoint = 4
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
	{ config_id = 334001, gadget_id = 70690028, pos = { x = 675.444, y = 194.472, z = 479.122 }, rot = { x = 357.186, y = 0.180, z = 352.685 }, level = 36, route_id = 500500104, start_route = false, area_id = 200 },
	{ config_id = 334003, gadget_id = 70690030, pos = { x = 675.444, y = 194.472, z = 479.122 }, rot = { x = 357.186, y = 0.180, z = 352.685 }, level = 36, area_id = 200 },
	{ config_id = 334004, gadget_id = 70360309, pos = { x = 676.477, y = 194.008, z = 482.377 }, rot = { x = 9.753, y = 269.165, z = 13.732 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
	-- 靠近冥鱼开始移动
	{ config_id = 334009, shape = RegionShape.SPHERE, radius = 2.8, pos = { x = 675.444, y = 197.472, z = 479.122 }, area_id = 200 }
}

-- 触发器
triggers = {
	-- 进入白天干掉冥鱼
	{ config_id = 1334002, name = "LEVEL_TAG_CHANGE_334002", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "condition_EVENT_LEVEL_TAG_CHANGE_334002", action = "action_EVENT_LEVEL_TAG_CHANGE_334002", trigger_count = 0 },
	-- 创建机关时set他正确的state
	{ config_id = 1334005, name = "GADGET_CREATE_334005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_334005", action = "action_EVENT_GADGET_CREATE_334005", trigger_count = 0 },
	-- group_load创建机关
	{ config_id = 1334006, name = "GROUP_LOAD_334006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_334006", trigger_count = 0 },
	-- 到达后停止平台
	{ config_id = 1334007, name = "PLATFORM_REACH_POINT_334007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_334007", action = "action_EVENT_PLATFORM_REACH_POINT_334007", trigger_count = 0 },
	-- 机关冥鱼出现
	{ config_id = 1334008, name = "GADGET_STATE_CHANGE_334008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_334008", action = "action_EVENT_GADGET_STATE_CHANGE_334008", trigger_count = 0 },
	-- 靠近冥鱼开始移动
	{ config_id = 1334009, name = "ENTER_REGION_334009", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_334009", action = "action_EVENT_ENTER_REGION_334009", trigger_count = 0 },
	-- 冥鱼结束后reset机关
	{ config_id = 1334010, name = "ANY_GADGET_DIE_334010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_334010", action = "action_EVENT_ANY_GADGET_DIE_334010", trigger_count = 0 },
	-- 冥鱼变成203创生风场
	{ config_id = 1334011, name = "GADGET_STATE_CHANGE_334011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_334011", action = "action_EVENT_GADGET_STATE_CHANGE_334011", trigger_count = 0 }
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
		regions = { 334009 },
		triggers = { "LEVEL_TAG_CHANGE_334002", "GADGET_CREATE_334005", "GROUP_LOAD_334006", "PLATFORM_REACH_POINT_334007", "GADGET_STATE_CHANGE_334008", "ENTER_REGION_334009", "ANY_GADGET_DIE_334010", "GADGET_STATE_CHANGE_334011" },
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
function condition_EVENT_LEVEL_TAG_CHANGE_334002(context, evt)
	-- 返回渊下宫当前是否为白天
	    local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
	    if (current_env_state_id == 2) then
	        return false
	    else
	        return true
	    end 
	
	return true
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_334002(context, evt)
	ScriptLib.PrintContextLog(context,"进入白天")
	
	ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_airforce )
	ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_windforce )
	
	return 0
		
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_334005(context, evt)
	if 334004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_334005(context, evt)
	--lua层调用，将指定gadget转到一个合适的昼夜激活状态
	local is_daynight_gadget = false
	for i = 1 ,#EnvControlGadgets do
	  if (334004 == EnvControlGadgets[i]) then
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
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,334004,202)
	end
	if (current_env_state == "2_4_Night") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,334004,302)
	end
	
	
	--lua层调用，重置gadget状态
	local is_daynight_gadget = false
	for i = 1 ,#EnvControlGadgets do
	  if (334004 == EnvControlGadgets[i]) then
	    is_daynight_gadget = true
	  end
	end
	
	if (not is_daynight_gadget) then 
	    ScriptLib.PrintContextLog(context,"EnvState: 错误的传入了一个不在昼夜列表中的物件！！！")
	    return -1 
	end
	local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
	local current_env_state = ScriptLib.GetLevelTagNameById(context,current_env_state_id)
	local current_state = ScriptLib.GetGadgetStateByConfigId(context,0,334004)
	local current_phase = current_state % 10
	if (current_env_state == "2_4_Day") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,334004,200+current_phase)
	end
	if (current_env_state == "2_4_Night") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,334004,300+current_phase)
	end
	
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_334006(context, evt)
	-- 创建id为334004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 334004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_334007(context, evt)
	
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
	
	-- 返回渊下宫当前是否为黑夜
	local uid_List = ScriptLib.GetSceneUidList(context)
	local host_id = uid_List[1]
	local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
	if (current_env_state_id == 2) then
	    return true
	else
	    return false
	end 
	
	ScriptLib.PrintContextLog(context,"155006188-结束判断reachpoint")
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_334007(context, evt)
	ScriptLib.PrintContextLog(context,"开始stop platform")
	
	ScriptLib.StopPlatform(context, defs.gadget_airforce) 
	ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_airforce }) 
	--ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_airforce)
	ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_windforce)
			
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_334008(context, evt)
	if evt.param2 ~= defs.gadget_Switch then
	    return false
	end
	
	local currentState = ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, defs.gadget_Switch)
	
	ScriptLib.PrintContextLog(context,"开始判断322 ?="..currentState)
	
	if 322 ~= currentState then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_334008(context, evt)
	ScriptLib.PrintContextLog(context,"执行状态转换后action")
	
	ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_airforce )
	ScriptLib.RemoveEntityByConfigId(context, defs.group_ID, EntityType.GADGET, defs.gadget_windforce )
		
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_airforce })
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_airforce, 202)
	
	return 0
		
end

-- 触发条件
function condition_EVENT_ENTER_REGION_334009(context, evt)
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
function action_EVENT_ENTER_REGION_334009(context, evt)
	
		ScriptLib.StartPlatform(context, defs.gadget_airforce) 
	
		ScriptLib.PrintContextLog(context,"启动移动平台--完成")
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_334010(context, evt)
	if 334001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_334010(context, evt)
	--lua层调用，重置gadget状态
	local is_daynight_gadget = false
	for i = 1 ,#EnvControlGadgets do
	  if (334004 == EnvControlGadgets[i]) then
	    is_daynight_gadget = true
	  end
	end
	
	if (not is_daynight_gadget) then 
	    ScriptLib.PrintContextLog(context,"EnvState: 错误的传入了一个不在昼夜列表中的物件！！！")
	    return -1 
	end
	local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
	local current_env_state = ScriptLib.GetLevelTagNameById(context,current_env_state_id)
	local current_state = ScriptLib.GetGadgetStateByConfigId(context,0,334004)
	local current_phase = current_state % 10
	if (current_env_state == "2_4_Day") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,334004,200+current_phase)
	end
	if (current_env_state == "2_4_Night") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,334004,300+current_phase)
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_334011(context, evt)
	if 334001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_334011(context, evt)
	-- 创建id为334003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 334003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_4/EnvState"