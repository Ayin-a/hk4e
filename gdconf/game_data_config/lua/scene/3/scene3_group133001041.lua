-- 基础信息
local base_info = {
	group_id = 133001041
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 41001, monster_id = 21020101, pos = { x = 1412.118, y = 238.223, z = -1454.466 }, rot = { x = 0.000, y = 178.692, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	{ config_id = 41002, monster_id = 21010401, pos = { x = 1408.966, y = 238.157, z = -1456.072 }, rot = { x = 0.000, y = 174.992, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	{ config_id = 41003, monster_id = 21010401, pos = { x = 1415.680, y = 237.492, z = -1456.535 }, rot = { x = 0.000, y = 212.625, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 41006, gadget_id = 70300118, pos = { x = 1411.323, y = 235.069, z = -1472.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1041004, name = "GROUP_LOAD_41004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_41004" },
	{ config_id = 1041005, name = "ANY_MONSTER_DIE_41005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_41005", action = "action_EVENT_ANY_MONSTER_DIE_41005" }
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
		monsters = { 41001, 41002, 41003 },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_41004", "ANY_MONSTER_DIE_41005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 41006 },
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

-- 触发操作
function action_EVENT_GROUP_LOAD_41004(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1410.829,y=235.239,z=-1472.144}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 70501061, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_41005(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133001041) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_41005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7050106finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001041, 2)
	
	return 0
end