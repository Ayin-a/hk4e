-- 基础信息
local base_info = {
	group_id = 247103002
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
	{ config_id = 2001, gadget_id = 70710535, pos = { x = 720.670, y = 84.500, z = 781.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2002, gadget_id = 70710535, pos = { x = 219.235, y = 84.500, z = 213.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2008, gadget_id = 70310148, pos = { x = 219.719, y = 90.181, z = 212.768 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE },
	{ config_id = 2009, gadget_id = 70900203, pos = { x = 219.719, y = 92.511, z = 212.768 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 2003, shape = RegionShape.SPHERE, radius = 20, pos = { x = 248.068, y = 100.931, z = 172.938 } },
	{ config_id = 2004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 219.516, y = 88.646, z = 213.635 } },
	{ config_id = 2006, shape = RegionShape.SPHERE, radius = 20, pos = { x = 746.723, y = 90.184, z = 743.603 } },
	{ config_id = 2007, shape = RegionShape.SPHERE, radius = 12, pos = { x = 720.603, y = 90.184, z = 780.959 } }
}

-- 触发器
triggers = {
	{ config_id = 1002003, name = "ENTER_REGION_2003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2003", action = "action_EVENT_ENTER_REGION_2003", trigger_count = 0 },
	{ config_id = 1002004, name = "ENTER_REGION_2004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2004", action = "action_EVENT_ENTER_REGION_2004", trigger_count = 0 },
	{ config_id = 1002006, name = "ENTER_REGION_2006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2006", action = "action_EVENT_ENTER_REGION_2006", trigger_count = 0 },
	{ config_id = 1002007, name = "ENTER_REGION_2007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2007", action = "action_EVENT_ENTER_REGION_2007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "default", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1002005, name = "QUEST_FINISH_2005", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_2005", action = "action_EVENT_QUEST_FINISH_2005", trigger_count = 0 }
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
		gadgets = { },
		regions = { 2003, 2004, 2006, 2007 },
		triggers = { "ENTER_REGION_2003", "ENTER_REGION_2004", "ENTER_REGION_2006", "ENTER_REGION_2007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 2001 },
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
function condition_EVENT_ENTER_REGION_2003(context, evt)
	if evt.param1 ~= 2003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2003(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247103002, 2)
	
	-- 创建id为2008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为2009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2004(context, evt)
	if evt.param1 ~= 2004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247103002, 2)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 247103002, EntityType.GADGET, 2008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 247103002, EntityType.GADGET, 2009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2006(context, evt)
	if evt.param1 ~= 2006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2006(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247103002, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2007(context, evt)
	if evt.param1 ~= 2007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2007(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247103002, 3)
	
	return 0
end