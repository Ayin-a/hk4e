-- 基础信息
local base_info = {
	group_id = 133104625
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 625001, gadget_id = 70500000, pos = { x = 296.330, y = 205.670, z = 685.764 }, rot = { x = 344.058, y = 348.250, z = 16.840 }, level = 1, point_type = 1003, persistent = true, area_id = 9 },
	{ config_id = 625002, gadget_id = 70500000, pos = { x = 301.238, y = 206.698, z = 686.740 }, rot = { x = 29.601, y = 297.791, z = 40.350 }, level = 1, point_type = 1003, persistent = true, area_id = 9 },
	{ config_id = 625003, gadget_id = 70360001, pos = { x = 285.190, y = 203.958, z = 682.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 9 },
	{ config_id = 625004, gadget_id = 70500000, pos = { x = 297.058, y = 202.376, z = 676.251 }, rot = { x = 21.217, y = 19.256, z = 78.750 }, level = 1, point_type = 1005, persistent = true, area_id = 9 },
	{ config_id = 625005, gadget_id = 70500000, pos = { x = 292.033, y = 205.253, z = 687.354 }, rot = { x = 307.823, y = 307.830, z = 78.893 }, level = 1, point_type = 1005, persistent = true, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1625006, name = "GROUP_REFRESH_625006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_625006" },
	{ config_id = 1625007, name = "ANY_GADGET_DIE_625007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_625007", trigger_count = 0 },
	{ config_id = 1625008, name = "BLOSSOM_PROGRESS_FINISH_625008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_625008" },
	{ config_id = 1625009, name = "GROUP_LOAD_625009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_625009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false }
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
		triggers = { "GROUP_LOAD_625009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_625006", "ANY_GADGET_DIE_625007", "BLOSSOM_PROGRESS_FINISH_625008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 625001, 625002, 625003, 625004, 625005 },
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
function action_EVENT_GROUP_REFRESH_625006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133104625, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104625, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_625007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133104625)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_625008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133104625, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 将本组内变量名为 "GroupCompletion" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "GroupCompletion", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_625009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end