-- 基础信息
local base_info = {
	group_id = 133104913
}

-- Trigger变量
local defs = {
	gadget_1 = 913006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 913001, monster_id = 21010201, pos = { x = 492.414, y = 214.937, z = 467.565 }, rot = { x = 0.000, y = 112.755, z = 0.000 }, level = 19, drop_id = 1000100, disableWander = true, area_id = 9 },
	{ config_id = 913002, monster_id = 21010201, pos = { x = 494.654, y = 214.610, z = 462.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_id = 1000100, disableWander = true, area_id = 9 },
	{ config_id = 913003, monster_id = 21020301, pos = { x = 490.537, y = 215.014, z = 464.251 }, rot = { x = 0.000, y = 73.929, z = 0.000 }, level = 19, drop_id = 1000100, disableWander = true, area_id = 9 },
	{ config_id = 913004, monster_id = 21020201, pos = { x = 497.490, y = 214.536, z = 469.691 }, rot = { x = 358.346, y = 235.980, z = 0.000 }, level = 19, drop_id = 1000100, disableWander = true, area_id = 9 },
	{ config_id = 913005, monster_id = 21030201, pos = { x = 488.679, y = 215.089, z = 470.429 }, rot = { x = 0.000, y = 131.354, z = 0.000 }, level = 19, drop_id = 1000100, disableWander = true, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 913006, shape = RegionShape.SPHERE, radius = 25, pos = { x = 494.491, y = 214.628, z = 465.434 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1913006, name = "ENTER_REGION_913006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_913006", action = "", trigger_count = 0 },
	{ config_id = 1913007, name = "ANY_MONSTER_DIE_913007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_913007", action = "action_EVENT_ANY_MONSTER_DIE_913007", trigger_count = 0 }
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
		monsters = { },
		gadgets = { },
		regions = { 913006 },
		triggers = { "ENTER_REGION_913006" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 913001, 913002, 913003, 913004, 913005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_913007" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_913006(context, evt)
	if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(context, evt.target_eid, 2211606) == QuestState.UNFINISHED and evt.param1 == defs.gadget_1 then
		return true
	end
	return false
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_913007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_913007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331049131") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end