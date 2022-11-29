-- 基础信息
local base_info = {
	group_id = 133308460
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 460001, monster_id = 28020604, pos = { x = -1749.737, y = 257.942, z = 4474.220 }, rot = { x = 0.000, y = 233.442, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 26 },
	{ config_id = 460002, monster_id = 26090901, pos = { x = -1749.509, y = 257.886, z = 4474.305 }, rot = { x = 0.000, y = 233.442, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 460003, monster_id = 28050106, pos = { x = -1749.393, y = 257.913, z = 4474.178 }, rot = { x = 0.000, y = 233.442, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 },
	{ config_id = 460005, monster_id = 28060401, pos = { x = -1749.597, y = 257.896, z = 4474.308 }, rot = { x = 0.000, y = 233.442, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 460006, gadget_id = 70330266, pos = { x = -1749.536, y = 257.899, z = 4474.273 }, rot = { x = 343.648, y = 234.182, z = 349.512 }, level = 32, area_id = 26 },
	{ config_id = 460007, gadget_id = 70210101, pos = { x = -1749.421, y = 257.850, z = 4474.381 }, rot = { x = 0.000, y = 233.442, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 460013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -1749.931, y = 257.926, z = 4474.344 }, area_id = 26 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1460008, name = "ANY_GADGET_DIE_460008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_460008", action = "action_EVENT_ANY_GADGET_DIE_460008" },
	-- 刷面具鼬
	{ config_id = 1460009, name = "ANY_GADGET_DIE_460009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_460009", action = "action_EVENT_ANY_GADGET_DIE_460009" },
	-- 刷岩蕈兽
	{ config_id = 1460010, name = "ANY_GADGET_DIE_460010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_460010", action = "action_EVENT_ANY_GADGET_DIE_460010" },
	-- 刷草晶蝶
	{ config_id = 1460011, name = "ANY_GADGET_DIE_460011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_460011", action = "action_EVENT_ANY_GADGET_DIE_460011" },
	-- 刷蝎子
	{ config_id = 1460012, name = "ANY_GADGET_DIE_460012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_460012", action = "action_EVENT_ANY_GADGET_DIE_460012" },
	-- 需要伏击怪食用这个
	{ config_id = 1460013, name = "ENTER_REGION_460013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_460013", action = "action_EVENT_ENTER_REGION_460013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 460004, monster_id = 28050106, pos = { x = -1749.781, y = 257.861, z = 4474.485 }, rot = { x = 0.000, y = 233.442, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 }
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
		gadgets = { 460006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 460006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_460008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 460006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_460009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 460006 },
		regions = { 460013 },
		triggers = { "ANY_GADGET_DIE_460010", "ENTER_REGION_460013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 460006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_460011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 460006 },
		regions = { 460013 },
		triggers = { "ANY_GADGET_DIE_460012", "ENTER_REGION_460013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_460008(context, evt)
	if 460006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_460008(context, evt)
	-- 创建id为460007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 460007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_460009(context, evt)
	if 460006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_460009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 460001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_460010(context, evt)
	if 460006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_460010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 460002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_460011(context, evt)
	if 460006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_460011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 460003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_460012(context, evt)
	if 460006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_460012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 460005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_460013(context, evt)
	if evt.param1 ~= 460013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_460013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 460006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end