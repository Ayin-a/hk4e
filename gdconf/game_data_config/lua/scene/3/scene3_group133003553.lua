-- 基础信息
local base_info = {
	group_id = 133003553
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
	{ config_id = 553001, gadget_id = 70500000, pos = { x = 2253.097, y = 206.888, z = -1803.825 }, rot = { x = 330.500, y = 3.192, z = 347.918 }, level = 1, point_type = 1003, persistent = true, area_id = 1 },
	{ config_id = 553002, gadget_id = 70500000, pos = { x = 2249.575, y = 206.647, z = -1805.793 }, rot = { x = 330.048, y = 353.290, z = 24.722 }, level = 1, point_type = 1003, persistent = true, area_id = 1 },
	{ config_id = 553003, gadget_id = 70360001, pos = { x = 2250.336, y = 207.584, z = -1804.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 1 },
	{ config_id = 553004, gadget_id = 70500000, pos = { x = 2251.784, y = 206.488, z = -1805.618 }, rot = { x = 3.367, y = 321.395, z = 8.743 }, level = 1, point_type = 1005, persistent = true, area_id = 1 },
	{ config_id = 553005, gadget_id = 70500000, pos = { x = 2243.571, y = 205.441, z = -1803.836 }, rot = { x = 353.318, y = 30.990, z = 5.559 }, level = 1, point_type = 1005, persistent = true, area_id = 1 },
	{ config_id = 553010, gadget_id = 70500000, pos = { x = 2254.908, y = 207.187, z = -1801.761 }, rot = { x = 5.354, y = 273.542, z = 3.223 }, level = 1, point_type = 1005, persistent = true, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1553006, name = "GROUP_REFRESH_553006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_553006" },
	{ config_id = 1553007, name = "ANY_GADGET_DIE_553007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_553007", trigger_count = 0 },
	{ config_id = 1553008, name = "BLOSSOM_PROGRESS_FINISH_553008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_553008" },
	{ config_id = 1553009, name = "GROUP_LOAD_553009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_553009" }
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
		triggers = { "GROUP_LOAD_553009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_553006", "ANY_GADGET_DIE_553007", "BLOSSOM_PROGRESS_FINISH_553008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 553001, 553002, 553003, 553004, 553005, 553010 },
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
function action_EVENT_GROUP_REFRESH_553006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133003553, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003553, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_553007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133003553)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_553008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133003553, 3) then
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
function action_EVENT_GROUP_LOAD_553009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end