-- 基础信息
local base_info = {
	group_id = 133308399
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 399001, monster_id = 28020604, pos = { x = -1881.326, y = 207.226, z = 4724.390 }, rot = { x = 0.000, y = 196.827, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 26 },
	{ config_id = 399002, monster_id = 26090901, pos = { x = -1881.193, y = 207.225, z = 4724.593 }, rot = { x = 0.000, y = 196.827, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 399003, monster_id = 28050106, pos = { x = -1881.024, y = 207.197, z = 4724.560 }, rot = { x = 0.000, y = 196.827, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 },
	{ config_id = 399005, monster_id = 28060401, pos = { x = -1881.267, y = 207.232, z = 4724.543 }, rot = { x = 0.000, y = 196.827, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 399006, gadget_id = 70330266, pos = { x = -1881.197, y = 207.222, z = 4724.551 }, rot = { x = 0.321, y = 197.060, z = 349.903 }, level = 32, area_id = 26 },
	{ config_id = 399007, gadget_id = 70210101, pos = { x = -1881.168, y = 207.230, z = 4724.707 }, rot = { x = 0.000, y = 196.827, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 399013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -1881.555, y = 207.259, z = 4724.373 }, area_id = 26 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1399008, name = "ANY_GADGET_DIE_399008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_399008", action = "action_EVENT_ANY_GADGET_DIE_399008" },
	-- 刷面具鼬
	{ config_id = 1399009, name = "ANY_GADGET_DIE_399009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_399009", action = "action_EVENT_ANY_GADGET_DIE_399009" },
	-- 刷岩蕈兽
	{ config_id = 1399010, name = "ANY_GADGET_DIE_399010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_399010", action = "action_EVENT_ANY_GADGET_DIE_399010" },
	-- 刷草晶蝶
	{ config_id = 1399011, name = "ANY_GADGET_DIE_399011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_399011", action = "action_EVENT_ANY_GADGET_DIE_399011" },
	-- 刷蝎子
	{ config_id = 1399012, name = "ANY_GADGET_DIE_399012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_399012", action = "action_EVENT_ANY_GADGET_DIE_399012" },
	-- 需要伏击怪食用这个
	{ config_id = 1399013, name = "ENTER_REGION_399013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_399013", action = "action_EVENT_ENTER_REGION_399013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 399004, monster_id = 28050106, pos = { x = -1881.519, y = 207.273, z = 4724.575 }, rot = { x = 0.000, y = 196.827, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 }
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
		gadgets = { 399006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 399006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_399008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 399006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_399009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 399006 },
		regions = { 399013 },
		triggers = { "ANY_GADGET_DIE_399010", "ENTER_REGION_399013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 399006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_399011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 399006 },
		regions = { 399013 },
		triggers = { "ANY_GADGET_DIE_399012", "ENTER_REGION_399013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_399008(context, evt)
	if 399006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_399008(context, evt)
	-- 创建id为399007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 399007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_399009(context, evt)
	if 399006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_399009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 399001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_399010(context, evt)
	if 399006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_399010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 399002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_399011(context, evt)
	if 399006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_399011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 399003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_399012(context, evt)
	if 399006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_399012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 399005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_399013(context, evt)
	if evt.param1 ~= 399013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_399013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 399006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end