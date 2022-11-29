-- 基础信息
local base_info = {
	group_id = 133307103
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 103001, monster_id = 28020604, pos = { x = -2029.335, y = 150.956, z = 5741.031 }, rot = { x = 0.000, y = 345.780, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 27 },
	{ config_id = 103002, monster_id = 26090901, pos = { x = -2029.391, y = 151.020, z = 5740.812 }, rot = { x = 0.000, y = 0.507, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 103003, monster_id = 28050106, pos = { x = -2029.543, y = 151.111, z = 5740.806 }, rot = { x = 0.000, y = 1.237, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 27 },
	{ config_id = 103005, monster_id = 28060401, pos = { x = -2029.346, y = 150.994, z = 5740.874 }, rot = { x = 0.000, y = 357.657, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 103006, gadget_id = 70330266, pos = { x = -2029.888, y = 150.305, z = 5740.697 }, rot = { x = 358.675, y = 7.238, z = 356.228 }, level = 32, area_id = 27 },
	{ config_id = 103007, gadget_id = 70210101, pos = { x = -2029.688, y = 150.512, z = 5740.727 }, rot = { x = 0.587, y = 7.181, z = 329.751 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 103013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -2029.177, y = 150.859, z = 5741.072 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1103008, name = "ANY_GADGET_DIE_103008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_103008", action = "action_EVENT_ANY_GADGET_DIE_103008" },
	-- 刷面具鼬
	{ config_id = 1103009, name = "ANY_GADGET_DIE_103009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_103009", action = "action_EVENT_ANY_GADGET_DIE_103009" },
	-- 刷岩蕈兽
	{ config_id = 1103010, name = "ANY_GADGET_DIE_103010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_103010", action = "action_EVENT_ANY_GADGET_DIE_103010" },
	-- 刷草晶蝶
	{ config_id = 1103011, name = "ANY_GADGET_DIE_103011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_103011", action = "action_EVENT_ANY_GADGET_DIE_103011" },
	-- 刷蝎子
	{ config_id = 1103012, name = "ANY_GADGET_DIE_103012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_103012", action = "action_EVENT_ANY_GADGET_DIE_103012" },
	-- 需要伏击怪食用这个
	{ config_id = 1103013, name = "ENTER_REGION_103013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_103013", action = "action_EVENT_ENTER_REGION_103013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 103004, monster_id = 28050106, pos = { x = -2029.159, y = 150.882, z = 5740.873 }, rot = { x = 0.000, y = 357.902, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 27 }
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
		gadgets = { 103006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 103006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_103008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 103006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_103009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 103006 },
		regions = { 103013 },
		triggers = { "ANY_GADGET_DIE_103010", "ENTER_REGION_103013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 103006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_103011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 103006 },
		regions = { 103013 },
		triggers = { "ANY_GADGET_DIE_103012", "ENTER_REGION_103013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_103008(context, evt)
	if 103006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_103008(context, evt)
	-- 创建id为103007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 103007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_103009(context, evt)
	if 103006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_103009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 103001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_103010(context, evt)
	if 103006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_103010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 103002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_103011(context, evt)
	if 103006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_103011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 103003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_103012(context, evt)
	if 103006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_103012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 103005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_103013(context, evt)
	if evt.param1 ~= 103013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_103013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 103006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end