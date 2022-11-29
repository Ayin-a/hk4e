-- 基础信息
local base_info = {
	group_id = 133308417
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 417001, monster_id = 28020604, pos = { x = -1798.560, y = 362.199, z = 4419.923 }, rot = { x = 0.000, y = 204.590, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 26 },
	{ config_id = 417002, monster_id = 26090901, pos = { x = -1798.400, y = 361.623, z = 4420.107 }, rot = { x = 0.000, y = 204.590, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 417003, monster_id = 28050106, pos = { x = -1798.238, y = 362.471, z = 4420.053 }, rot = { x = 0.000, y = 204.590, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 },
	{ config_id = 417005, monster_id = 28060401, pos = { x = -1798.480, y = 361.612, z = 4420.067 }, rot = { x = 0.000, y = 204.590, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 417006, gadget_id = 70330266, pos = { x = -1798.409, y = 361.990, z = 4420.067 }, rot = { x = 348.833, y = 204.904, z = 356.788 }, level = 32, area_id = 26 },
	{ config_id = 417007, gadget_id = 70210101, pos = { x = -1798.361, y = 361.693, z = 4420.217 }, rot = { x = 0.000, y = 204.590, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 417013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -1798.789, y = 362.333, z = 4419.938 }, area_id = 26 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1417008, name = "ANY_GADGET_DIE_417008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_417008", action = "action_EVENT_ANY_GADGET_DIE_417008" },
	-- 刷面具鼬
	{ config_id = 1417009, name = "ANY_GADGET_DIE_417009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_417009", action = "action_EVENT_ANY_GADGET_DIE_417009" },
	-- 刷岩蕈兽
	{ config_id = 1417010, name = "ANY_GADGET_DIE_417010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_417010", action = "action_EVENT_ANY_GADGET_DIE_417010" },
	-- 刷草晶蝶
	{ config_id = 1417011, name = "ANY_GADGET_DIE_417011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_417011", action = "action_EVENT_ANY_GADGET_DIE_417011" },
	-- 刷蝎子
	{ config_id = 1417012, name = "ANY_GADGET_DIE_417012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_417012", action = "action_EVENT_ANY_GADGET_DIE_417012" },
	-- 需要伏击怪食用这个
	{ config_id = 1417013, name = "ENTER_REGION_417013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_417013", action = "action_EVENT_ENTER_REGION_417013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 417004, monster_id = 28050106, pos = { x = -1798.726, y = 362.503, z = 4420.134 }, rot = { x = 0.000, y = 204.590, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 26 }
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
		gadgets = { 417006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 417006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_417008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 417006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_417009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 417006 },
		regions = { 417013 },
		triggers = { "ANY_GADGET_DIE_417010", "ENTER_REGION_417013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 417006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_417011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 417006 },
		regions = { 417013 },
		triggers = { "ANY_GADGET_DIE_417012", "ENTER_REGION_417013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_417008(context, evt)
	if 417006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_417008(context, evt)
	-- 创建id为417007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 417007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_417009(context, evt)
	if 417006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_417009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 417001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_417010(context, evt)
	if 417006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_417010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 417002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_417011(context, evt)
	if 417006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_417011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 417003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_417012(context, evt)
	if 417006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_417012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 417005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_417013(context, evt)
	if evt.param1 ~= 417013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_417013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 417006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end