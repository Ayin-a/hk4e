-- 基础信息
local base_info = {
	group_id = 166001199
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
	{ config_id = 199001, gadget_id = 70290395, pos = { x = 746.813, y = 706.039, z = 418.009 }, rot = { x = 356.940, y = 305.583, z = 358.238 }, level = 32, isOneoff = true, area_id = 300 },
	{ config_id = 199002, gadget_id = 70290395, pos = { x = 756.630, y = 705.734, z = 410.421 }, rot = { x = 14.929, y = 331.523, z = 8.250 }, level = 36, isOneoff = true, area_id = 300 },
	{ config_id = 199003, gadget_id = 70290324, pos = { x = 749.092, y = 708.775, z = 412.925 }, rot = { x = 16.435, y = 334.831, z = 343.201 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 199004, gadget_id = 70290324, pos = { x = 742.538, y = 704.458, z = 415.544 }, rot = { x = 356.379, y = 332.420, z = 2.322 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 199005, gadget_id = 70290323, pos = { x = 739.234, y = 705.309, z = 415.032 }, rot = { x = 1.759, y = 74.595, z = 349.380 }, level = 36, persistent = true, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 199006, shape = RegionShape.SPHERE, radius = 20, pos = { x = 692.280, y = 706.773, z = 301.450 }, area_id = 300 },
	{ config_id = 199009, shape = RegionShape.SPHERE, radius = 20, pos = { x = 692.280, y = 706.773, z = 301.450 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1199006, name = "ENTER_REGION_199006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_199006", action = "action_EVENT_ENTER_REGION_199006", trigger_count = 0 },
	{ config_id = 1199007, name = "ANY_GADGET_DIE_199007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_199007", action = "action_EVENT_ANY_GADGET_DIE_199007" },
	{ config_id = 1199008, name = "ANY_GADGET_DIE_199008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_199008", action = "action_EVENT_ANY_GADGET_DIE_199008" },
	{ config_id = 1199009, name = "ENTER_REGION_199009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_199009", action = "action_EVENT_ENTER_REGION_199009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "done", value = 0, no_refresh = true }
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
		gadgets = { 199001, 199002 },
		regions = { 199006, 199009 },
		triggers = { "ENTER_REGION_199006", "ANY_GADGET_DIE_199007", "ANY_GADGET_DIE_199008", "ENTER_REGION_199009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_199006(context, evt)
	if evt.param1 ~= 199006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"done"为0
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_199006(context, evt)
	-- 创建id为199003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 199003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为199004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 199004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为199005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 199005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_199007(context, evt)
	if 199001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_199007(context, evt)
	-- 针对当前group内变量名为 "done" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_199008(context, evt)
	if 199002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_199008(context, evt)
	-- 针对当前group内变量名为 "done" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_199009(context, evt)
	if evt.param1 ~= 199009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"done"为1
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_199009(context, evt)
	-- 创建id为199003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 199003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为199004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 199004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为199005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 199005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end