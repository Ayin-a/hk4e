-- 基础信息
local base_info = {
	group_id = 201071002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 25080101, pos = { x = 4.903, y = -15.658, z = -18.235 }, rot = { x = 0.000, y = 280.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1047 }, pose_id = 1003 },
	{ config_id = 2002, monster_id = 25080101, pos = { x = 4.961, y = -15.670, z = -21.793 }, rot = { x = 0.000, y = 260.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1047 }, pose_id = 1003 },
	{ config_id = 2003, monster_id = 25080301, pos = { x = 6.642, y = -15.670, z = -19.771 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1047 }, pose_id = 1003 },
	{ config_id = 2005, monster_id = 25080101, pos = { x = 2.474, y = -15.662, z = -13.638 }, rot = { x = 0.000, y = 171.635, z = 0.000 }, level = 1, disableWander = true, affix = { 1047 }, pose_id = 1 },
	{ config_id = 2006, monster_id = 25080101, pos = { x = 11.698, y = -15.654, z = -20.605 }, rot = { x = 0.000, y = 260.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1047 }, pose_id = 1 },
	{ config_id = 2007, monster_id = 25080101, pos = { x = 3.154, y = -15.670, z = -26.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1047 }, pose_id = 1 },
	{ config_id = 2008, monster_id = 25080101, pos = { x = 5.485, y = -15.640, z = -13.195 }, rot = { x = 0.000, y = 171.635, z = 0.000 }, level = 1, disableWander = true, affix = { 1047 }, pose_id = 1 },
	{ config_id = 2009, monster_id = 25080101, pos = { x = 11.344, y = -15.650, z = -18.595 }, rot = { x = 0.000, y = 260.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1047 }, pose_id = 1 },
	{ config_id = 2010, monster_id = 25080101, pos = { x = 6.188, y = -15.661, z = -26.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1047 }, pose_id = 1 },
	{ config_id = 2013, monster_id = 25080201, pos = { x = 80.885, y = -14.784, z = -18.284 }, rot = { x = 0.000, y = 280.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1047 }, pose_id = 1003 },
	{ config_id = 2014, monster_id = 25080201, pos = { x = 80.944, y = -14.784, z = -21.842 }, rot = { x = 0.000, y = 260.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1047 }, pose_id = 1003 },
	{ config_id = 2015, monster_id = 25080201, pos = { x = 82.625, y = -14.784, z = -20.395 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1047 }, pose_id = 1001 },
	{ config_id = 2016, monster_id = 25080101, pos = { x = 77.607, y = -14.784, z = -13.789 }, rot = { x = 0.000, y = 171.635, z = 0.000 }, level = 1, disableWander = true, affix = { 1047 }, pose_id = 1 },
	{ config_id = 2017, monster_id = 25080301, pos = { x = 86.831, y = -14.725, z = -20.756 }, rot = { x = 0.000, y = 260.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1047 }, pose_id = 1 },
	{ config_id = 2018, monster_id = 25080101, pos = { x = 78.287, y = -14.784, z = -27.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1047 }, pose_id = 1 },
	{ config_id = 2019, monster_id = 25080101, pos = { x = 80.618, y = -14.784, z = -13.346 }, rot = { x = 0.000, y = 171.635, z = 0.000 }, level = 1, disableWander = true, affix = { 1047 }, pose_id = 1 },
	{ config_id = 2020, monster_id = 25080301, pos = { x = 86.477, y = -14.728, z = -18.746 }, rot = { x = 0.000, y = 260.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1047 }, pose_id = 1 },
	{ config_id = 2021, monster_id = 25080101, pos = { x = 81.321, y = -14.784, z = -27.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1047 }, pose_id = 1 },
	{ config_id = 2023, monster_id = 25100201, pos = { x = 154.028, y = -9.190, z = -19.999 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1047 }, pose_id = 1 },
	{ config_id = 2040, monster_id = 25100101, pos = { x = 155.013, y = -9.190, z = -19.999 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1047 }, pose_id = 1 },
	{ config_id = 2041, monster_id = 25080301, pos = { x = 154.028, y = -9.190, z = -17.974 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1047 }, pose_id = 1 },
	{ config_id = 2042, monster_id = 25080301, pos = { x = 154.028, y = -9.190, z = -22.469 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1047 }, pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2024, gadget_id = 70900393, pos = { x = 148.305, y = -9.190, z = -15.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2025, gadget_id = 70900393, pos = { x = 148.305, y = -9.190, z = -24.030 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2027, gadget_id = 70900393, pos = { x = 12.531, y = -15.670, z = -12.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2028, gadget_id = 70900393, pos = { x = 12.478, y = -15.670, z = -26.747 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2029, gadget_id = 70900393, pos = { x = -1.398, y = -15.670, z = -12.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2030, gadget_id = 70900393, pos = { x = -1.451, y = -15.669, z = -26.747 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2031, gadget_id = 70900393, pos = { x = 85.021, y = -14.784, z = -13.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2032, gadget_id = 70900393, pos = { x = 84.968, y = -14.746, z = -26.944 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2033, gadget_id = 70900393, pos = { x = 68.554, y = -14.784, z = -13.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2034, gadget_id = 70900393, pos = { x = 68.920, y = -14.784, z = -26.944 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2047, gadget_id = 70211121, pos = { x = 156.344, y = -9.190, z = -19.916 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 11, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true },
	{ config_id = 2048, gadget_id = 70211011, pos = { x = 25.120, y = -14.990, z = -17.003 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 11, drop_tag = "战斗中级稻妻", isOneoff = true, persistent = true },
	{ config_id = 2049, gadget_id = 70211011, pos = { x = 133.380, y = -9.164, z = -27.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "战斗中级稻妻", isOneoff = true, persistent = true },
	{ config_id = 2057, gadget_id = 70900393, pos = { x = 148.305, y = -9.190, z = -24.030 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2058, gadget_id = 70900393, pos = { x = 148.305, y = -9.190, z = -15.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 2060, gadget_id = 70310016, pos = { x = -0.264, y = -16.483, z = -34.033 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2061, gadget_id = 70310016, pos = { x = -1.200, y = -16.483, z = -34.033 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2062, gadget_id = 70310042, pos = { x = 136.440, y = -9.081, z = -19.891 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL }
}

-- 区域
regions = {
	-- 进入后关门
	{ config_id = 2045, shape = RegionShape.CUBIC, size = { x = 5.000, y = 20.000, z = 50.000 }, pos = { x = 142.744, y = -8.700, z = -20.109 } },
	-- 保底开门
	{ config_id = 2046, shape = RegionShape.CUBIC, size = { x = 5.000, y = 20.000, z = 50.000 }, pos = { x = 131.716, y = -8.700, z = -20.109 } },
	{ config_id = 2050, shape = RegionShape.SPHERE, radius = 7, pos = { x = -21.536, y = -14.910, z = -19.529 } },
	-- 血量判定 挂判定ability
	{ config_id = 2054, shape = RegionShape.SPHERE, radius = 30, pos = { x = 150.997, y = -9.190, z = -19.720 }, team_ability_group_list = { "ActivityAbility_SummerTimeV2_Kazuha_Decision_HealthValue" } }
}

-- 触发器
triggers = {
	{ config_id = 1002004, name = "ANY_MONSTER_DIE_2004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2004", action = "action_EVENT_ANY_MONSTER_DIE_2004" },
	-- 对话1
	{ config_id = 1002011, name = "ANY_MONSTER_DIE_2011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2011", action = "action_EVENT_ANY_MONSTER_DIE_2011" },
	{ config_id = 1002012, name = "ANY_MONSTER_DIE_2012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2012", action = "action_EVENT_ANY_MONSTER_DIE_2012" },
	-- 对话2
	{ config_id = 1002022, name = "ANY_MONSTER_DIE_2022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2022", action = "action_EVENT_ANY_MONSTER_DIE_2022" },
	-- 对话1结束
	{ config_id = 1002037, name = "QUEST_FINISH_2037", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_2037", action = "action_EVENT_QUEST_FINISH_2037" },
	-- 对话2结束
	{ config_id = 1002038, name = "QUEST_FINISH_2038", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_2038", action = "action_EVENT_QUEST_FINISH_2038" },
	-- 对话3结束
	{ config_id = 1002039, name = "QUEST_FINISH_2039", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_2039", action = "action_EVENT_QUEST_FINISH_2039" },
	-- 对话4
	{ config_id = 1002043, name = "ANY_MONSTER_DIE_2043", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2043", action = "action_EVENT_ANY_MONSTER_DIE_2043" },
	-- 对话4结束,地城出口
	{ config_id = 1002044, name = "QUEST_FINISH_2044", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_2044", action = "action_EVENT_QUEST_FINISH_2044" },
	-- 进入后关门
	{ config_id = 1002045, name = "ENTER_REGION_2045", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2045", action = "action_EVENT_ENTER_REGION_2045" },
	-- 保底开门
	{ config_id = 1002046, name = "ENTER_REGION_2046", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2046", action = "action_EVENT_ENTER_REGION_2046", trigger_count = 0 },
	{ config_id = 1002050, name = "ENTER_REGION_2050", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2050", action = "action_EVENT_ENTER_REGION_2050" },
	-- 限时击杀后续
	{ config_id = 1002052, name = "ANY_MONSTER_DIE_2052", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2052", action = "action_EVENT_ANY_MONSTER_DIE_2052" },
	-- 血量判定 挂判定ability
	{ config_id = 1002054, name = "ENTER_REGION_2054", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 血量低于30%后续
	{ config_id = 1002055, name = "LUA_NOTIFY_2055", event = EventType.EVENT_LUA_NOTIFY, source = "Kazuha_Room3", condition = "condition_EVENT_LUA_NOTIFY_2055", action = "action_EVENT_LUA_NOTIFY_2055" },
	-- 对话3-失败结束
	{ config_id = 1002056, name = "QUEST_FINISH_2056", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_2056", action = "action_EVENT_QUEST_FINISH_2056" },
	{ config_id = 1002059, name = "GADGET_CREATE_2059", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2059", action = "action_EVENT_GADGET_CREATE_2059" }
}

-- 变量
variables = {
	{ config_id = 2, name = "Challenge_Success", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1002026, name = "CHALLENGE_SUCCESS_2026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2026" },
		{ config_id = 1002035, name = "ANY_MONSTER_LIVE_2035", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_2035", action = "action_EVENT_ANY_MONSTER_LIVE_2035" },
		{ config_id = 1002036, name = "CHALLENGE_FAIL_2036", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2036" },
		{ config_id = 1002051, name = "ANY_MONSTER_LIVE_2051", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_2051", action = "action_EVENT_ANY_MONSTER_LIVE_2051" },
		{ config_id = 1002053, name = "TIMER_EVENT_2053", event = EventType.EVENT_TIMER_EVENT, source = "challengetime01", condition = "condition_EVENT_TIMER_EVENT_2053", action = "action_EVENT_TIMER_EVENT_2053" }
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
		-- description = room1-1,
		monsters = { 2001, 2002, 2003 },
		gadgets = { 2027, 2028, 2029, 2030, 2048, 2049, 2060, 2061 },
		regions = { 2050 },
		triggers = { "ANY_MONSTER_DIE_2004", "ENTER_REGION_2050" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = room1-2,
		monsters = { 2005, 2006, 2007, 2008, 2009, 2010 },
		gadgets = { 2060 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2011", "QUEST_FINISH_2037" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = room2-1,
		monsters = { 2013, 2014, 2015 },
		gadgets = { 2031, 2032, 2033, 2034, 2060 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2012" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = room2-2,
		monsters = { 2016, 2017, 2018, 2019, 2020, 2021 },
		gadgets = { 2060 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2022", "QUEST_FINISH_2038" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = room3,
		monsters = { },
		gadgets = { 2057, 2058, 2060 },
		regions = { 2045 },
		triggers = { "QUEST_FINISH_2039", "ENTER_REGION_2045", "QUEST_FINISH_2056", "GADGET_CREATE_2059" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = room3-2,
		monsters = { 2040, 2041, 2042 },
		gadgets = { 2060 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2043", "QUEST_FINISH_2044" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = room3-wave1,
		monsters = { 2023 },
		gadgets = { 2060, 2062 },
		regions = { 2046 },
		triggers = { "ENTER_REGION_2046", "ANY_MONSTER_DIE_2052", "LUA_NOTIFY_2055" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 2047, 2060 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 2060 },
		regions = { 2054 },
		triggers = { "ENTER_REGION_2054" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ROOM3火盆,
		monsters = { },
		gadgets = { 2024, 2025, 2060 },
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
function condition_EVENT_ANY_MONSTER_DIE_2004(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 201071002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201071002, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2011(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 201071002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1203905") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2012(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 201071002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2012(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201071002, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2022(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 201071002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2022(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1203907") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_2037(context, evt)
	--检查ID为1203906的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1203906 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_2037(context, evt)
	-- 改变指定group组201071001中， configid为1003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201071001, 1003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201071002, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_2038(context, evt)
	--检查ID为1203908的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1203908 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_2038(context, evt)
	-- 改变指定group组201071001中， configid为1004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201071001, 1004, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201071002, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_2039(context, evt)
	--检查ID为1203910的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1203910 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_2039(context, evt)
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201071002, 9)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201071002, 6)
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201071002, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2043(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 201071002) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2043(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1203911") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 改变指定group组201071001中， configid为1005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201071001, 1005, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201071002, EntityType.GADGET, 2062 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_2044(context, evt)
	--检查ID为1203914的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1203914 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_2044(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201071002, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2045(context, evt)
	if evt.param1 ~= 2045 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2045(context, evt)
	-- 改变指定group组201071001中， configid为1005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201071001, 1005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201071002, 9)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201071002, 7)
	
	-- 调用提示id为 10710102 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10710102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2046(context, evt)
	if evt.param1 ~= 2046 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2046(context, evt)
	-- 改变指定group组201071001中， configid为1005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201071001, 1005, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201071002, EntityType.GADGET, 2062 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2050(context, evt)
	if evt.param1 ~= 2050 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2050(context, evt)
	-- 调用提示id为 10710101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10710101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2052(context, evt)
	-- 判断变量"Challenge_Success"为0
	if ScriptLib.GetGroupVariableValue(context, "Challenge_Success") ~= 0 then
			return false
	end
	
	--判断死亡怪物的configid是否为 2023
	if evt.param1 ~= 2023 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2052(context, evt)
	-- 将本组内变量名为 "Challenge_Success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Challenge_Success", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1203909") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LUA_NOTIFY_2055(context, evt)
	-- 判断变量"Challenge_Success"为0
	if ScriptLib.GetGroupVariableValue(context, "Challenge_Success") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_2055(context, evt)
	-- 将本组内变量名为 "Challenge_Success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Challenge_Success", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201071002, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1203921") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_2056(context, evt)
	--检查ID为1203922的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1203922 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_2056(context, evt)
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201071002, 9)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201071002, 6)
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201071002, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_2059(context, evt)
	if 2024 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_2059(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201071002, EntityType.GADGET, 2057 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201071002, EntityType.GADGET, 2058 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end