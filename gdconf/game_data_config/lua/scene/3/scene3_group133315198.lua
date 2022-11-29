-- 基础信息
local base_info = {
	group_id = 133315198
}

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
	{ config_id = 198001, gadget_id = 70900050, pos = { x = 112.171, y = 151.181, z = 2899.720 }, rot = { x = 0.000, y = 330.800, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 198002, gadget_id = 70900050, pos = { x = 157.142, y = 154.835, z = 2927.125 }, rot = { x = 0.000, y = 329.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 198003, gadget_id = 70900050, pos = { x = 111.659, y = 154.333, z = 2934.893 }, rot = { x = 0.000, y = 42.829, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 198004, gadget_id = 70211101, pos = { x = 112.568, y = 154.293, z = 2929.635 }, rot = { x = 0.000, y = 337.181, z = 349.051 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	{ config_id = 198005, gadget_id = 70900050, pos = { x = 130.812, y = 151.193, z = 2906.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 198006, gadget_id = 70310386, pos = { x = 103.724, y = 156.857, z = 2926.420 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 20 },
	{ config_id = 198011, gadget_id = 70310214, pos = { x = 112.171, y = 151.181, z = 2899.720 }, rot = { x = 0.000, y = 330.800, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1198007, name = "GADGET_STATE_CHANGE_198007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_198007", action = "action_EVENT_GADGET_STATE_CHANGE_198007", trigger_count = 0 },
	-- 破碎合并
	{ config_id = 1198012, name = "GADGET_STATE_CHANGE_198012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_198012", action = "action_EVENT_GADGET_STATE_CHANGE_198012", trigger_count = 0 },
	-- 保底解锁传送点
	{ config_id = 1198013, name = "GROUP_LOAD_198013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_198013", action = "action_EVENT_GROUP_LOAD_198013", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1198008, name = "TIMER_EVENT_198008", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_198008", action = "action_EVENT_TIMER_EVENT_198008", trigger_count = 0 },
		{ config_id = 1198009, name = "VARIABLE_CHANGE_198009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_198009", action = "action_EVENT_VARIABLE_CHANGE_198009", trigger_count = 0 },
		{ config_id = 1198010, name = "ANY_GADGET_DIE_198010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_198010", action = "action_EVENT_ANY_GADGET_DIE_198010" }
	}
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
		gadgets = { 198002, 198003, 198005, 198006, 198011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_198007", "GADGET_STATE_CHANGE_198012", "GROUP_LOAD_198013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_198007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315198, 198001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315198, 198002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315198, 198003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315198, 198005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_198007(context, evt)
	-- 创建id为198004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 198004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 198006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 解锁当前场景中pointid 为%force_id%的 传送点或者地城入口
	if 0 ~= ScriptLib.UnlockScenePoint(context, 665) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_scenePoint_curScene")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_198012(context, evt)
	if GadgetState.GatherDrop ~= ScriptLib.GetGadgetStateByConfigId(context, 133315198, 198011) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_198012(context, evt)
	-- 创建id为198001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 198001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_198013(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315198, 198001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315198, 198002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315198, 198003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315198, 198005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_198013(context, evt)
	-- 解锁当前场景中pointid 为%force_id%的 传送点或者地城入口
	if 0 ~= ScriptLib.UnlockScenePoint(context, 665) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_scenePoint_curScene")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 198006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end