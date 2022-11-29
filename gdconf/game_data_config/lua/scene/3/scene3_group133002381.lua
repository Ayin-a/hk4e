-- 基础信息
local base_info = {
	group_id = 133002381
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
	{ config_id = 381001, gadget_id = 70500000, pos = { x = 1679.999, y = 258.649, z = -710.156 }, rot = { x = 354.647, y = 34.028, z = 358.210 }, level = 1, point_type = 1003, persistent = true, area_id = 3 },
	{ config_id = 381002, gadget_id = 70500000, pos = { x = 1681.593, y = 258.527, z = -711.057 }, rot = { x = 356.452, y = 306.909, z = 359.547 }, level = 1, point_type = 1003, persistent = true, area_id = 3 },
	{ config_id = 381003, gadget_id = 70360001, pos = { x = 1675.688, y = 259.063, z = -714.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 3 },
	{ config_id = 381004, gadget_id = 70500000, pos = { x = 1683.284, y = 258.317, z = -713.537 }, rot = { x = 357.753, y = 277.593, z = 3.307 }, level = 1, point_type = 1005, persistent = true, area_id = 3 },
	{ config_id = 381005, gadget_id = 70500000, pos = { x = 1674.656, y = 259.006, z = -720.354 }, rot = { x = 350.462, y = 313.244, z = 355.926 }, level = 1, point_type = 1005, persistent = true, area_id = 3 },
	{ config_id = 381010, gadget_id = 70500000, pos = { x = 1665.858, y = 259.582, z = -720.252 }, rot = { x = 1.250, y = 313.108, z = 341.050 }, level = 1, point_type = 1005, persistent = true, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1381006, name = "GROUP_REFRESH_381006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_381006" },
	{ config_id = 1381007, name = "ANY_GADGET_DIE_381007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_381007", trigger_count = 0 },
	{ config_id = 1381008, name = "BLOSSOM_PROGRESS_FINISH_381008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_381008" },
	{ config_id = 1381009, name = "GROUP_LOAD_381009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_381009" }
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
		triggers = { "GROUP_LOAD_381009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_381006", "ANY_GADGET_DIE_381007", "BLOSSOM_PROGRESS_FINISH_381008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 381001, 381002, 381003, 381004, 381005, 381010 },
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
function action_EVENT_GROUP_REFRESH_381006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133002381, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002381, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_381007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133002381)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_381008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133002381, 3) then
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
function action_EVENT_GROUP_LOAD_381009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end