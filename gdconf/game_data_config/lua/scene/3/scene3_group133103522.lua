-- 基础信息
local base_info = {
	group_id = 133103522
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
	{ config_id = 522001, gadget_id = 70500000, pos = { x = 828.027, y = 276.345, z = 1331.785 }, rot = { x = 350.199, y = 0.642, z = 346.489 }, level = 1, point_type = 1003, persistent = true, area_id = 6 },
	{ config_id = 522002, gadget_id = 70500000, pos = { x = 828.476, y = 275.359, z = 1327.941 }, rot = { x = 7.680, y = 309.495, z = 3.304 }, level = 1, point_type = 1003, persistent = true, area_id = 6 },
	{ config_id = 522003, gadget_id = 70360001, pos = { x = 829.302, y = 276.024, z = 1328.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 6 },
	{ config_id = 522004, gadget_id = 70500000, pos = { x = 828.721, y = 275.744, z = 1329.669 }, rot = { x = 335.218, y = 307.447, z = 2.711 }, level = 1, point_type = 1005, persistent = true, area_id = 6 },
	{ config_id = 522005, gadget_id = 70500000, pos = { x = 826.364, y = 275.300, z = 1325.902 }, rot = { x = 339.575, y = 328.310, z = 3.571 }, level = 1, point_type = 1005, persistent = true, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1522006, name = "GROUP_REFRESH_522006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_522006" },
	{ config_id = 1522007, name = "ANY_GADGET_DIE_522007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_522007", trigger_count = 0 },
	{ config_id = 1522008, name = "BLOSSOM_PROGRESS_FINISH_522008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_522008" },
	{ config_id = 1522009, name = "GROUP_LOAD_522009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_522009" }
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
		triggers = { "GROUP_LOAD_522009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_522006", "ANY_GADGET_DIE_522007", "BLOSSOM_PROGRESS_FINISH_522008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 522001, 522002, 522003, 522004, 522005 },
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
function action_EVENT_GROUP_REFRESH_522006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133103522, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103522, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_522007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133103522)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_522008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133103522, 3) then
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
function action_EVENT_GROUP_LOAD_522009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end