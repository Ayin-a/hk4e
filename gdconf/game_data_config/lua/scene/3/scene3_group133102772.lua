-- 基础信息
local base_info = {
	group_id = 133102772
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
	{ config_id = 772001, gadget_id = 70500000, pos = { x = 1123.971, y = 209.050, z = 906.196 }, rot = { x = 3.315, y = 359.806, z = 353.312 }, level = 1, point_type = 1003, persistent = true, area_id = 6 },
	{ config_id = 772002, gadget_id = 70500000, pos = { x = 1126.587, y = 208.410, z = 904.035 }, rot = { x = 33.752, y = 348.140, z = 322.200 }, level = 1, point_type = 1003, persistent = true, area_id = 6 },
	{ config_id = 772003, gadget_id = 70360001, pos = { x = 1124.333, y = 209.485, z = 903.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 6 },
	{ config_id = 772004, gadget_id = 70500000, pos = { x = 1120.854, y = 209.036, z = 906.085 }, rot = { x = 5.933, y = 359.051, z = 341.833 }, level = 1, point_type = 1005, persistent = true, area_id = 6 },
	{ config_id = 772005, gadget_id = 70500000, pos = { x = 1124.351, y = 211.783, z = 901.968 }, rot = { x = 352.005, y = 1.770, z = 335.075 }, level = 1, point_type = 1005, persistent = true, area_id = 6 },
	{ config_id = 772010, gadget_id = 70500000, pos = { x = 1127.384, y = 208.579, z = 901.760 }, rot = { x = 352.780, y = 1.634, z = 334.533 }, level = 1, point_type = 1005, persistent = true, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1772006, name = "GROUP_REFRESH_772006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_772006" },
	{ config_id = 1772007, name = "ANY_GADGET_DIE_772007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_772007", trigger_count = 0 },
	{ config_id = 1772008, name = "BLOSSOM_PROGRESS_FINISH_772008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_772008" },
	{ config_id = 1772009, name = "GROUP_LOAD_772009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_772009" }
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
		triggers = { "GROUP_LOAD_772009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_772006", "ANY_GADGET_DIE_772007", "BLOSSOM_PROGRESS_FINISH_772008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 772001, 772002, 772003, 772004, 772005, 772010 },
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
function action_EVENT_GROUP_REFRESH_772006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133102772, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102772, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_772007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133102772)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_772008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133102772, 3) then
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
function action_EVENT_GROUP_LOAD_772009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end