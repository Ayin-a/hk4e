-- 基础信息
local base_info = {
	group_id = 133308549
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 549001, monster_id = 28020604, pos = { x = -2378.259, y = 47.980, z = 4270.500 }, rot = { x = 0.000, y = 335.169, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 26 },
	{ config_id = 549002, monster_id = 26090901, pos = { x = -2378.222, y = 47.404, z = 4270.260 }, rot = { x = 0.000, y = 335.169, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 549003, monster_id = 28050106, pos = { x = -2378.370, y = 48.252, z = 4270.171 }, rot = { x = 0.000, y = 335.169, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 },
	{ config_id = 549005, monster_id = 28060401, pos = { x = -2378.200, y = 47.393, z = 4270.345 }, rot = { x = 0.000, y = 335.169, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 549006, gadget_id = 70330266, pos = { x = -2378.247, y = 47.771, z = 4270.292 }, rot = { x = 0.000, y = 335.169, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 549007, gadget_id = 70210101, pos = { x = -2378.166, y = 47.474, z = 4270.158 }, rot = { x = 0.000, y = 335.169, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 549013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -2378.098, y = 48.114, z = 4270.665 }, area_id = 26 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1549008, name = "ANY_GADGET_DIE_549008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_549008", action = "action_EVENT_ANY_GADGET_DIE_549008" },
	-- 刷面具鼬
	{ config_id = 1549009, name = "ANY_GADGET_DIE_549009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_549009", action = "action_EVENT_ANY_GADGET_DIE_549009" },
	-- 刷岩蕈兽
	{ config_id = 1549010, name = "ANY_GADGET_DIE_549010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_549010", action = "action_EVENT_ANY_GADGET_DIE_549010" },
	-- 刷草晶蝶
	{ config_id = 1549011, name = "ANY_GADGET_DIE_549011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_549011", action = "action_EVENT_ANY_GADGET_DIE_549011" },
	-- 刷蝎子
	{ config_id = 1549012, name = "ANY_GADGET_DIE_549012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_549012", action = "action_EVENT_ANY_GADGET_DIE_549012" },
	-- 需要伏击怪食用这个
	{ config_id = 1549013, name = "ENTER_REGION_549013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_549013", action = "action_EVENT_ENTER_REGION_549013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 549004, monster_id = 28050106, pos = { x = -2377.990, y = 48.284, z = 4270.489 }, rot = { x = 0.000, y = 335.169, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 }
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
		gadgets = { 549006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 549006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_549008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 549006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_549009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 549006 },
		regions = { 549013 },
		triggers = { "ANY_GADGET_DIE_549010", "ENTER_REGION_549013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 549006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_549011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 549006 },
		regions = { 549013 },
		triggers = { "ANY_GADGET_DIE_549012", "ENTER_REGION_549013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_549008(context, evt)
	if 549006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_549008(context, evt)
	-- 创建id为549007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 549007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_549009(context, evt)
	if 549006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_549009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 549001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_549010(context, evt)
	if 549006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_549010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 549002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_549011(context, evt)
	if 549006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_549011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 549003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_549012(context, evt)
	if 549006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_549012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 549005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_549013(context, evt)
	if evt.param1 ~= 549013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_549013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 549006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end