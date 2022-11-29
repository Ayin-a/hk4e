-- 基础信息
local base_info = {
	group_id = 133106276
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
	{ config_id = 276001, gadget_id = 70500000, pos = { x = -320.398, y = 238.726, z = 1030.016 }, rot = { x = 3.535, y = 0.445, z = 5.373 }, level = 1, point_type = 1003, persistent = true, area_id = 8 },
	{ config_id = 276002, gadget_id = 70500000, pos = { x = -314.078, y = 240.075, z = 1028.807 }, rot = { x = 11.661, y = 359.431, z = 17.713 }, level = 1, point_type = 1003, persistent = true, area_id = 8 },
	{ config_id = 276003, gadget_id = 70360001, pos = { x = -319.344, y = 238.630, z = 1031.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 8 },
	{ config_id = 276004, gadget_id = 70500000, pos = { x = -316.982, y = 239.249, z = 1028.884 }, rot = { x = 5.615, y = 217.803, z = 344.445 }, level = 1, point_type = 1005, persistent = true, area_id = 8 },
	{ config_id = 276005, gadget_id = 70500000, pos = { x = -321.019, y = 237.542, z = 1038.111 }, rot = { x = 29.839, y = 287.194, z = 349.433 }, level = 1, point_type = 1005, persistent = true, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1276006, name = "GROUP_REFRESH_276006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_276006" },
	{ config_id = 1276007, name = "ANY_GADGET_DIE_276007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_276007", trigger_count = 0 },
	{ config_id = 1276008, name = "BLOSSOM_PROGRESS_FINISH_276008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_276008" },
	{ config_id = 1276009, name = "GROUP_LOAD_276009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_276009" }
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
		triggers = { "GROUP_LOAD_276009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_276006", "ANY_GADGET_DIE_276007", "BLOSSOM_PROGRESS_FINISH_276008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 276001, 276002, 276003, 276004, 276005 },
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
function action_EVENT_GROUP_REFRESH_276006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133106276, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106276, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_276007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133106276)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_276008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133106276, 3) then
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
function action_EVENT_GROUP_LOAD_276009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end