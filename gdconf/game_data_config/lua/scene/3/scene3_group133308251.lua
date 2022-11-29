-- 基础信息
local base_info = {
	group_id = 133308251
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 251001, monster_id = 28020604, pos = { x = -1754.945, y = 214.324, z = 4618.351 }, rot = { x = 0.000, y = 176.279, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 26 },
	{ config_id = 251002, monster_id = 26090901, pos = { x = -1754.893, y = 213.748, z = 4618.588 }, rot = { x = 0.000, y = 176.279, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 251003, monster_id = 28050106, pos = { x = -1754.724, y = 214.595, z = 4618.616 }, rot = { x = 0.000, y = 176.279, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 },
	{ config_id = 251005, monster_id = 28060401, pos = { x = -1754.944, y = 213.737, z = 4618.515 }, rot = { x = 0.000, y = 176.279, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 251006, gadget_id = 70330266, pos = { x = -1754.881, y = 214.115, z = 4618.550 }, rot = { x = 352.671, y = 176.478, z = 356.894 }, level = 32, area_id = 26 },
	{ config_id = 251007, gadget_id = 70210101, pos = { x = -1754.909, y = 213.817, z = 4618.704 }, rot = { x = 0.000, y = 176.279, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 251013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -1755.155, y = 214.457, z = 4618.255 }, area_id = 26 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1251008, name = "ANY_GADGET_DIE_251008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_251008", action = "action_EVENT_ANY_GADGET_DIE_251008" },
	-- 刷面具鼬
	{ config_id = 1251009, name = "ANY_GADGET_DIE_251009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_251009", action = "action_EVENT_ANY_GADGET_DIE_251009" },
	-- 刷岩蕈兽
	{ config_id = 1251010, name = "ANY_GADGET_DIE_251010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_251010", action = "action_EVENT_ANY_GADGET_DIE_251010" },
	-- 刷草晶蝶
	{ config_id = 1251011, name = "ANY_GADGET_DIE_251011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_251011", action = "action_EVENT_ANY_GADGET_DIE_251011" },
	-- 刷蝎子
	{ config_id = 1251012, name = "ANY_GADGET_DIE_251012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_251012", action = "action_EVENT_ANY_GADGET_DIE_251012" },
	-- 需要伏击怪食用这个
	{ config_id = 1251013, name = "ENTER_REGION_251013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_251013", action = "action_EVENT_ENTER_REGION_251013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 251004, monster_id = 28050106, pos = { x = -1755.192, y = 214.628, z = 4618.457 }, rot = { x = 0.000, y = 176.279, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 }
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
		gadgets = { 251006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 251006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_251008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 251006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_251009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 251006 },
		regions = { 251013 },
		triggers = { "ANY_GADGET_DIE_251010", "ENTER_REGION_251013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 251006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_251011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 251006 },
		regions = { 251013 },
		triggers = { "ANY_GADGET_DIE_251012", "ENTER_REGION_251013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_251008(context, evt)
	if 251006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_251008(context, evt)
	-- 创建id为251007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 251007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_251009(context, evt)
	if 251006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_251009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 251001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_251010(context, evt)
	if 251006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_251010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 251002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_251011(context, evt)
	if 251006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_251011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 251003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_251012(context, evt)
	if 251006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_251012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 251005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_251013(context, evt)
	if evt.param1 ~= 251013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_251013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 251006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end