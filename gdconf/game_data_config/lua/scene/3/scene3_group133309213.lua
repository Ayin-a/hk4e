-- 基础信息
local base_info = {
	group_id = 133309213
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 213001, monster_id = 28020604, pos = { x = -2724.457, y = 197.281, z = 5596.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 27 },
	{ config_id = 213002, monster_id = 26090901, pos = { x = -2724.525, y = 197.305, z = 5596.582 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 213003, monster_id = 28050106, pos = { x = -2724.696, y = 197.315, z = 5596.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "魔法生物", area_id = 27 },
	{ config_id = 213005, monster_id = 28060401, pos = { x = -2724.469, y = 197.287, z = 5596.651 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 213006, gadget_id = 70330266, pos = { x = -2724.534, y = 196.280, z = 5596.622 }, rot = { x = 356.434, y = 0.139, z = 355.533 }, level = 30, area_id = 27 },
	{ config_id = 213007, gadget_id = 70210101, pos = { x = -2724.516, y = 197.254, z = 5596.466 }, rot = { x = 337.605, y = 2.984, z = 345.011 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 213013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -2724.242, y = 196.623, z = 5596.897 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1213008, name = "ANY_GADGET_DIE_213008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_213008", action = "action_EVENT_ANY_GADGET_DIE_213008" },
	-- 刷面具鼬
	{ config_id = 1213009, name = "ANY_GADGET_DIE_213009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_213009", action = "action_EVENT_ANY_GADGET_DIE_213009" },
	-- 刷岩蕈兽
	{ config_id = 1213010, name = "ANY_GADGET_DIE_213010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_213010", action = "action_EVENT_ANY_GADGET_DIE_213010" },
	-- 刷草晶蝶
	{ config_id = 1213011, name = "ANY_GADGET_DIE_213011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_213011", action = "action_EVENT_ANY_GADGET_DIE_213011" },
	-- 刷蝎子
	{ config_id = 1213012, name = "ANY_GADGET_DIE_213012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_213012", action = "action_EVENT_ANY_GADGET_DIE_213012" },
	-- 需要伏击怪食用这个
	{ config_id = 1213013, name = "ENTER_REGION_213013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_213013", action = "action_EVENT_ENTER_REGION_213013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 213004, monster_id = 28050106, pos = { x = -2724.218, y = 197.174, z = 5596.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "魔法生物", area_id = 27 }
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
		gadgets = { 213006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 213006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_213008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 213006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_213009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 213006 },
		regions = { 213013 },
		triggers = { "ANY_GADGET_DIE_213010", "ENTER_REGION_213013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 213006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_213011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 213006 },
		regions = { 213013 },
		triggers = { "ANY_GADGET_DIE_213012", "ENTER_REGION_213013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_213008(context, evt)
	if 213006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_213008(context, evt)
	-- 创建id为213007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 213007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_213009(context, evt)
	if 213006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_213009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 213001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_213010(context, evt)
	if 213006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_213010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 213002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_213011(context, evt)
	if 213006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_213011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 213003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_213012(context, evt)
	if 213006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_213012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 213005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_213013(context, evt)
	if evt.param1 ~= 213013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_213013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 213006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end