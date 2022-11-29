-- 基础信息
local base_info = {
	group_id = 133007255
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
	{ config_id = 255001, gadget_id = 70500000, pos = { x = 3002.614, y = 214.329, z = 122.325 }, rot = { x = 352.589, y = 356.922, z = 45.068 }, level = 1, point_type = 1003, persistent = true, area_id = 4 },
	{ config_id = 255002, gadget_id = 70500000, pos = { x = 3005.552, y = 214.961, z = 125.726 }, rot = { x = 354.395, y = 356.656, z = 61.605 }, level = 1, point_type = 1003, persistent = true, area_id = 4 },
	{ config_id = 255003, gadget_id = 70360001, pos = { x = 3007.191, y = 215.986, z = 126.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 255004, gadget_id = 70500000, pos = { x = 3006.469, y = 215.220, z = 131.597 }, rot = { x = 2.563, y = 0.700, z = 30.527 }, level = 1, point_type = 1005, persistent = true, area_id = 4 },
	{ config_id = 255005, gadget_id = 70500000, pos = { x = 3008.521, y = 216.728, z = 119.382 }, rot = { x = 14.450, y = 3.038, z = 23.631 }, level = 1, point_type = 1005, persistent = true, area_id = 4 },
	{ config_id = 255010, gadget_id = 70500000, pos = { x = 3012.919, y = 216.365, z = 132.432 }, rot = { x = 5.219, y = 1.293, z = 27.810 }, level = 1, point_type = 1005, persistent = true, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1255006, name = "GROUP_REFRESH_255006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_255006" },
	{ config_id = 1255007, name = "ANY_GADGET_DIE_255007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_255007", trigger_count = 0 },
	{ config_id = 1255008, name = "BLOSSOM_PROGRESS_FINISH_255008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_255008" },
	{ config_id = 1255009, name = "GROUP_LOAD_255009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_255009" }
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
		triggers = { "GROUP_LOAD_255009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_255006", "ANY_GADGET_DIE_255007", "BLOSSOM_PROGRESS_FINISH_255008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 255001, 255002, 255003, 255004, 255005, 255010 },
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
function action_EVENT_GROUP_REFRESH_255006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133007255, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133007255, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_255007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133007255)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_255008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133007255, 3) then
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
function action_EVENT_GROUP_LOAD_255009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end