-- 基础信息
local base_info = {
	group_id = 166001161
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 161001, monster_id = 26040101, pos = { x = 1127.128, y = 736.747, z = 292.177 }, rot = { x = 0.000, y = 291.583, z = 0.000 }, level = 36, drop_tag = "岩龙蜥", disableWander = true, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 161002, gadget_id = 70290395, pos = { x = 1125.037, y = 737.762, z = 293.927 }, rot = { x = 0.000, y = 212.208, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 161004, gadget_id = 70290395, pos = { x = 1137.808, y = 739.382, z = 290.572 }, rot = { x = 0.000, y = 10.519, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 161006, gadget_id = 70211011, pos = { x = 1130.812, y = 738.155, z = 289.261 }, rot = { x = 10.589, y = 0.414, z = 4.467 }, level = 26, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 161003, shape = RegionShape.SPHERE, radius = 15, pos = { x = 1113.724, y = 734.611, z = 298.821 }, area_id = 300 },
	{ config_id = 161005, shape = RegionShape.SPHERE, radius = 15, pos = { x = 1146.723, y = 740.010, z = 291.593 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1161003, name = "ENTER_REGION_161003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_161003", action = "action_EVENT_ENTER_REGION_161003" },
	{ config_id = 1161005, name = "ENTER_REGION_161005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_161005", action = "action_EVENT_ENTER_REGION_161005" },
	{ config_id = 1161007, name = "ANY_MONSTER_DIE_161007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_161007", action = "action_EVENT_ANY_MONSTER_DIE_161007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "ison", value = 0, no_refresh = true }
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
		gadgets = { 161002, 161004 },
		regions = { 161003, 161005 },
		triggers = { "ENTER_REGION_161003", "ENTER_REGION_161005", "ANY_MONSTER_DIE_161007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 161001 },
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
function condition_EVENT_ENTER_REGION_161003(context, evt)
	if evt.param1 ~= 161003 then return false end
	
	-- 判断变量"ison"为0
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_161003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001161, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 161002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 161004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_161005(context, evt)
	if evt.param1 ~= 161005 then return false end
	
	-- 判断变量"ison"为0
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_161005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001161, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 161002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 161004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "ison" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_161007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_161007(context, evt)
	-- 创建id为161006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 161006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end