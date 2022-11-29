-- 基础信息
local base_info = {
	group_id = 133221091
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
	{ config_id = 91001, gadget_id = 70710782, pos = { x = -3131.310, y = 254.061, z = -4506.940 }, rot = { x = 0.000, y = 185.153, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 91002, gadget_id = 70710758, pos = { x = -3129.688, y = 254.061, z = -4509.850 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 11 },
	{ config_id = 91003, gadget_id = 70710759, pos = { x = -3131.301, y = 254.061, z = -4507.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 11 },
	{ config_id = 91004, gadget_id = 70710760, pos = { x = -3131.301, y = 254.061, z = -4507.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 11 },
	{ config_id = 91005, gadget_id = 70710782, pos = { x = -3129.171, y = 254.061, z = -4509.875 }, rot = { x = 0.000, y = 273.169, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 91009, gadget_id = 71700379, pos = { x = -3131.537, y = 255.107, z = -4507.066 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 11 },
	{ config_id = 91013, gadget_id = 71700379, pos = { x = -3131.232, y = 254.742, z = -4507.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 11 },
	{ config_id = 91014, gadget_id = 71700379, pos = { x = -3129.438, y = 255.141, z = -4509.612 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1091006, name = "QUEST_START_91006", event = EventType.EVENT_QUEST_START, source = "1905603", condition = "", action = "action_EVENT_QUEST_START_91006", trigger_count = 0 },
	{ config_id = 1091007, name = "QUEST_START_91007", event = EventType.EVENT_QUEST_START, source = "1905604", condition = "", action = "action_EVENT_QUEST_START_91007", trigger_count = 0 },
	{ config_id = 1091008, name = "QUEST_START_91008", event = EventType.EVENT_QUEST_START, source = "1905605", condition = "", action = "action_EVENT_QUEST_START_91008", trigger_count = 0 },
	{ config_id = 1091010, name = "QUEST_FINISH_91010", event = EventType.EVENT_QUEST_FINISH, source = "1905603", condition = "", action = "action_EVENT_QUEST_FINISH_91010", trigger_count = 0 },
	{ config_id = 1091011, name = "QUEST_FINISH_91011", event = EventType.EVENT_QUEST_FINISH, source = "1905604", condition = "", action = "action_EVENT_QUEST_FINISH_91011", trigger_count = 0 },
	{ config_id = 1091012, name = "QUEST_FINISH_91012", event = EventType.EVENT_QUEST_FINISH, source = "1905605", condition = "", action = "action_EVENT_QUEST_FINISH_91012", trigger_count = 0 }
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
		gadgets = { 91001, 91005 },
		regions = { },
		triggers = { "QUEST_START_91006", "QUEST_START_91007", "QUEST_START_91008", "QUEST_FINISH_91010", "QUEST_FINISH_91011", "QUEST_FINISH_91012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_91006(context, evt)
	-- 创建id为91002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 91002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为91014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 91014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_91007(context, evt)
	-- 创建id为91003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 91003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为91009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 91009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_91008(context, evt)
	-- 创建id为91004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 91004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为91013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 91013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_91010(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133221091, EntityType.GADGET, 91002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133221091, EntityType.GADGET, 91014 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_91011(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133221091, EntityType.GADGET, 91003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133221091, EntityType.GADGET, 91013 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_91012(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133221091, EntityType.GADGET, 91004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133221091, EntityType.GADGET, 91009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end