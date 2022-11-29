-- 基础信息
local base_info = {
	group_id = 133213555
}

-- DEFS_MISCS
local defs = {

        group_id = 133213555,

        --触发开始/接续挑战的region
        start_region_id = 555018,

        -- 挑战index
        ChallengeIndex = 3002,

        --玩法限定region，出圈触发暂离
        level_region_id = 555018,

        --挑战id
        challenge_id = 2003006,

        --目标捕捉数  
        taget_score = 2,

        --目标捕捉数，配在陈列室表里，每个营地对应各自的陈列室ID
        exhibition_id = 10801006,

        -- 需要消灭多少个怪物牢笼才可以交互
        Monster_Count = 5,

        --目标笼子
        --格式为[笼configID] = {老狗configID, 新狗configID}
        target_id = {
                [555012] = {555001, 555010},
                [555013] = {555002, 555011},
        },
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[555001] = { config_id = 555001, monster_id = 28020403, pos = { x = -3648.157, y = 201.163, z = -3346.681 }, rot = { x = 0.000, y = 249.380, z = 0.000 }, level = 25, drop_tag = "走兽", disableWander = true, affix = { 1039 }, isOneoff = true, pose_id = 4, area_id = 12 },
	[555002] = { config_id = 555002, monster_id = 28020403, pos = { x = -3659.495, y = 201.053, z = -3340.927 }, rot = { x = 0.000, y = 166.739, z = 0.000 }, level = 25, drop_tag = "走兽", disableWander = true, affix = { 1039 }, isOneoff = true, pose_id = 4, area_id = 12 },
	[555003] = { config_id = 555003, monster_id = 25020201, pos = { x = -3651.819, y = 200.776, z = -3350.826 }, rot = { x = 0.000, y = 169.056, z = 0.000 }, level = 25, drop_tag = "盗宝团", isOneoff = true, area_id = 12 },
	[555004] = { config_id = 555004, monster_id = 25010201, pos = { x = -3656.125, y = 200.766, z = -3348.805 }, rot = { x = 0.000, y = 145.935, z = 0.000 }, level = 25, drop_tag = "盗宝团", disableWander = true, isOneoff = true, pose_id = 9004, area_id = 12 },
	[555005] = { config_id = 555005, monster_id = 23050101, pos = { x = -3657.339, y = 200.369, z = -3354.358 }, rot = { x = 0.000, y = 279.527, z = 0.000 }, level = 25, drop_tag = "藏镜侍女", disableWander = true, isOneoff = true, area_id = 12 },
	[555007] = { config_id = 555007, monster_id = 25100101, pos = { x = -3645.910, y = 200.941, z = -3352.817 }, rot = { x = 0.000, y = 264.010, z = 0.000 }, level = 25, drop_tag = "高阶武士", isOneoff = true, pose_id = 1, area_id = 12 },
	[555009] = { config_id = 555009, monster_id = 25100201, pos = { x = -3646.091, y = 200.655, z = -3355.769 }, rot = { x = 0.000, y = 264.010, z = 0.000 }, level = 25, drop_tag = "高阶武士", isOneoff = true, pose_id = 1, area_id = 12 },
	[555010] = { config_id = 555010, monster_id = 28020403, pos = { x = -3648.157, y = 201.163, z = -3346.681 }, rot = { x = 0.000, y = 249.380, z = 0.000 }, level = 25, drop_tag = "走兽", affix = { 5131 }, isOneoff = true, pose_id = 5, area_id = 12 },
	[555011] = { config_id = 555011, monster_id = 28020403, pos = { x = -3659.495, y = 201.048, z = -3340.927 }, rot = { x = 0.000, y = 166.739, z = 0.000 }, level = 25, drop_tag = "走兽", affix = { 5131 }, isOneoff = true, pose_id = 5, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[555012] = { config_id = 555012, gadget_id = 70310143, pos = { x = -3648.357, y = 201.040, z = -3346.708 }, rot = { x = 0.000, y = 244.680, z = 0.000 }, level = 27, state = GadgetState.Action03, persistent = true, interact_id = 64, area_id = 12 },
	[555013] = { config_id = 555013, gadget_id = 70310143, pos = { x = -3659.212, y = 200.897, z = -3341.030 }, rot = { x = 0.000, y = 171.439, z = 0.000 }, level = 27, state = GadgetState.Action03, persistent = true, interact_id = 64, area_id = 12 },
	[555014] = { config_id = 555014, gadget_id = 70310006, pos = { x = -3655.156, y = 200.731, z = -3349.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	[555015] = { config_id = 555015, gadget_id = 70220048, pos = { x = -3652.109, y = 201.199, z = -3341.932 }, rot = { x = 0.000, y = 54.308, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	[555016] = { config_id = 555016, gadget_id = 70220048, pos = { x = -3650.232, y = 201.206, z = -3342.299 }, rot = { x = 0.000, y = 28.304, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	[555017] = { config_id = 555017, gadget_id = 70220014, pos = { x = -3651.838, y = 201.072, z = -3343.675 }, rot = { x = 0.000, y = 54.308, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 12 },
	[555021] = { config_id = 555021, gadget_id = 70300093, pos = { x = -3656.663, y = 201.034, z = -3341.825 }, rot = { x = 0.000, y = 335.886, z = 0.000 }, level = 1, area_id = 12 },
	[555022] = { config_id = 555022, gadget_id = 70300094, pos = { x = -3654.244, y = 201.152, z = -3341.311 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 }
}

-- 区域
regions = {
	[555018] = { config_id = 555018, shape = RegionShape.SPHERE, radius = 40, pos = { x = -3653.794, y = 200.827, z = -3348.082 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1555019, name = "GROUP_LOAD_555019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_555019", trigger_count = 0 },
	{ config_id = 1555020, name = "ANY_MONSTER_DIE_555020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_555020", action = "action_EVENT_ANY_MONSTER_DIE_555020" },
	{ config_id = 1555024, name = "MONSTER_BATTLE_555024", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_555024", action = "action_EVENT_MONSTER_BATTLE_555024" },
	-- sneak_first=0 潜行没完成
	{ config_id = 1555025, name = "ANY_MONSTER_DIE_555025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_555025", action = "action_EVENT_ANY_MONSTER_DIE_555025" },
	-- sneak_first=1 潜行 完成
	{ config_id = 1555026, name = "ANY_MONSTER_DIE_555026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_555026", action = "action_EVENT_ANY_MONSTER_DIE_555026" },
	{ config_id = 1555027, name = "ANY_MONSTER_DIE_555027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_555027", action = "action_EVENT_ANY_MONSTER_DIE_555027" }
}

-- 变量
variables = {
	{ config_id = 1, name = "sneak_first", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 555006, monster_id = 25080101, pos = { x = -3658.705, y = 200.393, z = -3353.819 }, rot = { x = 0.000, y = 129.987, z = 0.000 }, level = 25, drop_tag = "浪人武士", disableWander = true, isOneoff = true, pose_id = 1, area_id = 12 },
		{ config_id = 555008, monster_id = 25080201, pos = { x = -3643.325, y = 200.975, z = -3353.512 }, rot = { x = 0.000, y = 264.010, z = 0.000 }, level = 25, drop_tag = "浪人武士", isOneoff = true, pose_id = 1, area_id = 12 },
		{ config_id = 555023, monster_id = 23030101, pos = { x = -3657.632, y = 200.375, z = -3354.221 }, rot = { x = 0.000, y = 291.801, z = 0.000 }, level = 1, drop_tag = "召唤师", disableWander = true, isOneoff = true, area_id = 12 }
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
		-- description = 牢笼和营地逻辑,
		monsters = { 555001, 555002 },
		gadgets = { 555012, 555013 },
		regions = { 555018 },
		triggers = { "GROUP_LOAD_555019", "MONSTER_BATTLE_555024", "ANY_MONSTER_DIE_555025", "ANY_MONSTER_DIE_555026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 营地摆设物件,
		monsters = { },
		gadgets = { 555014, 555015, 555016, 555017, 555021, 555022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪,
		monsters = { 555003, 555004, 555005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_555020" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二波怪,
		monsters = { 555007, 555009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_555027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_555019(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213555, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213555, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_555020(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_555020(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213555, 4)
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_555024(context, evt)
	if 555003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_555024(context, evt)
	-- 调用提示id为 32210206 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32210206) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_555025(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"sneak_first"为0
	if ScriptLib.GetGroupVariableValue(context, "sneak_first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_555025(context, evt)
	-- 调用提示id为 32210208 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32210208) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "fight_first" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "fight_first", 1, 133213554) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_555026(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"sneak_first"为1
	if ScriptLib.GetGroupVariableValue(context, "sneak_first") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_555026(context, evt)
	-- 调用提示id为 32210209 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32210209) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "fight_first" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "fight_first", 1, 133213555) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_555027(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_555027(context, evt)
	-- 调用提示id为 400106 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400106) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V2_3/HachiBattle"