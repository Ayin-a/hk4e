-- 基础信息
local base_info = {
	group_id = 133310554
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 554001, monster_id = 28020604, pos = { x = -2190.178, y = 130.981, z = 4832.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 26 },
	{ config_id = 554002, monster_id = 26090901, pos = { x = -2190.247, y = 130.405, z = 4832.075 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 554003, monster_id = 28050106, pos = { x = -2190.417, y = 131.252, z = 4832.057 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 },
	{ config_id = 554005, monster_id = 28060401, pos = { x = -2190.191, y = 130.394, z = 4832.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 554006, gadget_id = 70330266, pos = { x = -2190.134, y = 130.614, z = 4831.943 }, rot = { x = 0.000, y = 0.000, z = 4.800 }, level = 32, area_id = 26 },
	{ config_id = 554007, gadget_id = 70210101, pos = { x = -2190.238, y = 130.756, z = 4831.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 554013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -2189.964, y = 131.114, z = 4832.390 }, area_id = 26 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1554008, name = "ANY_GADGET_DIE_554008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_554008", action = "action_EVENT_ANY_GADGET_DIE_554008" },
	-- 刷面具鼬
	{ config_id = 1554009, name = "ANY_GADGET_DIE_554009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_554009", action = "action_EVENT_ANY_GADGET_DIE_554009" },
	-- 刷岩蕈兽
	{ config_id = 1554010, name = "ANY_GADGET_DIE_554010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_554010", action = "action_EVENT_ANY_GADGET_DIE_554010" },
	-- 刷草晶蝶
	{ config_id = 1554011, name = "ANY_GADGET_DIE_554011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_554011", action = "action_EVENT_ANY_GADGET_DIE_554011" },
	-- 刷蝎子
	{ config_id = 1554012, name = "ANY_GADGET_DIE_554012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_554012", action = "action_EVENT_ANY_GADGET_DIE_554012" },
	-- 需要伏击怪食用这个
	{ config_id = 1554013, name = "ENTER_REGION_554013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_554013", action = "action_EVENT_ENTER_REGION_554013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 554004, monster_id = 28050106, pos = { x = -2189.939, y = 131.285, z = 4832.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 }
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
		gadgets = { 554006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 554006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_554008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 554006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_554009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 554006 },
		regions = { 554013 },
		triggers = { "ANY_GADGET_DIE_554010", "ENTER_REGION_554013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 554006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_554011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 554006 },
		regions = { 554013 },
		triggers = { "ANY_GADGET_DIE_554012", "ENTER_REGION_554013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_554008(context, evt)
	if 554006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_554008(context, evt)
	-- 创建id为554007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 554007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_554009(context, evt)
	if 554006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_554009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 554001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_554010(context, evt)
	if 554006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_554010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 554002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_554011(context, evt)
	if 554006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_554011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 554003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_554012(context, evt)
	if 554006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_554012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 554005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_554013(context, evt)
	if evt.param1 ~= 554013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_554013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 554006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end