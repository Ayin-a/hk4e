-- 基础信息
local base_info = {
	group_id = 133309141
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 141001, monster_id = 28020604, pos = { x = -2700.763, y = 195.870, z = 5569.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 27 },
	{ config_id = 141002, monster_id = 26090901, pos = { x = -2700.831, y = 195.884, z = 5568.898 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 141003, monster_id = 28050106, pos = { x = -2701.002, y = 195.902, z = 5568.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "魔法生物", area_id = 27 },
	{ config_id = 141005, monster_id = 28060401, pos = { x = -2700.775, y = 195.877, z = 5568.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 141006, gadget_id = 70330266, pos = { x = -2700.840, y = 194.945, z = 5568.938 }, rot = { x = 0.000, y = 0.000, z = 14.877 }, level = 30, area_id = 27 },
	{ config_id = 141007, gadget_id = 70210101, pos = { x = -2700.822, y = 195.919, z = 5568.782 }, rot = { x = 337.605, y = 2.984, z = 345.011 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 141013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -2700.548, y = 195.288, z = 5569.213 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1141008, name = "ANY_GADGET_DIE_141008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_141008", action = "action_EVENT_ANY_GADGET_DIE_141008" },
	-- 刷面具鼬
	{ config_id = 1141009, name = "ANY_GADGET_DIE_141009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_141009", action = "action_EVENT_ANY_GADGET_DIE_141009" },
	-- 刷岩蕈兽
	{ config_id = 1141010, name = "ANY_GADGET_DIE_141010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_141010", action = "action_EVENT_ANY_GADGET_DIE_141010" },
	-- 刷草晶蝶
	{ config_id = 1141011, name = "ANY_GADGET_DIE_141011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_141011", action = "action_EVENT_ANY_GADGET_DIE_141011" },
	-- 刷蝎子
	{ config_id = 1141012, name = "ANY_GADGET_DIE_141012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_141012", action = "action_EVENT_ANY_GADGET_DIE_141012" },
	-- 需要伏击怪食用这个
	{ config_id = 1141013, name = "ENTER_REGION_141013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_141013", action = "action_EVENT_ENTER_REGION_141013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 141004, monster_id = 28050106, pos = { x = -2700.524, y = 195.824, z = 5569.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "魔法生物", area_id = 27 }
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
		gadgets = { 141006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 141006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_141008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 141006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_141009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 141006 },
		regions = { 141013 },
		triggers = { "ANY_GADGET_DIE_141010", "ENTER_REGION_141013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 141006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_141011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 141006 },
		regions = { 141013 },
		triggers = { "ANY_GADGET_DIE_141012", "ENTER_REGION_141013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_141008(context, evt)
	if 141006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_141008(context, evt)
	-- 创建id为141007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 141007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_141009(context, evt)
	if 141006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_141009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 141001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_141010(context, evt)
	if 141006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_141010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 141002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_141011(context, evt)
	if 141006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_141011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 141003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_141012(context, evt)
	if 141006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_141012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 141005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_141013(context, evt)
	if evt.param1 ~= 141013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_141013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 141006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end