-- 基础信息
local base_info = {
	group_id = 133007257
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
	{ config_id = 257001, gadget_id = 70500000, pos = { x = 2547.102, y = 182.646, z = 410.781 }, rot = { x = 348.469, y = 6.495, z = 301.334 }, level = 1, point_type = 1003, persistent = true, area_id = 4 },
	{ config_id = 257002, gadget_id = 70500000, pos = { x = 2552.558, y = 181.622, z = 416.622 }, rot = { x = 325.968, y = 356.269, z = 12.149 }, level = 1, point_type = 1003, persistent = true, area_id = 4 },
	{ config_id = 257003, gadget_id = 70360001, pos = { x = 2545.890, y = 182.517, z = 414.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 257004, gadget_id = 70500000, pos = { x = 2550.357, y = 182.013, z = 421.454 }, rot = { x = 337.838, y = 0.372, z = 358.102 }, level = 1, point_type = 1005, persistent = true, area_id = 4 },
	{ config_id = 257005, gadget_id = 70500000, pos = { x = 2545.916, y = 180.230, z = 428.420 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 4 },
	{ config_id = 257010, gadget_id = 70500000, pos = { x = 2553.974, y = 182.434, z = 419.775 }, rot = { x = 3.269, y = 0.521, z = 18.117 }, level = 1, point_type = 1005, persistent = true, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1257006, name = "GROUP_REFRESH_257006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_257006" },
	{ config_id = 1257007, name = "ANY_GADGET_DIE_257007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_257007", trigger_count = 0 },
	{ config_id = 1257008, name = "BLOSSOM_PROGRESS_FINISH_257008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_257008" },
	{ config_id = 1257009, name = "GROUP_LOAD_257009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_257009" }
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
		triggers = { "GROUP_LOAD_257009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_257006", "ANY_GADGET_DIE_257007", "BLOSSOM_PROGRESS_FINISH_257008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 257001, 257002, 257003, 257004, 257005, 257010 },
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
function action_EVENT_GROUP_REFRESH_257006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133007257, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133007257, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_257007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133007257)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_257008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133007257, 3) then
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
function action_EVENT_GROUP_LOAD_257009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end