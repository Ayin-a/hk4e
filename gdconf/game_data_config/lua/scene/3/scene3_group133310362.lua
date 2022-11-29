-- 基础信息
local base_info = {
	group_id = 133310362
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 362001, monster_id = 28020604, pos = { x = -2540.050, y = 123.743, z = 4680.804 }, rot = { x = 0.000, y = 311.217, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 28 },
	{ config_id = 362002, monster_id = 26090901, pos = { x = -2540.050, y = 123.743, z = 4680.804 }, rot = { x = 0.000, y = 311.217, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 28 },
	{ config_id = 362003, monster_id = 28050106, pos = { x = -2540.050, y = 123.743, z = 4680.804 }, rot = { x = 0.000, y = 311.217, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 28 },
	{ config_id = 362005, monster_id = 28060401, pos = { x = -2540.050, y = 123.743, z = 4680.804 }, rot = { x = 0.000, y = 311.217, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 362006, gadget_id = 70330266, pos = { x = -2540.086, y = 123.627, z = 4680.822 }, rot = { x = 340.949, y = 305.327, z = 357.120 }, level = 32, area_id = 28 },
	{ config_id = 362007, gadget_id = 70210101, pos = { x = -2540.050, y = 123.743, z = 4680.804 }, rot = { x = 338.666, y = 305.530, z = 353.344 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 28 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 362013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -2540.050, y = 123.743, z = 4680.804 }, area_id = 28 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1362008, name = "ANY_GADGET_DIE_362008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_362008", action = "action_EVENT_ANY_GADGET_DIE_362008" },
	-- 刷面具鼬
	{ config_id = 1362009, name = "ANY_GADGET_DIE_362009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_362009", action = "action_EVENT_ANY_GADGET_DIE_362009" },
	-- 刷岩蕈兽
	{ config_id = 1362010, name = "ANY_GADGET_DIE_362010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_362010", action = "action_EVENT_ANY_GADGET_DIE_362010" },
	-- 刷草晶蝶
	{ config_id = 1362011, name = "ANY_GADGET_DIE_362011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_362011", action = "action_EVENT_ANY_GADGET_DIE_362011" },
	-- 刷蝎子
	{ config_id = 1362012, name = "ANY_GADGET_DIE_362012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_362012", action = "action_EVENT_ANY_GADGET_DIE_362012" },
	-- 需要伏击怪食用这个
	{ config_id = 1362013, name = "ENTER_REGION_362013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_362013", action = "action_EVENT_ENTER_REGION_362013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 362004, monster_id = 28050106, pos = { x = -2540.050, y = 123.743, z = 4680.804 }, rot = { x = 0.000, y = 311.217, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 28 }
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
		gadgets = { 362006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 362006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_362008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 362006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_362009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 362006 },
		regions = { 362013 },
		triggers = { "ANY_GADGET_DIE_362010", "ENTER_REGION_362013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 362006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_362011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 362006 },
		regions = { 362013 },
		triggers = { "ANY_GADGET_DIE_362012", "ENTER_REGION_362013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_362008(context, evt)
	if 362006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_362008(context, evt)
	-- 创建id为362007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 362007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_362009(context, evt)
	if 362006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_362009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 362001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_362010(context, evt)
	if 362006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_362010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 362002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_362011(context, evt)
	if 362006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_362011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 362003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_362012(context, evt)
	if 362006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_362012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 362005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_362013(context, evt)
	if evt.param1 ~= 362013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_362013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 362006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end