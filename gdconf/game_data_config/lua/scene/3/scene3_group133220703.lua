-- 基础信息
local base_info = {
	group_id = 133220703
}

-- DEFS_MISCS
local defs = {

        group_id = 133220703,

        --触发开始/接续挑战的region
        start_region_id = 703018,

        -- 挑战index
        ChallengeIndex = 2002,

        --玩法限定region，出圈触发暂离
        level_region_id = 703018,

        --挑战id
        challenge_id = 2003006,

        --目标开笼子数
        taget_score = 2,

        -- 需要消灭多少个怪物牢笼才可以交互
        Monster_Count = 7,

        --目标笼子
        --格式为[笼configID] = {老狗configID, 新狗configID}
        target_id = {
                [703012] = {703001, 703010},
                [703013] = {703002, 703011},
        },
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[703001] = { config_id = 703001, monster_id = 28020403, pos = { x = -2838.098, y = 200.224, z = -4567.679 }, rot = { x = 0.000, y = 8.299, z = 0.000 }, level = 25, drop_tag = "走兽", disableWander = true, affix = { 1039 }, isOneoff = true, pose_id = 4, area_id = 11 },
	[703002] = { config_id = 703002, monster_id = 28020403, pos = { x = -2830.420, y = 200.549, z = -4546.971 }, rot = { x = 0.000, y = 210.718, z = 0.000 }, level = 25, drop_tag = "走兽", disableWander = true, affix = { 1039 }, isOneoff = true, pose_id = 4, area_id = 11 },
	[703003] = { config_id = 703003, monster_id = 25080101, pos = { x = -2832.120, y = 200.716, z = -4565.763 }, rot = { x = 0.000, y = 297.108, z = 0.000 }, level = 25, drop_tag = "浪人武士", isOneoff = true, pose_id = 1, area_id = 11 },
	[703004] = { config_id = 703004, monster_id = 25080101, pos = { x = -2830.930, y = 200.243, z = -4552.290 }, rot = { x = 0.000, y = 199.343, z = 0.000 }, level = 25, drop_tag = "浪人武士", isOneoff = true, pose_id = 1, area_id = 11 },
	[703005] = { config_id = 703005, monster_id = 25080201, pos = { x = -2835.880, y = 200.174, z = -4561.888 }, rot = { x = 0.000, y = 271.886, z = 0.000 }, level = 25, drop_tag = "浪人武士", disableWander = true, isOneoff = true, pose_id = 1004, area_id = 11 },
	[703006] = { config_id = 703006, monster_id = 25080301, pos = { x = -2828.400, y = 200.753, z = -4568.649 }, rot = { x = 0.000, y = 269.329, z = 0.000 }, level = 25, drop_tag = "浪人武士", disableWander = true, isOneoff = true, pose_id = 1004, area_id = 11 },
	[703007] = { config_id = 703007, monster_id = 25080101, pos = { x = -2853.066, y = 200.000, z = -4563.981 }, rot = { x = 0.000, y = 101.505, z = 0.000 }, level = 25, drop_tag = "浪人武士", isOneoff = true, pose_id = 1, area_id = 11 },
	[703008] = { config_id = 703008, monster_id = 25080101, pos = { x = -2854.165, y = 200.000, z = -4566.641 }, rot = { x = 0.000, y = 101.505, z = 0.000 }, level = 25, drop_tag = "浪人武士", isOneoff = true, pose_id = 1, area_id = 11 },
	[703009] = { config_id = 703009, monster_id = 25100101, pos = { x = -2848.420, y = 200.085, z = -4551.745 }, rot = { x = 0.000, y = 112.745, z = 0.000 }, level = 25, drop_tag = "高阶武士", isOneoff = true, pose_id = 1, area_id = 11 },
	[703010] = { config_id = 703010, monster_id = 28020403, pos = { x = -2838.098, y = 200.224, z = -4567.679 }, rot = { x = 0.000, y = 8.299, z = 0.000 }, level = 25, drop_tag = "走兽", affix = { 5131 }, isOneoff = true, pose_id = 5, area_id = 11 },
	[703011] = { config_id = 703011, monster_id = 28020403, pos = { x = -2830.420, y = 200.549, z = -4546.971 }, rot = { x = 0.000, y = 210.718, z = 0.000 }, level = 25, drop_tag = "走兽", affix = { 5131 }, isOneoff = true, pose_id = 5, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[703012] = { config_id = 703012, gadget_id = 70310143, pos = { x = -2838.123, y = 200.044, z = -4567.312 }, rot = { x = 0.000, y = 359.979, z = 0.000 }, level = 27, state = GadgetState.Action03, persistent = true, interact_id = 64, area_id = 11 },
	[703013] = { config_id = 703013, gadget_id = 70310143, pos = { x = -2830.550, y = 200.361, z = -4547.084 }, rot = { x = 0.000, y = 215.418, z = 0.000 }, level = 27, state = GadgetState.Action03, persistent = true, interact_id = 64, area_id = 11 },
	[703014] = { config_id = 703014, gadget_id = 70310006, pos = { x = -2833.172, y = 200.249, z = -4556.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	[703015] = { config_id = 703015, gadget_id = 70220048, pos = { x = -2826.636, y = 200.643, z = -4552.039 }, rot = { x = 0.000, y = 54.308, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 11 },
	[703016] = { config_id = 703016, gadget_id = 70220048, pos = { x = -2820.498, y = 200.085, z = -4572.037 }, rot = { x = 0.000, y = 71.754, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 11 },
	[703017] = { config_id = 703017, gadget_id = 70220050, pos = { x = -2820.555, y = 200.196, z = -4570.467 }, rot = { x = 0.000, y = 352.720, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 11 },
	[703021] = { config_id = 703021, gadget_id = 70220052, pos = { x = -2831.311, y = 200.306, z = -4555.903 }, rot = { x = 0.000, y = 54.308, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 11 },
	[703022] = { config_id = 703022, gadget_id = 70220052, pos = { x = -2830.594, y = 200.565, z = -4562.190 }, rot = { x = 0.000, y = 54.308, z = 0.000 }, level = 27, isOneoff = true, persistent = true, area_id = 11 }
}

-- 区域
regions = {
	[703018] = { config_id = 703018, shape = RegionShape.SPHERE, radius = 40, pos = { x = -2831.833, y = 200.339, z = -4559.075 }, area_id = 11 },
	-- 进入区域 开车
	[703023] = { config_id = 703023, shape = RegionShape.SPHERE, radius = 40, pos = { x = -2831.833, y = 200.339, z = -4559.075 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1703019, name = "GROUP_LOAD_703019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_703019", trigger_count = 0 },
	{ config_id = 1703020, name = "ANY_MONSTER_DIE_703020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_703020", action = "action_EVENT_ANY_MONSTER_DIE_703020" },
	-- 进入区域 开车
	{ config_id = 1703023, name = "ENTER_REGION_703023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_703023", action = "action_EVENT_ENTER_REGION_703023" },
	-- 挑战胜利  开车
	{ config_id = 1703024, name = "CHALLENGE_SUCCESS_703024", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2002", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_703024" },
	{ config_id = 1703025, name = "ANY_MONSTER_DIE_703025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_703025", action = "action_EVENT_ANY_MONSTER_DIE_703025" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Endflag_battle", value = 0, no_refresh = true }
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
		monsters = { 703001, 703002 },
		gadgets = { 703012, 703013 },
		regions = { 703018, 703023 },
		triggers = { "GROUP_LOAD_703019", "ENTER_REGION_703023", "CHALLENGE_SUCCESS_703024" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 营地摆设物件,
		monsters = { },
		gadgets = { 703014, 703015, 703016, 703017, 703021, 703022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪,
		monsters = { 703003, 703004, 703005, 703006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_703020" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二波怪,
		monsters = { 703007, 703008, 703009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_703025" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_703019(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220703, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220703, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_703020(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_703020(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220703, 4)
	
	-- 调用提示id为 400004 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_703023(context, evt)
	if evt.param1 ~= 703023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_703023(context, evt)
	-- 调用提示id为 32210104 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32210104) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_703024(context, evt)
	--战斗营地对话处理
	if ScriptLib.GetGroupVariableValueByGroup(context, "Endflag_battle",133220703) ~= 0 then
	
	
		-- 调用提示id为 400021 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
		if 0 ~= ScriptLib.ShowReminder(context, 32210109) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			return -1
		end
	
	
		ScriptLib.PrintContextLog(context, "先完成了潜行营地 播放两段对话")
	
	else
	
		-- 调用提示id为 400021 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
		if 0 ~= ScriptLib.ShowReminder(context, 32210106) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			return -1
		end
	
		ScriptLib.PrintContextLog(context, "尚未完成潜行营地 只播第一段对话")
	
		if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Endflag_slip", 1, 133221068) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	    	return -1
		end
	
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_703025(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_703025(context, evt)
	-- 调用提示id为 400106 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400106) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V2_3/HachiBattle"