-- 基础信息
local base_info = {
	group_id = 133002382
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
	{ config_id = 382001, gadget_id = 70500000, pos = { x = 2034.070, y = 239.970, z = -629.300 }, rot = { x = 10.062, y = 357.291, z = 36.648 }, level = 1, point_type = 1003, persistent = true, area_id = 3 },
	{ config_id = 382002, gadget_id = 70500000, pos = { x = 2036.113, y = 240.658, z = -633.157 }, rot = { x = 23.396, y = 13.174, z = 23.106 }, level = 1, point_type = 1003, persistent = true, area_id = 3 },
	{ config_id = 382003, gadget_id = 70360001, pos = { x = 2039.606, y = 241.640, z = -635.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 3 },
	{ config_id = 382004, gadget_id = 70500000, pos = { x = 2034.999, y = 239.955, z = -635.117 }, rot = { x = 22.083, y = 6.526, z = 32.573 }, level = 1, point_type = 1005, persistent = true, area_id = 3 },
	{ config_id = 382005, gadget_id = 70500000, pos = { x = 2036.473, y = 241.141, z = -628.595 }, rot = { x = 345.025, y = 358.214, z = 13.530 }, level = 1, point_type = 1005, persistent = true, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1382006, name = "GROUP_REFRESH_382006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_382006" },
	{ config_id = 1382007, name = "ANY_GADGET_DIE_382007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_382007", trigger_count = 0 },
	{ config_id = 1382008, name = "BLOSSOM_PROGRESS_FINISH_382008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_382008" },
	{ config_id = 1382009, name = "GROUP_LOAD_382009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_382009" }
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
		triggers = { "GROUP_LOAD_382009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_382006", "ANY_GADGET_DIE_382007", "BLOSSOM_PROGRESS_FINISH_382008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 382001, 382002, 382003, 382004, 382005 },
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
function action_EVENT_GROUP_REFRESH_382006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133002382, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002382, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_382007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133002382)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_382008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133002382, 3) then
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
function action_EVENT_GROUP_LOAD_382009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end