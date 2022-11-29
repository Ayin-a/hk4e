-- 基础信息
local base_info = {
	group_id = 133304116
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
	{ config_id = 116001, gadget_id = 70220062, pos = { x = -1772.039, y = 246.713, z = 2756.838 }, rot = { x = 19.367, y = 276.534, z = 345.327 }, level = 1, area_id = 21 },
	{ config_id = 116002, gadget_id = 70220063, pos = { x = -1772.544, y = 246.658, z = 2756.142 }, rot = { x = 65.845, y = 12.775, z = 22.562 }, level = 1, area_id = 21 },
	{ config_id = 116003, gadget_id = 70220064, pos = { x = -1772.048, y = 246.580, z = 2756.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 116004, gadget_id = 70220062, pos = { x = -1769.903, y = 247.361, z = 2759.833 }, rot = { x = 0.000, y = 287.304, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 116005, gadget_id = 70220063, pos = { x = -1769.268, y = 247.247, z = 2759.572 }, rot = { x = 0.000, y = 287.304, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 116006, gadget_id = 70220064, pos = { x = -1766.915, y = 246.069, z = 2757.258 }, rot = { x = 0.000, y = 287.304, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 116007, gadget_id = 70210102, pos = { x = -1771.988, y = 246.773, z = 2756.744 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 21 },
	{ config_id = 116009, gadget_id = 70210102, pos = { x = -1766.915, y = 246.069, z = 2757.258 }, rot = { x = 0.000, y = 287.304, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 21 },
	{ config_id = 116010, gadget_id = 70210102, pos = { x = -1769.903, y = 247.607, z = 2759.833 }, rot = { x = 0.000, y = 287.304, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 21 },
	{ config_id = 116011, gadget_id = 70210102, pos = { x = -1772.147, y = 247.541, z = 2758.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 21 },
	{ config_id = 116012, gadget_id = 70210102, pos = { x = -1769.080, y = 247.153, z = 2757.561 }, rot = { x = 0.000, y = 287.304, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 21 },
	{ config_id = 116013, gadget_id = 70210102, pos = { x = -1771.195, y = 246.069, z = 2754.998 }, rot = { x = 0.000, y = 295.496, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 21 },
	{ config_id = 116025, gadget_id = 70220062, pos = { x = -1766.045, y = 245.984, z = 2757.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 116057, gadget_id = 70220062, pos = { x = -1772.147, y = 247.541, z = 2758.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 116058, gadget_id = 70220063, pos = { x = -1772.703, y = 247.429, z = 2758.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 116059, gadget_id = 70220064, pos = { x = -1771.653, y = 247.437, z = 2759.186 }, rot = { x = 9.969, y = 19.625, z = 28.021 }, level = 1, area_id = 21 },
	{ config_id = 116060, gadget_id = 70220062, pos = { x = -1769.366, y = 246.512, z = 2758.578 }, rot = { x = 350.474, y = 296.614, z = 323.599 }, level = 1, area_id = 21 },
	{ config_id = 116061, gadget_id = 70220063, pos = { x = -1769.080, y = 247.153, z = 2757.561 }, rot = { x = 0.000, y = 287.304, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 116062, gadget_id = 70220064, pos = { x = -1771.195, y = 246.069, z = 2754.998 }, rot = { x = 0.000, y = 295.496, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 116063, gadget_id = 70220062, pos = { x = -1770.579, y = 245.731, z = 2754.642 }, rot = { x = 340.058, y = 28.485, z = 0.001 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1116008, name = "GADGET_STATE_CHANGE_116008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_116008", action = "action_EVENT_GADGET_STATE_CHANGE_116008", trigger_count = 0 },
	{ config_id = 1116026, name = "GADGET_STATE_CHANGE_116026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_116026", action = "action_EVENT_GADGET_STATE_CHANGE_116026", trigger_count = 0 },
	{ config_id = 1116027, name = "GADGET_STATE_CHANGE_116027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_116027", action = "action_EVENT_GADGET_STATE_CHANGE_116027", trigger_count = 0 },
	{ config_id = 1116028, name = "ANY_GADGET_DIE_116028", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_116028", action = "action_EVENT_ANY_GADGET_DIE_116028" },
	{ config_id = 1116029, name = "ANY_GADGET_DIE_116029", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_116029", action = "action_EVENT_ANY_GADGET_DIE_116029" },
	{ config_id = 1116030, name = "ANY_GADGET_DIE_116030", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_116030", action = "action_EVENT_ANY_GADGET_DIE_116030" },
	{ config_id = 1116031, name = "GADGET_STATE_CHANGE_116031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_116031", action = "action_EVENT_GADGET_STATE_CHANGE_116031", trigger_count = 0 },
	{ config_id = 1116032, name = "GADGET_STATE_CHANGE_116032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_116032", action = "action_EVENT_GADGET_STATE_CHANGE_116032", trigger_count = 0 },
	{ config_id = 1116053, name = "GADGET_STATE_CHANGE_116053", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_116053", action = "action_EVENT_GADGET_STATE_CHANGE_116053", trigger_count = 0 },
	{ config_id = 1116054, name = "ANY_GADGET_DIE_116054", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_116054", action = "action_EVENT_ANY_GADGET_DIE_116054" },
	{ config_id = 1116055, name = "ANY_GADGET_DIE_116055", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_116055", action = "action_EVENT_ANY_GADGET_DIE_116055" },
	{ config_id = 1116056, name = "ANY_GADGET_DIE_116056", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_116056", action = "action_EVENT_ANY_GADGET_DIE_116056" }
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
		gadgets = { 116001, 116002, 116003, 116004, 116005, 116006, 116025 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_116008", "GADGET_STATE_CHANGE_116026", "GADGET_STATE_CHANGE_116027", "ANY_GADGET_DIE_116028", "ANY_GADGET_DIE_116029", "ANY_GADGET_DIE_116030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 116057, 116058, 116059, 116060, 116061, 116062, 116063 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_116031", "GADGET_STATE_CHANGE_116032", "GADGET_STATE_CHANGE_116053", "ANY_GADGET_DIE_116054", "ANY_GADGET_DIE_116055", "ANY_GADGET_DIE_116056" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_116008(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133304116, 116007) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_116008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2300410") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_116026(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133304116, 116010) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_116026(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2300410") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_116027(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133304116, 116009) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_116027(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2300410") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_116028(context, evt)
	if 116001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_116028(context, evt)
	-- 创建id为116007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 116007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_116029(context, evt)
	if 116004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_116029(context, evt)
	-- 创建id为116010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 116010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_116030(context, evt)
	if 116006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_116030(context, evt)
	-- 创建id为116009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 116009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_116031(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133304116, 116011) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_116031(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2300410") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_116032(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133304116, 116012) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_116032(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2300410") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_116053(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 133304116, 116013) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_116053(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2300410") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_116054(context, evt)
	if 116057 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_116054(context, evt)
	-- 创建id为116011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 116011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_116055(context, evt)
	if 116061 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_116055(context, evt)
	-- 创建id为116012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 116012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_116056(context, evt)
	if 116062 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_116056(context, evt)
	-- 创建id为116013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 116013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end