-- 基础信息
local base_info = {
	group_id = 133003605
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 605001, monster_id = 21020201, pos = { x = 2287.486, y = 229.867, z = -1214.390 }, rot = { x = 0.000, y = 132.226, z = 0.000 }, level = 5, drop_id = 1000100, isElite = true, area_id = 1 },
	{ config_id = 605002, monster_id = 21020101, pos = { x = 2289.857, y = 229.790, z = -1209.452 }, rot = { x = 0.000, y = 142.248, z = 0.000 }, level = 5, drop_id = 1000100, isElite = true, area_id = 1 },
	{ config_id = 605003, monster_id = 21010701, pos = { x = 2282.957, y = 230.284, z = -1211.466 }, rot = { x = 0.000, y = 109.991, z = 0.000 }, level = 5, drop_id = 1000100, area_id = 1 },
	{ config_id = 605004, monster_id = 21010701, pos = { x = 2286.010, y = 229.639, z = -1207.630 }, rot = { x = 0.000, y = 115.916, z = 0.000 }, level = 5, drop_id = 1000100, area_id = 1 },
	{ config_id = 605005, monster_id = 21010301, pos = { x = 2284.052, y = 229.990, z = -1209.167 }, rot = { x = 0.000, y = 128.597, z = 0.000 }, level = 5, drop_id = 1000100, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1605006, name = "ANY_MONSTER_DIE_605006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_605006", action = "action_EVENT_ANY_MONSTER_DIE_605006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "gadgetNum", value = 0, no_refresh = false },
	{ config_id = 2, name = "QQNum", value = 0, no_refresh = false }
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
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 605001, 605002, 605003, 605004, 605005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_605006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_605006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_605006(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2310,y=230,z=-1219}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110152, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330036051") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end