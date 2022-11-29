-- 基础信息
local base_info = {
	group_id = 133210533
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
	{ config_id = 533001, gadget_id = 70300118, pos = { x = -3958.058, y = 164.472, z = -855.015 }, rot = { x = 0.000, y = 338.344, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 533002, gadget_id = 70710767, pos = { x = -3958.035, y = 163.935, z = -855.066 }, rot = { x = 3.328, y = 338.536, z = 0.547 }, level = 1, area_id = 17 },
	{ config_id = 533003, gadget_id = 70710768, pos = { x = -3958.372, y = 164.511, z = -861.475 }, rot = { x = 2.037, y = 319.427, z = 357.873 }, level = 1, area_id = 17 },
	{ config_id = 533004, gadget_id = 70710769, pos = { x = -3957.017, y = 165.138, z = -857.893 }, rot = { x = 1.875, y = 358.035, z = 359.351 }, level = 1, area_id = 17 },
	{ config_id = 533006, gadget_id = 70300118, pos = { x = -3958.361, y = 164.905, z = -861.466 }, rot = { x = 2.037, y = 319.427, z = 357.873 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 533007, gadget_id = 70710521, pos = { x = -3959.196, y = 164.700, z = -863.442 }, rot = { x = 0.000, y = 114.303, z = 5.826 }, level = 1, area_id = 17 },
	{ config_id = 533008, gadget_id = 70710710, pos = { x = -3957.317, y = 165.670, z = -862.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 533010, gadget_id = 70300118, pos = { x = -3956.806, y = 164.687, z = -857.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 533015, gadget_id = 70710783, pos = { x = -3982.094, y = 170.250, z = -886.963 }, rot = { x = 0.000, y = 292.679, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 533016, gadget_id = 70710793, pos = { x = -3958.058, y = 164.472, z = -855.015 }, rot = { x = 0.000, y = 338.344, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 533017, gadget_id = 70710793, pos = { x = -3958.361, y = 164.905, z = -861.466 }, rot = { x = 2.037, y = 319.427, z = 357.873 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 533018, gadget_id = 70710793, pos = { x = -3956.806, y = 164.687, z = -857.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1533005, name = "QUEST_START_533005", event = EventType.EVENT_QUEST_START, source = "1905505", condition = "", action = "action_EVENT_QUEST_START_533005", trigger_count = 0 },
	{ config_id = 1533009, name = "QUEST_FINISH_533009", event = EventType.EVENT_QUEST_FINISH, source = "1905505", condition = "", action = "action_EVENT_QUEST_FINISH_533009", trigger_count = 0 },
	{ config_id = 1533011, name = "QUEST_FINISH_533011", event = EventType.EVENT_QUEST_FINISH, source = "1905512", condition = "", action = "action_EVENT_QUEST_FINISH_533011", trigger_count = 0 },
	{ config_id = 1533012, name = "QUEST_FINISH_533012", event = EventType.EVENT_QUEST_FINISH, source = "1905513", condition = "", action = "action_EVENT_QUEST_FINISH_533012", trigger_count = 0 },
	{ config_id = 1533013, name = "QUEST_START_533013", event = EventType.EVENT_QUEST_START, source = "1905512", condition = "", action = "action_EVENT_QUEST_START_533013", trigger_count = 0 },
	{ config_id = 1533014, name = "QUEST_START_533014", event = EventType.EVENT_QUEST_START, source = "1905513", condition = "", action = "action_EVENT_QUEST_START_533014", trigger_count = 0 }
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
		gadgets = { 533002, 533003, 533004, 533007, 533008, 533015 },
		regions = { },
		triggers = { "QUEST_START_533005", "QUEST_FINISH_533009", "QUEST_FINISH_533011", "QUEST_FINISH_533012", "QUEST_START_533013", "QUEST_START_533014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_533005(context, evt)
	-- 创建id为533001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 533001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为533016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 533016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_533009(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133210533, EntityType.GADGET, 533001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133210533, EntityType.GADGET, 533016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_533011(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133210533, EntityType.GADGET, 533006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133210533, EntityType.GADGET, 533017 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_533012(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133210533, EntityType.GADGET, 533010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133210533, EntityType.GADGET, 533018 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_533013(context, evt)
	-- 创建id为533006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 533006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为533017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 533017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_533014(context, evt)
	-- 创建id为533010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 533010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为533018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 533018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end