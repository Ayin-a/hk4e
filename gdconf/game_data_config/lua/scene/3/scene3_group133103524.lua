-- 基础信息
local base_info = {
	group_id = 133103524
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
	{ config_id = 524001, gadget_id = 70500000, pos = { x = 360.774, y = 266.681, z = 1629.963 }, rot = { x = 0.232, y = 3.353, z = 356.270 }, level = 1, point_type = 1003, persistent = true, area_id = 6 },
	{ config_id = 524002, gadget_id = 70500000, pos = { x = 369.943, y = 266.406, z = 1629.567 }, rot = { x = 3.200, y = 359.891, z = 356.084 }, level = 1, point_type = 1003, persistent = true, area_id = 6 },
	{ config_id = 524003, gadget_id = 70360001, pos = { x = 369.082, y = 269.005, z = 1627.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 6 },
	{ config_id = 524004, gadget_id = 70500000, pos = { x = 365.336, y = 266.555, z = 1631.149 }, rot = { x = 359.618, y = 0.002, z = 359.305 }, level = 1, point_type = 1005, persistent = true, area_id = 6 },
	{ config_id = 524005, gadget_id = 70500000, pos = { x = 374.620, y = 268.411, z = 1627.385 }, rot = { x = 2.075, y = 359.893, z = 354.086 }, level = 1, point_type = 1005, persistent = true, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1524006, name = "GROUP_REFRESH_524006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_524006" },
	{ config_id = 1524007, name = "ANY_GADGET_DIE_524007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_524007", trigger_count = 0 },
	{ config_id = 1524008, name = "BLOSSOM_PROGRESS_FINISH_524008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_524008" },
	{ config_id = 1524009, name = "GROUP_LOAD_524009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_524009" }
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
		triggers = { "GROUP_LOAD_524009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_524006", "ANY_GADGET_DIE_524007", "BLOSSOM_PROGRESS_FINISH_524008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 524001, 524002, 524003, 524004, 524005 },
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
function action_EVENT_GROUP_REFRESH_524006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133103524, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103524, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_524007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133103524)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_524008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133103524, 3) then
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
function action_EVENT_GROUP_LOAD_524009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end