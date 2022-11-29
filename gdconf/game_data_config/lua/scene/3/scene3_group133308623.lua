-- 基础信息
local base_info = {
	group_id = 133308623
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 623001, monster_id = 28020604, pos = { x = -1893.765, y = 360.219, z = 4315.664 }, rot = { x = 0.000, y = 314.438, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 26 },
	{ config_id = 623002, monster_id = 26090901, pos = { x = -1893.646, y = 360.302, z = 4315.451 }, rot = { x = 0.000, y = 314.438, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 623003, monster_id = 28050106, pos = { x = -1893.753, y = 360.328, z = 4315.318 }, rot = { x = 0.000, y = 314.438, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 },
	{ config_id = 623005, monster_id = 28060401, pos = { x = -1893.657, y = 358.518, z = 4315.539 }, rot = { x = 0.000, y = 314.438, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 623006, gadget_id = 70330266, pos = { x = -1893.681, y = 360.290, z = 4315.473 }, rot = { x = 17.576, y = 313.338, z = 352.893 }, level = 32, area_id = 26 },
	{ config_id = 623007, gadget_id = 70210101, pos = { x = -1893.557, y = 360.337, z = 4315.378 }, rot = { x = 0.000, y = 314.438, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 623013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -1893.673, y = 360.166, z = 4315.875 }, area_id = 26 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1623008, name = "ANY_GADGET_DIE_623008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_623008", action = "action_EVENT_ANY_GADGET_DIE_623008" },
	-- 刷面具鼬
	{ config_id = 1623009, name = "ANY_GADGET_DIE_623009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_623009", action = "action_EVENT_ANY_GADGET_DIE_623009" },
	-- 刷岩蕈兽
	{ config_id = 1623010, name = "ANY_GADGET_DIE_623010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_623010", action = "action_EVENT_ANY_GADGET_DIE_623010" },
	-- 刷草晶蝶
	{ config_id = 1623011, name = "ANY_GADGET_DIE_623011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_623011", action = "action_EVENT_ANY_GADGET_DIE_623011" },
	-- 刷蝎子
	{ config_id = 1623012, name = "ANY_GADGET_DIE_623012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_623012", action = "action_EVENT_ANY_GADGET_DIE_623012" },
	-- 需要伏击怪食用这个
	{ config_id = 1623013, name = "ENTER_REGION_623013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_623013", action = "action_EVENT_ENTER_REGION_623013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 623004, monster_id = 28050106, pos = { x = -1893.510, y = 360.228, z = 4315.749 }, rot = { x = 0.000, y = 314.438, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 }
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
	rand_suite = true
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
		gadgets = { 623006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 623006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_623008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 623006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_623009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 623006 },
		regions = { 623013 },
		triggers = { "ANY_GADGET_DIE_623010", "ENTER_REGION_623013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 623006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_623011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 623006 },
		regions = { 623013 },
		triggers = { "ANY_GADGET_DIE_623012", "ENTER_REGION_623013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_623008(context, evt)
	if 623006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_623008(context, evt)
	-- 创建id为623007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 623007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_623009(context, evt)
	if 623006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_623009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 623001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_623010(context, evt)
	if 623006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_623010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 623002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_623011(context, evt)
	if 623006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_623011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 623003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_623012(context, evt)
	if 623006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_623012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 623005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_623013(context, evt)
	if evt.param1 ~= 623013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_623013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 623006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end