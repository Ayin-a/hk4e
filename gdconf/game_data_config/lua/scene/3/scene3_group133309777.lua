-- 基础信息
local base_info = {
	group_id = 133309777
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 777001, monster_id = 28020604, pos = { x = -2682.422, y = 175.547, z = 5410.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 27 },
	{ config_id = 777002, monster_id = 26090901, pos = { x = -2682.490, y = 174.971, z = 5410.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 777003, monster_id = 28050106, pos = { x = -2682.661, y = 175.818, z = 5410.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 27 },
	{ config_id = 777005, monster_id = 28060401, pos = { x = -2682.435, y = 174.960, z = 5410.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 777006, gadget_id = 70330266, pos = { x = -2682.501, y = 175.337, z = 5410.379 }, rot = { x = 359.123, y = 0.088, z = 348.517 }, level = 32, area_id = 27 },
	{ config_id = 777007, gadget_id = 70210101, pos = { x = -2682.481, y = 175.040, z = 5410.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 777013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -2682.208, y = 175.680, z = 5410.698 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1777008, name = "ANY_GADGET_DIE_777008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_777008", action = "action_EVENT_ANY_GADGET_DIE_777008" },
	-- 刷面具鼬
	{ config_id = 1777009, name = "ANY_GADGET_DIE_777009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_777009", action = "action_EVENT_ANY_GADGET_DIE_777009" },
	-- 刷岩蕈兽
	{ config_id = 1777010, name = "ANY_GADGET_DIE_777010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_777010", action = "action_EVENT_ANY_GADGET_DIE_777010" },
	-- 刷草晶蝶
	{ config_id = 1777011, name = "ANY_GADGET_DIE_777011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_777011", action = "action_EVENT_ANY_GADGET_DIE_777011" },
	-- 刷蝎子
	{ config_id = 1777012, name = "ANY_GADGET_DIE_777012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_777012", action = "action_EVENT_ANY_GADGET_DIE_777012" },
	-- 需要伏击怪食用这个
	{ config_id = 1777013, name = "ENTER_REGION_777013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_777013", action = "action_EVENT_ENTER_REGION_777013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 777004, monster_id = 28050106, pos = { x = -2682.183, y = 175.851, z = 5410.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 27 }
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
		gadgets = { 777006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 777006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_777008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 777006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_777009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 777006 },
		regions = { 777013 },
		triggers = { "ANY_GADGET_DIE_777010", "ENTER_REGION_777013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 777006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_777011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 777006 },
		regions = { 777013 },
		triggers = { "ANY_GADGET_DIE_777012", "ENTER_REGION_777013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_777008(context, evt)
	if 777006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_777008(context, evt)
	-- 创建id为777007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 777007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_777009(context, evt)
	if 777006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_777009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 777001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_777010(context, evt)
	if 777006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_777010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 777002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_777011(context, evt)
	if 777006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_777011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 777003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_777012(context, evt)
	if 777006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_777012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 777005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_777013(context, evt)
	if evt.param1 ~= 777013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_777013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 777006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end