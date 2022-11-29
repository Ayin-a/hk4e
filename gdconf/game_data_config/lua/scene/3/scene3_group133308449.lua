-- 基础信息
local base_info = {
	group_id = 133308449
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 449001, monster_id = 28020604, pos = { x = -1881.379, y = 379.550, z = 4183.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 26 },
	{ config_id = 449002, monster_id = 26090901, pos = { x = -1881.447, y = 378.974, z = 4183.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 449003, monster_id = 28050106, pos = { x = -1881.618, y = 379.821, z = 4183.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 },
	{ config_id = 449005, monster_id = 28060401, pos = { x = -1881.391, y = 378.963, z = 4183.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 449006, gadget_id = 70330266, pos = { x = -1881.456, y = 379.341, z = 4183.074 }, rot = { x = 4.376, y = 359.905, z = 357.521 }, level = 32, area_id = 26 },
	{ config_id = 449007, gadget_id = 70210101, pos = { x = -1881.438, y = 379.044, z = 4182.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 449013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -1881.164, y = 379.683, z = 4183.349 }, area_id = 26 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1449008, name = "ANY_GADGET_DIE_449008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_449008", action = "action_EVENT_ANY_GADGET_DIE_449008" },
	-- 刷面具鼬
	{ config_id = 1449009, name = "ANY_GADGET_DIE_449009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_449009", action = "action_EVENT_ANY_GADGET_DIE_449009" },
	-- 刷岩蕈兽
	{ config_id = 1449010, name = "ANY_GADGET_DIE_449010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_449010", action = "action_EVENT_ANY_GADGET_DIE_449010" },
	-- 刷草晶蝶
	{ config_id = 1449011, name = "ANY_GADGET_DIE_449011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_449011", action = "action_EVENT_ANY_GADGET_DIE_449011" },
	-- 刷蝎子
	{ config_id = 1449012, name = "ANY_GADGET_DIE_449012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_449012", action = "action_EVENT_ANY_GADGET_DIE_449012" },
	-- 需要伏击怪食用这个
	{ config_id = 1449013, name = "ENTER_REGION_449013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_449013", action = "action_EVENT_ENTER_REGION_449013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 449004, monster_id = 28050106, pos = { x = -1881.140, y = 379.854, z = 4183.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 }
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
		gadgets = { 449006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 449006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_449008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 449006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_449009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 449006 },
		regions = { 449013 },
		triggers = { "ANY_GADGET_DIE_449010", "ENTER_REGION_449013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 449006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_449011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 449006 },
		regions = { 449013 },
		triggers = { "ANY_GADGET_DIE_449012", "ENTER_REGION_449013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_449008(context, evt)
	if 449006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_449008(context, evt)
	-- 创建id为449007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 449007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_449009(context, evt)
	if 449006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_449009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 449001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_449010(context, evt)
	if 449006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_449010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 449002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_449011(context, evt)
	if 449006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_449011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 449003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_449012(context, evt)
	if 449006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_449012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 449005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_449013(context, evt)
	if evt.param1 ~= 449013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_449013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 449006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end