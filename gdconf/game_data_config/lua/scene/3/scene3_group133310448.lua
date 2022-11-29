-- 基础信息
local base_info = {
	group_id = 133310448
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 448001, monster_id = 28020604, pos = { x = -2315.348, y = 230.206, z = 4475.704 }, rot = { x = 0.000, y = 163.118, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 26 },
	{ config_id = 448002, monster_id = 26090901, pos = { x = -2315.352, y = 230.197, z = 4475.945 }, rot = { x = 0.000, y = 163.118, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 448003, monster_id = 28050106, pos = { x = -2315.193, y = 230.217, z = 4476.015 }, rot = { x = 0.000, y = 163.118, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 },
	{ config_id = 448005, monster_id = 28060401, pos = { x = -2315.385, y = 230.195, z = 4475.864 }, rot = { x = 0.000, y = 163.118, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 448006, gadget_id = 70330266, pos = { x = -2315.335, y = 230.201, z = 4475.910 }, rot = { x = 359.295, y = 162.709, z = 6.215 }, level = 32, area_id = 26 },
	{ config_id = 448007, gadget_id = 70210101, pos = { x = -2315.392, y = 230.188, z = 4476.055 }, rot = { x = 0.000, y = 163.118, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 448013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -2315.530, y = 230.185, z = 4475.563 }, area_id = 26 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1448008, name = "ANY_GADGET_DIE_448008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_448008", action = "action_EVENT_ANY_GADGET_DIE_448008" },
	-- 刷面具鼬
	{ config_id = 1448009, name = "ANY_GADGET_DIE_448009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_448009", action = "action_EVENT_ANY_GADGET_DIE_448009" },
	-- 刷岩蕈兽
	{ config_id = 1448010, name = "ANY_GADGET_DIE_448010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_448010", action = "action_EVENT_ANY_GADGET_DIE_448010" },
	-- 刷草晶蝶
	{ config_id = 1448011, name = "ANY_GADGET_DIE_448011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_448011", action = "action_EVENT_ANY_GADGET_DIE_448011" },
	-- 刷蝎子
	{ config_id = 1448012, name = "ANY_GADGET_DIE_448012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_448012", action = "action_EVENT_ANY_GADGET_DIE_448012" },
	-- 需要伏击怪食用这个
	{ config_id = 1448013, name = "ENTER_REGION_448013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_448013", action = "action_EVENT_ENTER_REGION_448013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 448004, monster_id = 28050106, pos = { x = -2315.612, y = 230.167, z = 4475.754 }, rot = { x = 0.000, y = 163.118, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 }
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
		gadgets = { 448006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 448006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_448008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 448006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_448009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 448006 },
		regions = { 448013 },
		triggers = { "ANY_GADGET_DIE_448010", "ENTER_REGION_448013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 448006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_448011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 448006 },
		regions = { 448013 },
		triggers = { "ANY_GADGET_DIE_448012", "ENTER_REGION_448013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_448008(context, evt)
	if 448006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_448008(context, evt)
	-- 创建id为448007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 448007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_448009(context, evt)
	if 448006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_448009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 448001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_448010(context, evt)
	if 448006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_448010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 448002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_448011(context, evt)
	if 448006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_448011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 448003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_448012(context, evt)
	if 448006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_448012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 448005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_448013(context, evt)
	if evt.param1 ~= 448013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_448013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 448006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end