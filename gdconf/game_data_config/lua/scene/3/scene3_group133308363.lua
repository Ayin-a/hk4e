-- 基础信息
local base_info = {
	group_id = 133308363
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 363001, monster_id = 28020604, pos = { x = -1250.713, y = 124.025, z = 4616.411 }, rot = { x = 0.000, y = 358.962, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 26 },
	{ config_id = 363002, monster_id = 26090901, pos = { x = -1250.693, y = 123.461, z = 4616.142 }, rot = { x = 0.000, y = 358.962, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 363003, monster_id = 28050106, pos = { x = -1250.985, y = 124.275, z = 4616.171 }, rot = { x = 0.000, y = 358.962, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 },
	{ config_id = 363005, monster_id = 28060401, pos = { x = -1250.638, y = 123.454, z = 4616.211 }, rot = { x = 0.000, y = 358.962, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 363006, gadget_id = 70330266, pos = { x = -1250.756, y = 123.820, z = 4616.204 }, rot = { x = 3.652, y = 359.153, z = 8.281 }, level = 32, area_id = 26 },
	{ config_id = 363007, gadget_id = 70210101, pos = { x = -1250.693, y = 123.539, z = 4616.030 }, rot = { x = 3.652, y = 359.153, z = 8.281 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 363013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -1250.521, y = 124.183, z = 4616.506 }, area_id = 26 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1363008, name = "ANY_GADGET_DIE_363008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_363008", action = "action_EVENT_ANY_GADGET_DIE_363008" },
	-- 刷面具鼬
	{ config_id = 1363009, name = "ANY_GADGET_DIE_363009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_363009", action = "action_EVENT_ANY_GADGET_DIE_363009" },
	-- 刷岩蕈兽
	{ config_id = 1363010, name = "ANY_GADGET_DIE_363010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_363010", action = "action_EVENT_ANY_GADGET_DIE_363010" },
	-- 刷草晶蝶
	{ config_id = 1363011, name = "ANY_GADGET_DIE_363011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_363011", action = "action_EVENT_ANY_GADGET_DIE_363011" },
	-- 刷蝎子
	{ config_id = 1363012, name = "ANY_GADGET_DIE_363012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_363012", action = "action_EVENT_ANY_GADGET_DIE_363012" },
	-- 需要伏击怪食用这个
	{ config_id = 1363013, name = "ENTER_REGION_363013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_363013", action = "action_EVENT_ENTER_REGION_363013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 363004, monster_id = 28050106, pos = { x = -1250.519, y = 124.368, z = 4616.315 }, rot = { x = 0.000, y = 358.962, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 }
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
		gadgets = { 363006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 363006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_363008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 363006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_363009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 363006 },
		regions = { 363013 },
		triggers = { "ANY_GADGET_DIE_363010", "ENTER_REGION_363013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 363006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_363011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 363006 },
		regions = { 363013 },
		triggers = { "ANY_GADGET_DIE_363012", "ENTER_REGION_363013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_363008(context, evt)
	if 363006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_363008(context, evt)
	-- 创建id为363007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 363007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_363009(context, evt)
	if 363006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_363009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 363001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_363010(context, evt)
	if 363006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_363010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 363002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_363011(context, evt)
	if 363006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_363011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 363003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_363012(context, evt)
	if 363006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_363012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 363005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_363013(context, evt)
	if evt.param1 ~= 363013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_363013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 363006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end