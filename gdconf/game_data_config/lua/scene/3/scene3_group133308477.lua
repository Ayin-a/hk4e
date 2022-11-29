-- 基础信息
local base_info = {
	group_id = 133308477
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 477001, monster_id = 28020604, pos = { x = -1564.280, y = 226.977, z = 4148.902 }, rot = { x = 0.000, y = 235.617, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 26 },
	{ config_id = 477002, monster_id = 26090901, pos = { x = -1564.049, y = 226.640, z = 4148.978 }, rot = { x = 0.000, y = 235.617, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 477003, monster_id = 28050106, pos = { x = -1563.938, y = 226.973, z = 4148.847 }, rot = { x = 0.000, y = 235.617, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 },
	{ config_id = 477005, monster_id = 28060401, pos = { x = -1564.137, y = 226.629, z = 4148.984 }, rot = { x = 0.000, y = 235.617, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 477006, gadget_id = 70330266, pos = { x = -1564.074, y = 226.792, z = 4148.955 }, rot = { x = 3.018, y = 235.659, z = 359.406 }, level = 32, area_id = 26 },
	{ config_id = 477007, gadget_id = 70210101, pos = { x = -1563.958, y = 226.709, z = 4149.051 }, rot = { x = 0.000, y = 235.617, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 477013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -1564.469, y = 226.985, z = 4149.033 }, area_id = 26 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1477008, name = "ANY_GADGET_DIE_477008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_477008", action = "action_EVENT_ANY_GADGET_DIE_477008" },
	-- 刷面具鼬
	{ config_id = 1477009, name = "ANY_GADGET_DIE_477009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_477009", action = "action_EVENT_ANY_GADGET_DIE_477009" },
	-- 刷岩蕈兽
	{ config_id = 1477010, name = "ANY_GADGET_DIE_477010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_477010", action = "action_EVENT_ANY_GADGET_DIE_477010" },
	-- 刷草晶蝶
	{ config_id = 1477011, name = "ANY_GADGET_DIE_477011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_477011", action = "action_EVENT_ANY_GADGET_DIE_477011" },
	-- 刷蝎子
	{ config_id = 1477012, name = "ANY_GADGET_DIE_477012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_477012", action = "action_EVENT_ANY_GADGET_DIE_477012" },
	-- 需要伏击怪食用这个
	{ config_id = 1477013, name = "ENTER_REGION_477013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_477013", action = "action_EVENT_ENTER_REGION_477013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 477004, monster_id = 28050106, pos = { x = -1564.314, y = 226.993, z = 4149.168 }, rot = { x = 0.000, y = 235.617, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 }
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
		gadgets = { 477006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 477006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_477008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 477006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_477009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 477006 },
		regions = { 477013 },
		triggers = { "ANY_GADGET_DIE_477010", "ENTER_REGION_477013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 477006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_477011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 477006 },
		regions = { 477013 },
		triggers = { "ANY_GADGET_DIE_477012", "ENTER_REGION_477013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_477008(context, evt)
	if 477006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_477008(context, evt)
	-- 创建id为477007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 477007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_477009(context, evt)
	if 477006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_477009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 477001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_477010(context, evt)
	if 477006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_477010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 477002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_477011(context, evt)
	if 477006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_477011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 477003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_477012(context, evt)
	if 477006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_477012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 477005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_477013(context, evt)
	if evt.param1 ~= 477013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_477013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 477006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end