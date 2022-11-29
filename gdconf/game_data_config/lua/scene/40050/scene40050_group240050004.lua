-- 基础信息
local base_info = {
	group_id = 240050004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 25080101, pos = { x = -13.468, y = 54.563, z = -75.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1004 },
	{ config_id = 4003, monster_id = 25080201, pos = { x = -12.988, y = 54.566, z = -70.950 }, rot = { x = 0.000, y = 182.515, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1004 },
	{ config_id = 4008, monster_id = 25080201, pos = { x = 3.223, y = 76.921, z = -90.182 }, rot = { x = 0.238, y = 164.711, z = 359.398 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1 },
	{ config_id = 4009, monster_id = 25080301, pos = { x = -0.194, y = 54.500, z = -82.267 }, rot = { x = 0.000, y = 153.254, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4004, gadget_id = 70710450, pos = { x = -13.126, y = 54.563, z = -73.223 }, rot = { x = 0.000, y = 4.875, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 4006, gadget_id = 70710414, pos = { x = 1.587, y = 54.596, z = -84.624 }, rot = { x = 345.531, y = 2.104, z = 358.577 }, level = 1 },
	{ config_id = 4007, gadget_id = 70710415, pos = { x = -0.169, y = 54.415, z = -84.024 }, rot = { x = 0.000, y = 243.341, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 4010, shape = RegionShape.SPHERE, radius = 3, pos = { x = 3.119, y = 75.474, z = -85.607 } },
	{ config_id = 4012, shape = RegionShape.SPHERE, radius = 3, pos = { x = 14.867, y = 65.395, z = -62.577 } }
}

-- 触发器
triggers = {
	{ config_id = 1004010, name = "ENTER_REGION_4010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4010", action = "action_EVENT_ENTER_REGION_4010" },
	{ config_id = 1004012, name = "ENTER_REGION_4012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4012", action = "action_EVENT_ENTER_REGION_4012" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 4002, monster_id = 23010301, pos = { x = -1.463, y = 76.890, z = -97.119 }, rot = { x = 0.000, y = 228.394, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true }
	},
	regions = {
		{ config_id = 4011, shape = RegionShape.SPHERE, radius = 3, pos = { x = -4.324, y = 77.282, z = -100.922 } }
	},
	triggers = {
		{ config_id = 1004011, name = "ENTER_REGION_4011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4011", action = "action_EVENT_ENTER_REGION_4011" }
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
	rand_suite = false
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
		monsters = { 4001, 4003, 4009 },
		gadgets = { 4004, 4006, 4007 },
		regions = { 4010, 4012 },
		triggers = { "ENTER_REGION_4010", "ENTER_REGION_4012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_4010(context, evt)
	if evt.param1 ~= 4010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4012(context, evt)
	if evt.param1 ~= 4012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4009, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end