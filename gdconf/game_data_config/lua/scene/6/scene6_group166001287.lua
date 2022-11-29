-- 基础信息
local base_info = {
	group_id = 166001287
}

-- Trigger变量
local defs = {
	inner_region = 287003,
	outer_region = 287003,
	related_region = 287003,
	group_id = 166001287,
	bossConfigId = 287001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 287001, monster_id = 24010401, pos = { x = 725.859, y = 925.088, z = 1003.914 }, rot = { x = 0.000, y = 171.576, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 287002, gadget_id = 70210106, pos = { x = 736.155, y = 925.155, z = 1001.237 }, rot = { x = 0.000, y = 342.291, z = 0.000 }, level = 26, drop_tag = "遗迹巨蛇", showcutscene = true, persistent = true, boss_chest = {monster_config_id=287001, resin=40, life_time=600, take_num=100}, area_id = 300 },
	{ config_id = 287006, gadget_id = 70290233, pos = { x = 742.284, y = 925.145, z = 990.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, mark_flag = 999, area_id = 300 },
	{ config_id = 287008, gadget_id = 42401021, pos = { x = 710.596, y = 925.088, z = 1004.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, mark_flag = 1, area_id = 300 },
	{ config_id = 287009, gadget_id = 42401022, pos = { x = 714.351, y = 925.088, z = 1019.143 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, mark_flag = 2, area_id = 300 },
	{ config_id = 287010, gadget_id = 42401023, pos = { x = 747.729, y = 925.088, z = 1017.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, mark_flag = 3, area_id = 300 },
	{ config_id = 287011, gadget_id = 42401024, pos = { x = 742.284, y = 925.145, z = 990.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, mark_flag = 4, area_id = 300 },
	{ config_id = 287013, gadget_id = 42401020, pos = { x = 716.945, y = 925.088, z = 1001.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, mark_flag = 5, area_id = 300 },
	{ config_id = 287015, gadget_id = 42401020, pos = { x = 721.858, y = 925.088, z = 1014.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, mark_flag = 5, area_id = 300 },
	{ config_id = 287016, gadget_id = 42401020, pos = { x = 741.064, y = 925.074, z = 1013.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, mark_flag = 5, area_id = 300 },
	{ config_id = 287017, gadget_id = 42401020, pos = { x = 719.719, y = 925.088, z = 991.861 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, mark_flag = 5, area_id = 300 },
	{ config_id = 287018, gadget_id = 42401020, pos = { x = 738.133, y = 925.088, z = 993.234 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, mark_flag = 5, area_id = 300 },
	{ config_id = 287024, gadget_id = 70290233, pos = { x = 710.596, y = 925.088, z = 1004.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, mark_flag = 999, area_id = 300 },
	{ config_id = 287025, gadget_id = 70290233, pos = { x = 747.729, y = 925.088, z = 1017.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, mark_flag = 999, area_id = 300 },
	{ config_id = 287027, gadget_id = 70290233, pos = { x = 714.351, y = 925.088, z = 1019.143 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, mark_flag = 999, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 287003, shape = RegionShape.SPHERE, radius = 35, pos = { x = 730.845, y = 925.088, z = 1005.398 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1287004, name = "ANY_MONSTER_DIE_287004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_287004", action = "action_EVENT_ANY_MONSTER_DIE_287004", trigger_count = 0 },
	-- 清场
	{ config_id = 1287005, name = "LUA_NOTIFY_287005", event = EventType.EVENT_LUA_NOTIFY, source = "CLEARALL", condition = "", action = "action_EVENT_LUA_NOTIFY_287005", trigger_count = 0 },
	-- 刷黑泥
	{ config_id = 1287014, name = "LUA_NOTIFY_287014", event = EventType.EVENT_LUA_NOTIFY, source = "BOSSDIRT", condition = "", action = "action_EVENT_LUA_NOTIFY_287014", trigger_count = 0 },
	-- 3
	{ config_id = 1287019, name = "LUA_NOTIFY_287019", event = EventType.EVENT_LUA_NOTIFY, source = "CRYSTAL3", condition = "", action = "action_EVENT_LUA_NOTIFY_287019", trigger_count = 0 },
	-- 4
	{ config_id = 1287020, name = "LUA_NOTIFY_287020", event = EventType.EVENT_LUA_NOTIFY, source = "CRYSTAL4", condition = "", action = "action_EVENT_LUA_NOTIFY_287020", trigger_count = 0 },
	-- 5
	{ config_id = 1287021, name = "LUA_NOTIFY_287021", event = EventType.EVENT_LUA_NOTIFY, source = "CRYSTAL5", condition = "", action = "action_EVENT_LUA_NOTIFY_287021", trigger_count = 0 },
	-- 6
	{ config_id = 1287022, name = "LUA_NOTIFY_287022", event = EventType.EVENT_LUA_NOTIFY, source = "CRYSTAL6", condition = "", action = "action_EVENT_LUA_NOTIFY_287022", trigger_count = 0 },
	-- 7
	{ config_id = 1287023, name = "LUA_NOTIFY_287023", event = EventType.EVENT_LUA_NOTIFY, source = "CRYSTAL7", condition = "", action = "action_EVENT_LUA_NOTIFY_287023", trigger_count = 0 },
	{ config_id = 1287026, name = "ANY_GADGET_DIE_287026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_287026", action = "action_EVENT_ANY_GADGET_DIE_287026", trigger_count = 0 },
	{ config_id = 1287029, name = "ANY_GADGET_DIE_287029", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_287029", action = "action_EVENT_ANY_GADGET_DIE_287029", trigger_count = 0 },
	{ config_id = 1287030, name = "ANY_GADGET_DIE_287030", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_287030", action = "action_EVENT_ANY_GADGET_DIE_287030", trigger_count = 0 },
	{ config_id = 1287031, name = "ANY_GADGET_DIE_287031", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_287031", action = "action_EVENT_ANY_GADGET_DIE_287031", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 视野组
sight_groups = {
	{ 287001, 287008, 287009, 287010, 287011, 287006, 287024, 287025, 287027 }
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
		monsters = { 287001 },
		gadgets = { },
		regions = { 287003 },
		triggers = { "ANY_MONSTER_DIE_287004", "LUA_NOTIFY_287005", "LUA_NOTIFY_287014", "LUA_NOTIFY_287019", "LUA_NOTIFY_287020", "LUA_NOTIFY_287021", "LUA_NOTIFY_287022", "LUA_NOTIFY_287023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 287006, 287008, 287009, 287010, 287011, 287024, 287025, 287027 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_287026", "ANY_GADGET_DIE_287029", "ANY_GADGET_DIE_287030", "ANY_GADGET_DIE_287031" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 287013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 287015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 287016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 287018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 287017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_287004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_287004(context, evt)
	-- 创建id为287002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 287002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001287, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001287, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001287, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001287, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001287, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001287, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_287005(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001287, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001287, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001287, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001287, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001287, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001287, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_287014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001287, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_287019(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001287, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_287020(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001287, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_287021(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001287, 5)
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_287022(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001287, 6)
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_287023(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001287, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_287026(context, evt)
	if 287008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_287026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 287024 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_287029(context, evt)
	if 287011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_287029(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 287006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_287030(context, evt)
	if 287010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_287030(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 287025 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_287031(context, evt)
	if 287009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_287031(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 287027 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V2_0/SetPerformanceOptimizationWithRegion_V3.0"
require "V2_7/BW_NearBossAuthorityChange"