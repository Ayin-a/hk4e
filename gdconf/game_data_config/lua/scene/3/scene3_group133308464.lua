-- 基础信息
local base_info = {
	group_id = 133308464
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 464001, monster_id = 28020604, pos = { x = -1988.886, y = 140.166, z = 5061.153 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 27 },
	{ config_id = 464002, monster_id = 26090901, pos = { x = -1988.955, y = 140.185, z = 5060.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 464003, monster_id = 28050106, pos = { x = -1989.125, y = 140.209, z = 5060.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 27 },
	{ config_id = 464005, monster_id = 28060401, pos = { x = -1988.899, y = 140.175, z = 5060.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 464006, gadget_id = 70330266, pos = { x = -1989.153, y = 139.961, z = 5061.023 }, rot = { x = 7.649, y = 19.124, z = 334.435 }, level = 32, area_id = 27 },
	{ config_id = 464007, gadget_id = 70210101, pos = { x = -1988.946, y = 140.840, z = 5060.804 }, rot = { x = 0.000, y = 341.244, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
	-- 需要伏击怪食用这个
	{ config_id = 464013, shape = RegionShape.SPHERE, radius = 2.35, pos = { x = -1988.672, y = 140.209, z = 5061.235 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 刷调查点
	{ config_id = 1464008, name = "ANY_GADGET_DIE_464008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_464008", action = "action_EVENT_ANY_GADGET_DIE_464008" },
	-- 刷面具鼬
	{ config_id = 1464009, name = "ANY_GADGET_DIE_464009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_464009", action = "action_EVENT_ANY_GADGET_DIE_464009" },
	-- 刷岩蕈兽
	{ config_id = 1464010, name = "ANY_GADGET_DIE_464010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_464010", action = "action_EVENT_ANY_GADGET_DIE_464010" },
	-- 刷草晶蝶
	{ config_id = 1464011, name = "ANY_GADGET_DIE_464011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_464011", action = "action_EVENT_ANY_GADGET_DIE_464011" },
	-- 刷蝎子
	{ config_id = 1464012, name = "ANY_GADGET_DIE_464012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_464012", action = "action_EVENT_ANY_GADGET_DIE_464012" },
	-- 需要伏击怪食用这个
	{ config_id = 1464013, name = "ENTER_REGION_464013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_464013", action = "action_EVENT_ENTER_REGION_464013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 464004, monster_id = 28050106, pos = { x = -1988.647, y = 140.067, z = 5061.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "魔法生物", area_id = 27 }
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
		gadgets = { 464006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 464006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_464008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 464006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_464009" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 464006 },
		regions = { 464013 },
		triggers = { "ANY_GADGET_DIE_464010", "ENTER_REGION_464013" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 464006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_464011" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 464006 },
		regions = { 464013 },
		triggers = { "ANY_GADGET_DIE_464012", "ENTER_REGION_464013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_464008(context, evt)
	if 464006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_464008(context, evt)
	-- 创建id为464007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 464007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_464009(context, evt)
	if 464006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_464009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 464001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_464010(context, evt)
	if 464006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_464010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 464002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_464011(context, evt)
	if 464006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_464011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 464003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_464012(context, evt)
	if 464006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_464012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 464005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_464013(context, evt)
	if evt.param1 ~= 464013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_464013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 464006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end