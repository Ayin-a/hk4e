-- 基础信息
local base_info = {
	group_id = 133314292
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 292001, monster_id = 28020604, pos = { x = -961.521, y = -18.013, z = 4423.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 32 },
	{ config_id = 292002, monster_id = 26090901, pos = { x = -961.589, y = -18.590, z = 4422.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 292003, monster_id = 28050106, pos = { x = -961.760, y = -17.742, z = 4422.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "魔法生物", area_id = 32 },
	{ config_id = 292004, monster_id = 28060401, pos = { x = -961.533, y = -18.601, z = 4422.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 292005, gadget_id = 70330266, pos = { x = -961.598, y = -18.223, z = 4422.913 }, rot = { x = 36.987, y = 249.795, z = 349.687 }, level = 30, area_id = 32 },
	{ config_id = 292006, gadget_id = 70210101, pos = { x = -961.580, y = -18.520, z = 4422.757 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 32 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 292012, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -961.306, y = -17.880, z = 4423.188 }, area_id = 32 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1292007, name = "ANY_GADGET_DIE_292007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_292007", action = "action_EVENT_ANY_GADGET_DIE_292007" },
	-- 刷面具鼬
	{ config_id = 1292008, name = "ANY_GADGET_DIE_292008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_292008", action = "action_EVENT_ANY_GADGET_DIE_292008" },
	-- 刷岩蕈兽
	{ config_id = 1292009, name = "ANY_GADGET_DIE_292009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_292009", action = "action_EVENT_ANY_GADGET_DIE_292009" },
	-- 刷草晶蝶
	{ config_id = 1292010, name = "ANY_GADGET_DIE_292010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_292010", action = "action_EVENT_ANY_GADGET_DIE_292010" },
	-- 刷蝎子
	{ config_id = 1292011, name = "ANY_GADGET_DIE_292011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_292011", action = "action_EVENT_ANY_GADGET_DIE_292011" },
	-- 需要伏击怪食用这个
	{ config_id = 1292012, name = "ENTER_REGION_292012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_292012", action = "action_EVENT_ENTER_REGION_292012" }
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
		gadgets = { 292005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 292005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_292007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 292005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_292008" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 292005 },
		regions = { 292012 },
		triggers = { "ANY_GADGET_DIE_292009", "ENTER_REGION_292012" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 292005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_292010" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 292005 },
		regions = { 292012 },
		triggers = { "ANY_GADGET_DIE_292011", "ENTER_REGION_292012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_292007(context, evt)
	if 292005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_292007(context, evt)
	-- 创建id为292006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 292006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_292008(context, evt)
	if 292005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_292008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 292001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_292009(context, evt)
	if 292005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_292009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 292002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_292010(context, evt)
	if 292005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_292010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 292003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_292011(context, evt)
	if 292005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_292011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 292004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_292012(context, evt)
	if evt.param1 ~= 292012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_292012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 292005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end