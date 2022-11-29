-- 基础信息
local base_info = {
	group_id = 133303513
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
	{ config_id = 513001, gadget_id = 70290437, pos = { x = -1667.185, y = 97.873, z = 3247.395 }, rot = { x = 0.000, y = 173.193, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 513002, gadget_id = 70290437, pos = { x = -1675.046, y = 102.023, z = 3243.965 }, rot = { x = 0.000, y = 222.617, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 513003, gadget_id = 70290437, pos = { x = -1787.864, y = 96.872, z = 3300.981 }, rot = { x = 0.000, y = 222.617, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 513004, gadget_id = 70290437, pos = { x = -1829.490, y = 99.036, z = 3234.057 }, rot = { x = 0.000, y = 222.617, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 513005, gadget_id = 70290437, pos = { x = -1831.455, y = 102.574, z = 3204.806 }, rot = { x = 0.000, y = 222.617, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 513006, gadget_id = 70290437, pos = { x = -1799.102, y = 97.357, z = 3129.940 }, rot = { x = 0.000, y = 222.617, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 513007, gadget_id = 70290437, pos = { x = -1765.397, y = 96.406, z = 3178.384 }, rot = { x = 0.000, y = 222.617, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 513008, gadget_id = 70290437, pos = { x = -1775.462, y = 96.690, z = 3163.111 }, rot = { x = 0.000, y = 222.617, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 513009, gadget_id = 70290437, pos = { x = -1718.904, y = 97.899, z = 3177.055 }, rot = { x = 0.000, y = 222.617, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 513010, gadget_id = 70290437, pos = { x = -1617.617, y = 97.260, z = 3210.867 }, rot = { x = 0.000, y = 222.617, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 513011, gadget_id = 70290437, pos = { x = -1586.038, y = 96.926, z = 3188.115 }, rot = { x = 0.000, y = 222.617, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 513012, gadget_id = 70290437, pos = { x = -1608.911, y = 96.001, z = 3334.074 }, rot = { x = 0.000, y = 222.617, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 513013, gadget_id = 70290437, pos = { x = -1733.828, y = 96.604, z = 3329.980 }, rot = { x = 0.000, y = 222.617, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 513014, gadget_id = 70210101, pos = { x = -1667.181, y = 96.932, z = 3247.467 }, rot = { x = 0.000, y = 173.193, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 23 },
	{ config_id = 513015, gadget_id = 70210101, pos = { x = -1675.046, y = 100.934, z = 3243.965 }, rot = { x = 0.000, y = 222.617, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 23 },
	{ config_id = 513016, gadget_id = 70210101, pos = { x = -1787.864, y = 95.772, z = 3300.981 }, rot = { x = 0.000, y = 222.617, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 23 },
	{ config_id = 513017, gadget_id = 70210101, pos = { x = -1829.490, y = 98.019, z = 3234.057 }, rot = { x = 0.000, y = 222.617, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 23 },
	{ config_id = 513018, gadget_id = 70210101, pos = { x = -1831.455, y = 101.540, z = 3204.806 }, rot = { x = 0.000, y = 222.617, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 23 },
	{ config_id = 513019, gadget_id = 70210101, pos = { x = -1799.102, y = 96.435, z = 3129.940 }, rot = { x = 0.000, y = 222.617, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 23 },
	{ config_id = 513020, gadget_id = 70210101, pos = { x = -1765.397, y = 95.459, z = 3178.384 }, rot = { x = 0.000, y = 222.617, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 23 },
	{ config_id = 513021, gadget_id = 70210101, pos = { x = -1775.462, y = 95.704, z = 3163.111 }, rot = { x = 0.000, y = 222.617, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 23 },
	{ config_id = 513022, gadget_id = 70210101, pos = { x = -1718.904, y = 96.965, z = 3177.055 }, rot = { x = 0.000, y = 222.617, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 23 },
	{ config_id = 513023, gadget_id = 70210101, pos = { x = -1617.617, y = 96.192, z = 3210.867 }, rot = { x = 0.000, y = 222.617, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 23 },
	{ config_id = 513024, gadget_id = 70210101, pos = { x = -1586.038, y = 95.813, z = 3188.115 }, rot = { x = 0.000, y = 222.617, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 23 },
	{ config_id = 513025, gadget_id = 70210101, pos = { x = -1608.911, y = 94.735, z = 3334.074 }, rot = { x = 0.000, y = 222.617, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 23 },
	{ config_id = 513026, gadget_id = 70210101, pos = { x = -1733.828, y = 95.442, z = 3329.980 }, rot = { x = 0.000, y = 222.617, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1513027, name = "GADGET_STATE_CHANGE_513027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_513027", action = "action_EVENT_GADGET_STATE_CHANGE_513027" },
	{ config_id = 1513028, name = "GADGET_STATE_CHANGE_513028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_513028", action = "action_EVENT_GADGET_STATE_CHANGE_513028" },
	{ config_id = 1513029, name = "GADGET_STATE_CHANGE_513029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_513029", action = "action_EVENT_GADGET_STATE_CHANGE_513029" },
	{ config_id = 1513030, name = "GADGET_STATE_CHANGE_513030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_513030", action = "action_EVENT_GADGET_STATE_CHANGE_513030" },
	{ config_id = 1513031, name = "GADGET_STATE_CHANGE_513031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_513031", action = "action_EVENT_GADGET_STATE_CHANGE_513031" },
	{ config_id = 1513032, name = "GADGET_STATE_CHANGE_513032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_513032", action = "action_EVENT_GADGET_STATE_CHANGE_513032" },
	{ config_id = 1513033, name = "GADGET_STATE_CHANGE_513033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_513033", action = "action_EVENT_GADGET_STATE_CHANGE_513033" },
	{ config_id = 1513034, name = "GADGET_STATE_CHANGE_513034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_513034", action = "action_EVENT_GADGET_STATE_CHANGE_513034" },
	{ config_id = 1513035, name = "GADGET_STATE_CHANGE_513035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_513035", action = "action_EVENT_GADGET_STATE_CHANGE_513035" },
	{ config_id = 1513036, name = "GADGET_STATE_CHANGE_513036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_513036", action = "action_EVENT_GADGET_STATE_CHANGE_513036" },
	{ config_id = 1513037, name = "GADGET_STATE_CHANGE_513037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_513037", action = "action_EVENT_GADGET_STATE_CHANGE_513037" },
	{ config_id = 1513038, name = "GADGET_STATE_CHANGE_513038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_513038", action = "action_EVENT_GADGET_STATE_CHANGE_513038" },
	{ config_id = 1513039, name = "GADGET_STATE_CHANGE_513039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_513039", action = "action_EVENT_GADGET_STATE_CHANGE_513039" }
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
		gadgets = { 513001, 513002, 513003, 513004, 513005, 513006, 513007, 513008, 513009, 513010, 513011, 513012, 513013 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_513027", "GADGET_STATE_CHANGE_513028", "GADGET_STATE_CHANGE_513029", "GADGET_STATE_CHANGE_513030", "GADGET_STATE_CHANGE_513031", "GADGET_STATE_CHANGE_513032", "GADGET_STATE_CHANGE_513033", "GADGET_STATE_CHANGE_513034", "GADGET_STATE_CHANGE_513035", "GADGET_STATE_CHANGE_513036", "GADGET_STATE_CHANGE_513037", "GADGET_STATE_CHANGE_513038", "GADGET_STATE_CHANGE_513039" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_513027(context, evt)
	if 513001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_513027(context, evt)
	-- 创建id为513014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 513014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_513028(context, evt)
	if 513002 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_513028(context, evt)
	-- 创建id为513015的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 513015 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_513029(context, evt)
	if 513003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_513029(context, evt)
	-- 创建id为513016的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 513016 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_513030(context, evt)
	if 513004 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_513030(context, evt)
	-- 创建id为513017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 513017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_513031(context, evt)
	if 513005 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_513031(context, evt)
	-- 创建id为513018的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 513018 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_513032(context, evt)
	if 513006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_513032(context, evt)
	-- 创建id为513019的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 513019 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_513033(context, evt)
	if 513007 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_513033(context, evt)
	-- 创建id为513020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 513020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_513034(context, evt)
	if 513008 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_513034(context, evt)
	-- 创建id为513021的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 513021 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_513035(context, evt)
	if 513009 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_513035(context, evt)
	-- 创建id为513022的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 513022 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_513036(context, evt)
	if 513010 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_513036(context, evt)
	-- 创建id为513023的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 513023 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_513037(context, evt)
	if 513011 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_513037(context, evt)
	-- 创建id为513024的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 513024 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_513038(context, evt)
	if 513012 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_513038(context, evt)
	-- 创建id为513025的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 513025 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_513039(context, evt)
	if 513013 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_513039(context, evt)
	-- 创建id为513026的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 513026 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V3_0/VarunaStandard"