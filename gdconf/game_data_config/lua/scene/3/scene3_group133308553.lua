-- 基础信息
local base_info = {
	group_id = 133308553
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 553001, monster_id = 28020604, pos = { x = -2436.756, y = 54.533, z = 4419.407 }, rot = { x = 0.000, y = 195.123, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 26 },
	{ config_id = 553002, monster_id = 26090901, pos = { x = -2436.629, y = 53.957, z = 4419.614 }, rot = { x = 0.000, y = 195.123, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 553003, monster_id = 28050106, pos = { x = -2436.460, y = 54.804, z = 4419.588 }, rot = { x = 0.000, y = 195.123, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 },
	{ config_id = 553005, monster_id = 28060401, pos = { x = -2436.701, y = 53.946, z = 4419.563 }, rot = { x = 0.000, y = 195.123, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 553006, gadget_id = 70330266, pos = { x = -2436.631, y = 54.324, z = 4419.575 }, rot = { x = 0.000, y = 195.123, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 553007, gadget_id = 70210101, pos = { x = -2436.607, y = 54.026, z = 4419.729 }, rot = { x = 0.000, y = 195.123, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 553013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -2436.985, y = 54.666, z = 4419.384 }, area_id = 26 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1553008, name = "ANY_GADGET_DIE_553008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_553008", action = "action_EVENT_ANY_GADGET_DIE_553008" },
	-- 刷面具鼬
	{ config_id = 1553009, name = "ANY_GADGET_DIE_553009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_553009", action = "action_EVENT_ANY_GADGET_DIE_553009" },
	-- 刷岩蕈兽
	{ config_id = 1553010, name = "ANY_GADGET_DIE_553010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_553010", action = "action_EVENT_ANY_GADGET_DIE_553010" },
	-- 刷草晶蝶
	{ config_id = 1553011, name = "ANY_GADGET_DIE_553011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_553011", action = "action_EVENT_ANY_GADGET_DIE_553011" },
	-- 刷蝎子
	{ config_id = 1553012, name = "ANY_GADGET_DIE_553012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_553012", action = "action_EVENT_ANY_GADGET_DIE_553012" },
	-- 需要伏击怪食用这个
	{ config_id = 1553013, name = "ENTER_REGION_553013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_553013", action = "action_EVENT_ENTER_REGION_553013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 553004, monster_id = 28050106, pos = { x = -2436.954, y = 54.837, z = 4419.587 }, rot = { x = 0.000, y = 195.123, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 }
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
		gadgets = { 553006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 553006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_553008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 553006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_553009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 553006 },
		regions = { 553013 },
		triggers = { "ANY_GADGET_DIE_553010", "ENTER_REGION_553013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 553006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_553011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 553006 },
		regions = { 553013 },
		triggers = { "ANY_GADGET_DIE_553012", "ENTER_REGION_553013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_553008(context, evt)
	if 553006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_553008(context, evt)
	-- 创建id为553007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 553007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_553009(context, evt)
	if 553006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_553009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 553001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_553010(context, evt)
	if 553006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_553010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 553002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_553011(context, evt)
	if 553006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_553011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 553003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_553012(context, evt)
	if 553006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_553012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 553005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_553013(context, evt)
	if evt.param1 ~= 553013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_553013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 553006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end