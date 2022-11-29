-- 基础信息
local base_info = {
	group_id = 133106219
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
	{ config_id = 219001, gadget_id = 70360040, pos = { x = -241.362, y = 184.101, z = 846.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 219002, gadget_id = 70360040, pos = { x = -233.828, y = 183.662, z = 842.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 219003, gadget_id = 70360040, pos = { x = -221.874, y = 184.191, z = 834.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 8 },
	{ config_id = 219004, gadget_id = 70360040, pos = { x = -215.233, y = 185.792, z = 830.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 8 },
	{ config_id = 219005, gadget_id = 70360040, pos = { x = -209.575, y = 186.794, z = 824.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 8 },
	{ config_id = 219011, gadget_id = 70211121, pos = { x = -204.380, y = 185.237, z = 818.578 }, rot = { x = 2.937, y = 359.836, z = 353.599 }, level = 21, drop_tag = "解谜高级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
	{ config_id = 219006, shape = RegionShape.SPHERE, radius = 1, pos = { x = -241.397, y = 184.086, z = 846.393 }, area_id = 8 },
	{ config_id = 219007, shape = RegionShape.SPHERE, radius = 1, pos = { x = -233.824, y = 183.660, z = 842.899 }, area_id = 8 },
	{ config_id = 219008, shape = RegionShape.SPHERE, radius = 1, pos = { x = -222.001, y = 184.343, z = 834.431 }, area_id = 8 },
	{ config_id = 219009, shape = RegionShape.SPHERE, radius = 1, pos = { x = -215.193, y = 185.785, z = 830.255 }, area_id = 8 },
	{ config_id = 219010, shape = RegionShape.SPHERE, radius = 1, pos = { x = -209.602, y = 186.930, z = 824.379 }, area_id = 8 }
}

-- 触发器
triggers = {
	{ config_id = 1219006, name = "ENTER_REGION_219006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_219006", action = "action_EVENT_ENTER_REGION_219006" },
	{ config_id = 1219007, name = "ENTER_REGION_219007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_219007", action = "action_EVENT_ENTER_REGION_219007" },
	{ config_id = 1219008, name = "ENTER_REGION_219008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_219008", action = "action_EVENT_ENTER_REGION_219008" },
	{ config_id = 1219009, name = "ENTER_REGION_219009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_219009", action = "action_EVENT_ENTER_REGION_219009" },
	{ config_id = 1219010, name = "ENTER_REGION_219010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_219010", action = "action_EVENT_ENTER_REGION_219010" }
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
		gadgets = { 219001 },
		regions = { 219006 },
		triggers = { "ENTER_REGION_219006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 219002 },
		regions = { 219007 },
		triggers = { "ENTER_REGION_219007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 219003 },
		regions = { 219008 },
		triggers = { "ENTER_REGION_219008" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 219004 },
		regions = { 219009 },
		triggers = { "ENTER_REGION_219009" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 219005 },
		regions = { 219010 },
		triggers = { "ENTER_REGION_219010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_219006(context, evt)
	if evt.param1 ~= 219006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_219006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133106219, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_219007(context, evt)
	if evt.param1 ~= 219007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_219007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133106219, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_219008(context, evt)
	if evt.param1 ~= 219008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_219008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133106219, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_219009(context, evt)
	if evt.param1 ~= 219009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_219009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133106219, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_219010(context, evt)
	if evt.param1 ~= 219010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_219010(context, evt)
	-- 创建id为219011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 219011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 219005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end