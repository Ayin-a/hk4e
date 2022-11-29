-- 基础信息
local base_info = {
	group_id = 144002061
}

-- DEFS_MISCS
local MonsterID = 61001

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 61001, monster_id = 25090101, pos = { x = 135.138, y = 121.217, z = -167.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 1, area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 61002, gadget_id = 70210106, pos = { x = 134.317, y = 121.217, z = -166.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "魔偶剑鬼", isOneoff = true, persistent = true, boss_chest = {monster_config_id=61001, resin=40, life_time=600, take_num=100}, area_id = 101 }
}

-- 区域
regions = {
	-- 进入区域时初始化时间轴
	{ config_id = 61004, shape = RegionShape.SPHERE, radius = 55, pos = { x = 134.065, y = 121.195, z = -166.610 }, area_id = 101 },
	-- 离开区域时1)关闭2164天气（轻轻雾）;2)停止时间轴
	{ config_id = 61005, shape = RegionShape.SPHERE, radius = 55, pos = { x = 134.065, y = 121.195, z = -166.610 }, area_id = 101 }
}

-- 触发器
triggers = {
	-- 怪物死亡时1)创建征讨之花;2)移除Suite2内的内容
	{ config_id = 1061003, name = "ANY_MONSTER_DIE_61003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_61003", action = "action_EVENT_ANY_MONSTER_DIE_61003", trigger_count = 0 },
	-- 进入区域时初始化时间轴
	{ config_id = 1061004, name = "ENTER_REGION_61004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_61004", action = "action_EVENT_ENTER_REGION_61004", trigger_count = 0, forbid_guest = false },
	-- 离开区域时1)关闭2164天气（轻轻雾）;2)停止时间轴
	{ config_id = 1061005, name = "LEAVE_REGION_61005", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_61005", action = "action_EVENT_LEAVE_REGION_61005", trigger_count = 0, forbid_guest = false },
	-- 征讨之花创建后将天气关闭
	{ config_id = 1061006, name = "GADGET_CREATE_61006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_61006", action = "action_EVENT_GADGET_CREATE_61006", trigger_count = 0 },
	-- 时间轴到期后激活2164天气
	{ config_id = 1061007, name = "TIME_AXIS_PASS_61007", event = EventType.EVENT_TIME_AXIS_PASS, source = "activateWeather", condition = "", action = "action_EVENT_TIME_AXIS_PASS_61007", trigger_count = 0 },
	-- 怪物创生时加载能够激活天气的enterregion
	{ config_id = 1061008, name = "ANY_MONSTER_LIVE_61008", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_61008", action = "action_EVENT_ANY_MONSTER_LIVE_61008", trigger_count = 0 }
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
		monsters = { 61001 },
		gadgets = { },
		regions = { 61005 },
		triggers = { "ANY_MONSTER_DIE_61003", "LEAVE_REGION_61005", "GADGET_CREATE_61006", "TIME_AXIS_PASS_61007", "ANY_MONSTER_LIVE_61008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 61004 },
		triggers = { "ENTER_REGION_61004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_61003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_61003(context, evt)
	-- 创建id为61002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 61002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002061, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_61004(context, evt)
	if evt.param1 ~= 61004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_61004(context, evt)
	-- 创建标识为"activateWeather"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "activateWeather", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_61005(context, evt)
	if evt.param1 ~=61005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) >0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_61005(context, evt)
	ScriptLib.SetWeatherAreaState(context, 2164, 0)
	
	-- 停止标识为"activateWeather"的时间轴
	ScriptLib.EndTimeAxis(context, "activateWeather")
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_61006(context, evt)
	if 61002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_61006(context, evt)
	
	ScriptLib.SetWeatherAreaState(context, 2164, 0)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_61007(context, evt)
	ScriptLib.SetWeatherAreaState(context, 2164, 1)
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_61008(context, evt)
	if 61001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_61008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002061, 2)
	
	return 0
end

require "V1_6/General_Watcher"