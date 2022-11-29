-- 基础信息
local base_info = {
	group_id = 133007254
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
	{ config_id = 254001, gadget_id = 70500000, pos = { x = 2476.333, y = 209.625, z = 209.992 }, rot = { x = 353.928, y = 0.721, z = 346.464 }, level = 1, point_type = 1003, persistent = true, area_id = 4 },
	{ config_id = 254002, gadget_id = 70500000, pos = { x = 2475.538, y = 209.245, z = 205.709 }, rot = { x = 354.676, y = 2.075, z = 317.445 }, level = 1, point_type = 1003, persistent = true, area_id = 4 },
	{ config_id = 254003, gadget_id = 70360001, pos = { x = 2474.202, y = 210.061, z = 212.934 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 4 },
	{ config_id = 254004, gadget_id = 70500000, pos = { x = 2480.003, y = 208.684, z = 215.024 }, rot = { x = 4.863, y = 359.304, z = 343.717 }, level = 1, point_type = 1005, persistent = true, area_id = 4 },
	{ config_id = 254005, gadget_id = 70500000, pos = { x = 2474.524, y = 209.636, z = 211.404 }, rot = { x = 23.265, y = 359.947, z = 359.745 }, level = 1, point_type = 1005, persistent = true, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1254006, name = "GROUP_REFRESH_254006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_254006" },
	{ config_id = 1254007, name = "ANY_GADGET_DIE_254007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_254007", trigger_count = 0 },
	{ config_id = 1254008, name = "BLOSSOM_PROGRESS_FINISH_254008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_254008" },
	{ config_id = 1254009, name = "GROUP_LOAD_254009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_254009" }
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
		triggers = { "GROUP_LOAD_254009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_254006", "ANY_GADGET_DIE_254007", "BLOSSOM_PROGRESS_FINISH_254008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 254001, 254002, 254003, 254004, 254005 },
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
function action_EVENT_GROUP_REFRESH_254006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133007254, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133007254, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_254007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133007254)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_254008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133007254, 3) then
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
function action_EVENT_GROUP_LOAD_254009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end