-- 基础信息
local base_info = {
	group_id = 166001331
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
	{ config_id = 331001, gadget_id = 70211101, pos = { x = 954.958, y = 901.517, z = 657.674 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 331002, gadget_id = 70290308, pos = { x = 949.366, y = 901.395, z = 661.416 }, rot = { x = 354.377, y = 316.891, z = 8.845 }, level = 36, area_id = 300 },
	{ config_id = 331003, gadget_id = 70290205, pos = { x = 945.830, y = 901.758, z = 656.847 }, rot = { x = 0.000, y = 304.115, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 331004, gadget_id = 70290233, pos = { x = 951.802, y = 901.106, z = 656.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 331005, gadget_id = 70360342, pos = { x = 954.964, y = 901.541, z = 657.588 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 300 },
	{ config_id = 331006, gadget_id = 70290308, pos = { x = 951.407, y = 901.535, z = 660.489 }, rot = { x = 0.000, y = 330.817, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 331008, gadget_id = 70220048, pos = { x = 945.632, y = 904.785, z = 649.860 }, rot = { x = 354.846, y = 273.388, z = 358.456 }, level = 36, area_id = 300 },
	{ config_id = 331010, gadget_id = 70290308, pos = { x = 942.842, y = 906.227, z = 635.564 }, rot = { x = 0.000, y = 305.219, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1331007, name = "ANY_GADGET_DIE_331007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_331007", action = "action_EVENT_ANY_GADGET_DIE_331007" },
	{ config_id = 1331009, name = "GROUP_LOAD_331009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_331009", action = "action_EVENT_GROUP_LOAD_331009", trigger_count = 0 }
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
		gadgets = { 331002, 331003, 331004, 331005, 331006, 331008, 331010 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_331007", "GROUP_LOAD_331009" },
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
function condition_EVENT_ANY_GADGET_DIE_331007(context, evt)
	if 331003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_331007(context, evt)
	-- 将本组内变量名为 "done" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 331004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为331001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 331001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 331005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_331009(context, evt)
	-- 判断变量"done"为1
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_331009(context, evt)
	-- 创建id为331001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 331001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end