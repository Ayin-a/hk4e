-- 基础信息
local base_info = {
	group_id = 133108119
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
	{ config_id = 119001, gadget_id = 70500000, pos = { x = -352.250, y = 200.246, z = -781.304 }, rot = { x = 359.105, y = 0.007, z = 359.105 }, level = 1, point_type = 1003, persistent = true, area_id = 7 },
	{ config_id = 119002, gadget_id = 70500000, pos = { x = -344.544, y = 200.280, z = -778.842 }, rot = { x = 359.105, y = 0.000, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 7 },
	{ config_id = 119003, gadget_id = 70360001, pos = { x = -347.776, y = 202.559, z = -781.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 7 },
	{ config_id = 119004, gadget_id = 70500000, pos = { x = -347.082, y = 200.245, z = -782.518 }, rot = { x = 0.000, y = 0.000, z = 0.895 }, level = 1, point_type = 1005, persistent = true, area_id = 7 },
	{ config_id = 119005, gadget_id = 70500000, pos = { x = -356.292, y = 200.569, z = -779.277 }, rot = { x = 0.533, y = 85.544, z = 344.207 }, level = 1, point_type = 1005, persistent = true, area_id = 7 },
	{ config_id = 119010, gadget_id = 70500000, pos = { x = -333.944, y = 201.753, z = -777.016 }, rot = { x = 343.957, y = 44.641, z = 357.667 }, level = 1, point_type = 1005, persistent = true, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1119006, name = "GROUP_REFRESH_119006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_119006" },
	{ config_id = 1119007, name = "ANY_GADGET_DIE_119007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_119007", trigger_count = 0 },
	{ config_id = 1119008, name = "BLOSSOM_PROGRESS_FINISH_119008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_119008" },
	{ config_id = 1119009, name = "GROUP_LOAD_119009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_119009" }
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
		triggers = { "GROUP_LOAD_119009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_119006", "ANY_GADGET_DIE_119007", "BLOSSOM_PROGRESS_FINISH_119008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 119001, 119002, 119003, 119004, 119005, 119010 },
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
function action_EVENT_GROUP_REFRESH_119006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133108119, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108119, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_119007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133108119)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_119008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133108119, 3) then
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
function action_EVENT_GROUP_LOAD_119009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end