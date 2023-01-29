-- 基础信息
local base_info = {
	group_id = 133307277
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 277001, monster_id = 28020604, pos = { x = -1158.638, y = 59.381, z = 5459.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 32 },
	{ config_id = 277002, monster_id = 26090901, pos = { x = -1158.093, y = 59.521, z = 5459.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 277003, monster_id = 28050106, pos = { x = -1158.559, y = 59.990, z = 5459.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "魔法生物", area_id = 32 },
	{ config_id = 277004, monster_id = 28060401, pos = { x = -1158.985, y = 59.307, z = 5459.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 277005, gadget_id = 70330266, pos = { x = -1158.127, y = 59.540, z = 5459.401 }, rot = { x = 3.736, y = 0.504, z = 15.360 }, level = 30, area_id = 32 },
	{ config_id = 277006, gadget_id = 70210101, pos = { x = -1158.698, y = 59.365, z = 5459.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 32 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 277012, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -1159.854, y = 61.001, z = 5458.436 }, area_id = 32 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1277007, name = "ANY_GADGET_DIE_277007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_277007", action = "action_EVENT_ANY_GADGET_DIE_277007" },
	-- 刷面具鼬
	{ config_id = 1277008, name = "ANY_GADGET_DIE_277008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_277008", action = "action_EVENT_ANY_GADGET_DIE_277008" },
	-- 刷岩蕈兽
	{ config_id = 1277009, name = "ANY_GADGET_DIE_277009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_277009", action = "action_EVENT_ANY_GADGET_DIE_277009" },
	-- 刷草晶蝶
	{ config_id = 1277010, name = "ANY_GADGET_DIE_277010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_277010", action = "action_EVENT_ANY_GADGET_DIE_277010" },
	-- 刷蝎子
	{ config_id = 1277011, name = "ANY_GADGET_DIE_277011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_277011", action = "action_EVENT_ANY_GADGET_DIE_277011" },
	-- 需要伏击怪食用这个
	{ config_id = 1277012, name = "ENTER_REGION_277012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_277012", action = "action_EVENT_ENTER_REGION_277012" }
}

-- 变量
variables = {
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
		gadgets = { 277005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 277005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_277007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 277005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_277008" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 277005 },
		regions = { 277012 },
		triggers = { "ANY_GADGET_DIE_277009", "ENTER_REGION_277012" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 277005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_277010" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 277005 },
		regions = { 277012 },
		triggers = { "ANY_GADGET_DIE_277011", "ENTER_REGION_277012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_277007(context, evt)
	if 277005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_277007(context, evt)
	-- 创建id为277006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 277006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_277008(context, evt)
	if 277005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_277008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 277001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_277009(context, evt)
	if 277005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_277009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 277002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_277010(context, evt)
	if 277005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_277010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 277003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_277011(context, evt)
	if 277005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_277011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 277004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_277012(context, evt)
	if evt.param1 ~= 277012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_277012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 277005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end