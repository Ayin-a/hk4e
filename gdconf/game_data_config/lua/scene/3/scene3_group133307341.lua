-- 基础信息
local base_info = {
	group_id = 133307341
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 341001, monster_id = 28020604, pos = { x = -1897.104, y = 5.339, z = 5516.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 27 },
	{ config_id = 341002, monster_id = 26090901, pos = { x = -1897.010, y = 5.228, z = 5516.925 }, rot = { x = 0.000, y = 57.233, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 341003, monster_id = 28050106, pos = { x = -1896.833, y = 5.605, z = 5516.278 }, rot = { x = 0.000, y = 54.093, z = 0.000 }, level = 30, drop_tag = "魔法生物", area_id = 27 },
	{ config_id = 341004, monster_id = 28060401, pos = { x = -1897.115, y = 5.368, z = 5516.299 }, rot = { x = 0.000, y = 55.437, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 341005, gadget_id = 70330266, pos = { x = -1897.900, y = 5.741, z = 5516.485 }, rot = { x = 348.367, y = 186.287, z = 25.473 }, level = 30, area_id = 27 },
	{ config_id = 341006, gadget_id = 70210101, pos = { x = -1896.755, y = 5.156, z = 5516.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 341012, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -1896.980, y = 6.328, z = 5516.532 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1341007, name = "ANY_GADGET_DIE_341007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_341007", action = "action_EVENT_ANY_GADGET_DIE_341007" },
	-- 刷面具鼬
	{ config_id = 1341008, name = "ANY_GADGET_DIE_341008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_341008", action = "action_EVENT_ANY_GADGET_DIE_341008" },
	-- 刷岩蕈兽
	{ config_id = 1341009, name = "ANY_GADGET_DIE_341009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_341009", action = "action_EVENT_ANY_GADGET_DIE_341009" },
	-- 刷草晶蝶
	{ config_id = 1341010, name = "ANY_GADGET_DIE_341010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_341010", action = "action_EVENT_ANY_GADGET_DIE_341010" },
	-- 刷蝎子
	{ config_id = 1341011, name = "ANY_GADGET_DIE_341011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_341011", action = "action_EVENT_ANY_GADGET_DIE_341011" },
	-- 需要伏击怪食用这个
	{ config_id = 1341012, name = "ENTER_REGION_341012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_341012", action = "action_EVENT_ENTER_REGION_341012" }
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
		gadgets = { 341005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 341005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_341007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 341005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_341008" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 341005 },
		regions = { 341012 },
		triggers = { "ANY_GADGET_DIE_341009", "ENTER_REGION_341012" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 341005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_341010" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 341005 },
		regions = { 341012 },
		triggers = { "ANY_GADGET_DIE_341011", "ENTER_REGION_341012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_341007(context, evt)
	if 341005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_341007(context, evt)
	-- 创建id为341006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 341006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_341008(context, evt)
	if 341005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_341008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 341001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_341009(context, evt)
	if 341005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_341009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 341002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_341010(context, evt)
	if 341005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_341010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 341003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_341011(context, evt)
	if 341005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_341011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 341004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_341012(context, evt)
	if evt.param1 ~= 341012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_341012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 341005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end