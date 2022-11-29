-- 基础信息
local base_info = {
	group_id = 133003552
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
	{ config_id = 552001, gadget_id = 70500000, pos = { x = 2908.907, y = 253.249, z = -1629.758 }, rot = { x = 357.657, y = 359.598, z = 19.492 }, level = 1, point_type = 1003, persistent = true, area_id = 1 },
	{ config_id = 552002, gadget_id = 70500000, pos = { x = 2907.978, y = 254.412, z = -1626.471 }, rot = { x = 353.428, y = 359.197, z = 13.920 }, level = 1, point_type = 1003, persistent = true, area_id = 1 },
	{ config_id = 552003, gadget_id = 70360001, pos = { x = 2909.802, y = 254.656, z = -1627.788 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 1 },
	{ config_id = 552004, gadget_id = 70500000, pos = { x = 2911.432, y = 254.607, z = -1628.318 }, rot = { x = 329.525, y = 1.803, z = 353.387 }, level = 1, point_type = 1005, persistent = true, area_id = 1 },
	{ config_id = 552005, gadget_id = 70500000, pos = { x = 2907.970, y = 253.921, z = -1622.679 }, rot = { x = 358.492, y = 261.796, z = 8.297 }, level = 1, point_type = 1005, persistent = true, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1552006, name = "GROUP_REFRESH_552006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_552006" },
	{ config_id = 1552007, name = "ANY_GADGET_DIE_552007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_552007", trigger_count = 0 },
	{ config_id = 1552008, name = "BLOSSOM_PROGRESS_FINISH_552008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_552008" },
	{ config_id = 1552009, name = "GROUP_LOAD_552009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_552009" }
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
		triggers = { "GROUP_LOAD_552009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_552006", "ANY_GADGET_DIE_552007", "BLOSSOM_PROGRESS_FINISH_552008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 552001, 552002, 552003, 552004, 552005 },
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
function action_EVENT_GROUP_REFRESH_552006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133003552, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003552, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_552007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133003552)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_552008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133003552, 3) then
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
function action_EVENT_GROUP_LOAD_552009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end