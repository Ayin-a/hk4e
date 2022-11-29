-- 基础信息
local base_info = {
	group_id = 133307095
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 95001, monster_id = 28020604, pos = { x = -2227.431, y = 168.942, z = 4694.114 }, rot = { x = 0.000, y = 356.353, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 26 },
	{ config_id = 95002, monster_id = 26090901, pos = { x = -2227.719, y = 169.066, z = 4693.736 }, rot = { x = 0.000, y = 356.353, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 95003, monster_id = 28050106, pos = { x = -2227.520, y = 168.990, z = 4693.962 }, rot = { x = 0.000, y = 356.353, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 },
	{ config_id = 95005, monster_id = 28060401, pos = { x = -2227.676, y = 169.047, z = 4693.795 }, rot = { x = 0.000, y = 356.353, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 95006, gadget_id = 70330266, pos = { x = -2227.076, y = 168.994, z = 4693.591 }, rot = { x = 23.415, y = 354.422, z = 352.417 }, level = 32, area_id = 26 },
	{ config_id = 95007, gadget_id = 70210101, pos = { x = -2227.674, y = 169.088, z = 4693.643 }, rot = { x = 15.977, y = 356.353, z = 334.436 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 95013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -2227.015, y = 168.896, z = 4693.267 }, area_id = 26 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1095008, name = "ANY_GADGET_DIE_95008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_95008", action = "action_EVENT_ANY_GADGET_DIE_95008" },
	-- 刷面具鼬
	{ config_id = 1095009, name = "ANY_GADGET_DIE_95009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_95009", action = "action_EVENT_ANY_GADGET_DIE_95009" },
	-- 刷岩蕈兽
	{ config_id = 1095010, name = "ANY_GADGET_DIE_95010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_95010", action = "action_EVENT_ANY_GADGET_DIE_95010" },
	-- 刷草晶蝶
	{ config_id = 1095011, name = "ANY_GADGET_DIE_95011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_95011", action = "action_EVENT_ANY_GADGET_DIE_95011" },
	-- 刷蝎子
	{ config_id = 1095012, name = "ANY_GADGET_DIE_95012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_95012", action = "action_EVENT_ANY_GADGET_DIE_95012" },
	-- 需要伏击怪食用这个
	{ config_id = 1095013, name = "ENTER_REGION_95013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_95013", action = "action_EVENT_ENTER_REGION_95013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 95004, monster_id = 28050106, pos = { x = -2227.081, y = 168.929, z = 4694.065 }, rot = { x = 0.000, y = 356.353, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 }
	},
	gadgets = {
		{ config_id = 95014, gadget_id = 70210101, pos = { x = -2239.048, y = 174.067, z = 4683.064 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 26 }
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
		gadgets = { 95006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 95006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_95008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 95006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_95009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 95006 },
		regions = { 95013 },
		triggers = { "ANY_GADGET_DIE_95010", "ENTER_REGION_95013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 95006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_95011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 95006 },
		regions = { 95013 },
		triggers = { "ANY_GADGET_DIE_95012", "ENTER_REGION_95013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_95008(context, evt)
	if 95006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_95008(context, evt)
	-- 创建id为95007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 95007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_95009(context, evt)
	if 95006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_95009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 95001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_95010(context, evt)
	if 95006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_95010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 95002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_95011(context, evt)
	if 95006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_95011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 95003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_95012(context, evt)
	if 95006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_95012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 95005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_95013(context, evt)
	if evt.param1 ~= 95013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_95013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 95006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end