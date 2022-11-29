-- 基础信息
local base_info = {
	group_id = 244001006
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
	{ config_id = 6001, gadget_id = 70900201, pos = { x = 4.454, y = -0.984, z = 49.754 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6002, gadget_id = 70900201, pos = { x = 4.241, y = 3.462, z = -8.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6003, gadget_id = 70900201, pos = { x = 2.199, y = 2.327, z = -43.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6004, gadget_id = 70900201, pos = { x = 42.061, y = 10.057, z = -49.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6005, gadget_id = 70900201, pos = { x = 142.945, y = 62.561, z = -21.783 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 6007, shape = RegionShape.SPHERE, radius = 15, pos = { x = 3.186, y = -2.953, z = 49.748 } },
	{ config_id = 6008, shape = RegionShape.CUBIC, size = { x = 40.000, y = 20.000, z = 5.000 }, pos = { x = 5.034, y = 4.853, z = 11.163 } },
	{ config_id = 6009, shape = RegionShape.CUBIC, size = { x = 40.000, y = 20.000, z = 5.000 }, pos = { x = 2.030, y = 2.220, z = -26.352 } },
	{ config_id = 6010, shape = RegionShape.SPHERE, radius = 12, pos = { x = 137.660, y = 60.797, z = -20.605 } }
}

-- 触发器
triggers = {
	{ config_id = 1006007, name = "ENTER_REGION_6007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6007", action = "action_EVENT_ENTER_REGION_6007" },
	{ config_id = 1006008, name = "ENTER_REGION_6008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6008", action = "action_EVENT_ENTER_REGION_6008" },
	{ config_id = 1006009, name = "ENTER_REGION_6009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6009", action = "action_EVENT_ENTER_REGION_6009" },
	{ config_id = 1006010, name = "ENTER_REGION_6010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6010", action = "action_EVENT_ENTER_REGION_6010" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 6006, gadget_id = 70900201, pos = { x = 194.600, y = 63.111, z = -22.027 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { 6001 },
		regions = { 6007, 6008, 6009, 6010 },
		triggers = { "ENTER_REGION_6007", "ENTER_REGION_6008", "ENTER_REGION_6009", "ENTER_REGION_6010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 6002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 6003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 6004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 6005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
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
function condition_EVENT_ENTER_REGION_6007(context, evt)
	if evt.param1 ~= 6007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6007(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 244001006, EntityType.GADGET, 6001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 244001006, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6008(context, evt)
	if evt.param1 ~= 6008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6008(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 244001006, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6009(context, evt)
	if evt.param1 ~= 6009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6009(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 244001006, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6010(context, evt)
	if evt.param1 ~= 6010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6010(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 244001006, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 244001006, 6)
	
	return 0
end