-- 基础信息
local base_info = {
	group_id = 133220074
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 74002, monster_id = 25080201, pos = { x = -2661.187, y = 210.359, z = -4205.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 11 },
	{ config_id = 74004, monster_id = 25080201, pos = { x = -2664.103, y = 210.124, z = -4202.377 }, rot = { x = 0.000, y = 37.907, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 11 },
	{ config_id = 74005, monster_id = 25080201, pos = { x = -2667.534, y = 210.216, z = -4197.864 }, rot = { x = 0.000, y = 68.529, z = 0.000 }, level = 26, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 11 },
	{ config_id = 74009, monster_id = 25080201, pos = { x = -2695.888, y = 211.574, z = -4192.926 }, rot = { x = 0.000, y = 88.160, z = 0.000 }, level = 26, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 74010, monster_id = 25080201, pos = { x = -2697.156, y = 211.726, z = -4189.740 }, rot = { x = 0.000, y = 89.208, z = 0.000 }, level = 26, drop_id = 1000100, pose_id = 1, area_id = 11 },
	{ config_id = 74011, monster_id = 25070101, pos = { x = -2691.635, y = 211.064, z = -4190.774 }, rot = { x = 0.000, y = 93.561, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 },
	{ config_id = 74012, monster_id = 25010501, pos = { x = -2691.131, y = 211.003, z = -4188.286 }, rot = { x = 0.000, y = 102.920, z = 0.000 }, level = 26, drop_id = 1000100, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 74001, gadget_id = 70710475, pos = { x = -2662.719, y = 210.745, z = -4207.614 }, rot = { x = 357.900, y = 160.644, z = 10.114 }, level = 1, area_id = 11 },
	{ config_id = 74003, gadget_id = 70710475, pos = { x = -2667.417, y = 210.594, z = -4201.644 }, rot = { x = 355.448, y = 292.497, z = 352.366 }, level = 1, area_id = 11 },
	{ config_id = 74014, gadget_id = 70710475, pos = { x = -2661.461, y = 210.756, z = -4209.094 }, rot = { x = 0.251, y = 316.134, z = 349.970 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1074006, name = "ANY_MONSTER_DIE_74006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_74006", action = "action_EVENT_ANY_MONSTER_DIE_74006" },
	{ config_id = 1074008, name = "ANY_MONSTER_DIE_74008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_74008", action = "action_EVENT_ANY_MONSTER_DIE_74008" },
	{ config_id = 1074013, name = "QUEST_FINISH_74013", event = EventType.EVENT_QUEST_FINISH, source = "1200518", condition = "", action = "action_EVENT_QUEST_FINISH_74013" }
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
		gadgets = { 74001, 74003, 74014 },
		regions = { },
		triggers = { "QUEST_FINISH_74013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 74002, 74004, 74005 },
		gadgets = { 74001, 74003, 74014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_74006", "QUEST_FINISH_74013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 74009, 74010, 74011, 74012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_74008" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_ANY_MONSTER_DIE_74006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_74006(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220074, 3)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2665,y=210,z=-4199}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400004, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_74008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_74008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332200741") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_74013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220074, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end