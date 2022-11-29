-- 基础信息
local base_info = {
	group_id = 133004326
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
	{ config_id = 326001, gadget_id = 70500000, pos = { x = 2145.563, y = 213.568, z = -585.722 }, rot = { x = 41.379, y = 8.309, z = 21.774 }, level = 1, point_type = 1003, persistent = true, area_id = 3 },
	{ config_id = 326002, gadget_id = 70500000, pos = { x = 2148.976, y = 214.426, z = -584.140 }, rot = { x = 0.087, y = 359.992, z = 349.949 }, level = 1, point_type = 1003, persistent = true, area_id = 3 },
	{ config_id = 326003, gadget_id = 70360001, pos = { x = 2149.874, y = 215.259, z = -585.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 3 },
	{ config_id = 326004, gadget_id = 70500000, pos = { x = 2150.986, y = 214.198, z = -581.786 }, rot = { x = 12.868, y = 1.749, z = 15.416 }, level = 1, point_type = 1005, persistent = true, area_id = 3 },
	{ config_id = 326005, gadget_id = 70500000, pos = { x = 2146.610, y = 214.410, z = -589.419 }, rot = { x = 359.751, y = 251.613, z = 3.353 }, level = 1, point_type = 1005, persistent = true, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1326006, name = "GROUP_REFRESH_326006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_326006" },
	{ config_id = 1326007, name = "ANY_GADGET_DIE_326007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_326007", trigger_count = 0 },
	{ config_id = 1326008, name = "BLOSSOM_PROGRESS_FINISH_326008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_326008" },
	{ config_id = 1326009, name = "GROUP_LOAD_326009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_326009" }
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
		triggers = { "GROUP_LOAD_326009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_326006", "ANY_GADGET_DIE_326007", "BLOSSOM_PROGRESS_FINISH_326008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 326001, 326002, 326003, 326004, 326005 },
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
function action_EVENT_GROUP_REFRESH_326006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133004326, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004326, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_326007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133004326)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_326008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133004326, 3) then
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
function action_EVENT_GROUP_LOAD_326009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end