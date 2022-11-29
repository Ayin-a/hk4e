-- 基础信息
local base_info = {
	group_id = 133307104
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 104001, monster_id = 28020604, pos = { x = -1894.234, y = 144.734, z = 5590.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 27 },
	{ config_id = 104002, monster_id = 26090901, pos = { x = -1894.303, y = 144.158, z = 5590.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 104003, monster_id = 28050106, pos = { x = -1894.474, y = 145.006, z = 5590.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 27 },
	{ config_id = 104005, monster_id = 28060401, pos = { x = -1894.247, y = 144.147, z = 5590.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 104006, gadget_id = 70330266, pos = { x = -1894.279, y = 144.524, z = 5590.180 }, rot = { x = 356.424, y = 0.028, z = 359.105 }, level = 32, area_id = 27 },
	{ config_id = 104007, gadget_id = 70210101, pos = { x = -1894.294, y = 144.589, z = 5590.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 104013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -1894.020, y = 144.868, z = 5590.455 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1104008, name = "ANY_GADGET_DIE_104008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_104008", action = "action_EVENT_ANY_GADGET_DIE_104008" },
	-- 刷面具鼬
	{ config_id = 1104009, name = "ANY_GADGET_DIE_104009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_104009", action = "action_EVENT_ANY_GADGET_DIE_104009" },
	-- 刷岩蕈兽
	{ config_id = 1104010, name = "ANY_GADGET_DIE_104010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_104010", action = "action_EVENT_ANY_GADGET_DIE_104010" },
	-- 刷草晶蝶
	{ config_id = 1104011, name = "ANY_GADGET_DIE_104011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_104011", action = "action_EVENT_ANY_GADGET_DIE_104011" },
	-- 刷蝎子
	{ config_id = 1104012, name = "ANY_GADGET_DIE_104012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_104012", action = "action_EVENT_ANY_GADGET_DIE_104012" },
	-- 需要伏击怪食用这个
	{ config_id = 1104013, name = "ENTER_REGION_104013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_104013", action = "action_EVENT_ENTER_REGION_104013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 104004, monster_id = 28050106, pos = { x = -1893.995, y = 145.038, z = 5590.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 27 }
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
		gadgets = { 104006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 104006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_104008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 104006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_104009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 104006 },
		regions = { 104013 },
		triggers = { "ANY_GADGET_DIE_104010", "ENTER_REGION_104013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 104006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_104011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 104006 },
		regions = { 104013 },
		triggers = { "ANY_GADGET_DIE_104012", "ENTER_REGION_104013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_104008(context, evt)
	if 104006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_104008(context, evt)
	-- 创建id为104007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 104007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_104009(context, evt)
	if 104006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_104009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 104001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_104010(context, evt)
	if 104006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_104010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 104002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_104011(context, evt)
	if 104006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_104011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 104003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_104012(context, evt)
	if 104006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_104012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 104005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_104013(context, evt)
	if evt.param1 ~= 104013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_104013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 104006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end