-- 基础信息
local base_info = {
	group_id = 133307133
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 133001, monster_id = 28020604, pos = { x = -1906.360, y = 126.173, z = 5071.623 }, rot = { x = 0.000, y = 10.258, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 26 },
	{ config_id = 133002, monster_id = 26090901, pos = { x = -1906.398, y = 126.188, z = 5071.580 }, rot = { x = 0.000, y = 10.288, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 133003, monster_id = 28050106, pos = { x = -1906.486, y = 126.222, z = 5071.514 }, rot = { x = 0.000, y = 10.182, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 },
	{ config_id = 133005, monster_id = 28060401, pos = { x = -1906.371, y = 126.177, z = 5071.603 }, rot = { x = 0.000, y = 10.344, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 133006, gadget_id = 70330266, pos = { x = -1906.921, y = 125.348, z = 5071.112 }, rot = { x = 329.217, y = 358.726, z = 356.042 }, level = 32, area_id = 26 },
	{ config_id = 133007, gadget_id = 70210101, pos = { x = -1906.398, y = 126.188, z = 5071.572 }, rot = { x = 354.229, y = 345.342, z = 339.401 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 133013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -1906.256, y = 126.134, z = 5071.691 }, area_id = 26 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1133008, name = "ANY_GADGET_DIE_133008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_133008", action = "action_EVENT_ANY_GADGET_DIE_133008" },
	-- 刷面具鼬
	{ config_id = 1133009, name = "ANY_GADGET_DIE_133009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_133009", action = "action_EVENT_ANY_GADGET_DIE_133009" },
	-- 刷岩蕈兽
	{ config_id = 1133010, name = "ANY_GADGET_DIE_133010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_133010", action = "action_EVENT_ANY_GADGET_DIE_133010" },
	-- 刷草晶蝶
	{ config_id = 1133011, name = "ANY_GADGET_DIE_133011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_133011", action = "action_EVENT_ANY_GADGET_DIE_133011" },
	-- 刷蝎子
	{ config_id = 1133012, name = "ANY_GADGET_DIE_133012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_133012", action = "action_EVENT_ANY_GADGET_DIE_133012" },
	-- 需要伏击怪食用这个
	{ config_id = 1133013, name = "ENTER_REGION_133013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_133013", action = "action_EVENT_ENTER_REGION_133013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 133004, monster_id = 28050106, pos = { x = -1906.258, y = 126.133, z = 5071.677 }, rot = { x = 0.000, y = 12.034, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 }
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
		gadgets = { 133006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 133006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_133008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 133006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_133009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 133006 },
		regions = { 133013 },
		triggers = { "ANY_GADGET_DIE_133010", "ENTER_REGION_133013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 133006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_133011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 133006 },
		regions = { 133013 },
		triggers = { "ANY_GADGET_DIE_133012", "ENTER_REGION_133013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_133008(context, evt)
	if 133006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_133008(context, evt)
	-- 创建id为133007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 133007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_133009(context, evt)
	if 133006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_133009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 133001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_133010(context, evt)
	if 133006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_133010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 133002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_133011(context, evt)
	if 133006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_133011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 133003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_133012(context, evt)
	if 133006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_133012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 133005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_133013(context, evt)
	if evt.param1 ~= 133013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_133013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 133006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end