-- 基础信息
local base_info = {
	group_id = 133310567
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 567001, monster_id = 28020604, pos = { x = -2620.454, y = 214.283, z = 4731.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 28 },
	{ config_id = 567002, monster_id = 26090901, pos = { x = -2620.454, y = 214.283, z = 4731.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 28 },
	{ config_id = 567003, monster_id = 28050106, pos = { x = -2620.454, y = 214.283, z = 4731.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 28 },
	{ config_id = 567005, monster_id = 28060401, pos = { x = -2620.454, y = 214.283, z = 4731.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 567006, gadget_id = 70330266, pos = { x = -2620.454, y = 214.283, z = 4731.482 }, rot = { x = 346.719, y = 300.572, z = 358.297 }, level = 32, area_id = 28 },
	{ config_id = 567007, gadget_id = 70210101, pos = { x = -2620.454, y = 214.283, z = 4731.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 28 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 567013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -2620.454, y = 214.283, z = 4731.482 }, area_id = 28 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1567008, name = "ANY_GADGET_DIE_567008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_567008", action = "action_EVENT_ANY_GADGET_DIE_567008" },
	-- 刷面具鼬
	{ config_id = 1567009, name = "ANY_GADGET_DIE_567009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_567009", action = "action_EVENT_ANY_GADGET_DIE_567009" },
	-- 刷岩蕈兽
	{ config_id = 1567010, name = "ANY_GADGET_DIE_567010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_567010", action = "action_EVENT_ANY_GADGET_DIE_567010" },
	-- 刷草晶蝶
	{ config_id = 1567011, name = "ANY_GADGET_DIE_567011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_567011", action = "action_EVENT_ANY_GADGET_DIE_567011" },
	-- 刷蝎子
	{ config_id = 1567012, name = "ANY_GADGET_DIE_567012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_567012", action = "action_EVENT_ANY_GADGET_DIE_567012" },
	-- 需要伏击怪食用这个
	{ config_id = 1567013, name = "ENTER_REGION_567013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_567013", action = "action_EVENT_ENTER_REGION_567013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 567004, monster_id = 28050106, pos = { x = -2620.454, y = 214.283, z = 4731.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 28 }
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
		gadgets = { 567006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 567006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_567008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 567006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_567009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 567006 },
		regions = { 567013 },
		triggers = { "ANY_GADGET_DIE_567010", "ENTER_REGION_567013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 567006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_567011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 567006 },
		regions = { 567013 },
		triggers = { "ANY_GADGET_DIE_567012", "ENTER_REGION_567013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_567008(context, evt)
	if 567006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_567008(context, evt)
	-- 创建id为567007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 567007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_567009(context, evt)
	if 567006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_567009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 567001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_567010(context, evt)
	if 567006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_567010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 567002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_567011(context, evt)
	if 567006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_567011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 567003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_567012(context, evt)
	if 567006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_567012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 567005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_567013(context, evt)
	if evt.param1 ~= 567013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_567013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 567006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end