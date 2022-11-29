-- 基础信息
local base_info = {
	group_id = 133103523
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
	{ config_id = 523001, gadget_id = 70500000, pos = { x = 1115.497, y = 233.798, z = 1648.396 }, rot = { x = 5.656, y = 1.261, z = 25.116 }, level = 1, point_type = 1003, persistent = true, area_id = 6 },
	{ config_id = 523002, gadget_id = 70500000, pos = { x = 1115.246, y = 232.779, z = 1639.519 }, rot = { x = 356.157, y = 358.945, z = 30.701 }, level = 1, point_type = 1003, persistent = true, area_id = 6 },
	{ config_id = 523003, gadget_id = 70360001, pos = { x = 1115.198, y = 234.121, z = 1642.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 6 },
	{ config_id = 523004, gadget_id = 70500000, pos = { x = 1111.963, y = 233.117, z = 1651.178 }, rot = { x = 349.027, y = 358.320, z = 17.355 }, level = 1, point_type = 1005, persistent = true, area_id = 6 },
	{ config_id = 523005, gadget_id = 70500000, pos = { x = 1116.573, y = 233.078, z = 1633.608 }, rot = { x = 355.906, y = 359.143, z = 23.631 }, level = 1, point_type = 1005, persistent = true, area_id = 6 },
	{ config_id = 523010, gadget_id = 70500000, pos = { x = 1118.110, y = 235.229, z = 1640.258 }, rot = { x = 355.805, y = 359.755, z = 6.695 }, level = 1, point_type = 1005, persistent = true, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1523006, name = "GROUP_REFRESH_523006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_523006" },
	{ config_id = 1523007, name = "ANY_GADGET_DIE_523007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_523007", trigger_count = 0 },
	{ config_id = 1523008, name = "BLOSSOM_PROGRESS_FINISH_523008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_523008" },
	{ config_id = 1523009, name = "GROUP_LOAD_523009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_523009" }
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
		triggers = { "GROUP_LOAD_523009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_523006", "ANY_GADGET_DIE_523007", "BLOSSOM_PROGRESS_FINISH_523008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 523001, 523002, 523003, 523004, 523005, 523010 },
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
function action_EVENT_GROUP_REFRESH_523006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133103523, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103523, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_523007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133103523)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_523008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133103523, 3) then
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
function action_EVENT_GROUP_LOAD_523009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end