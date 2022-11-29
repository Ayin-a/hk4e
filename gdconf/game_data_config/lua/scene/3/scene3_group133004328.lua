-- 基础信息
local base_info = {
	group_id = 133004328
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
	{ config_id = 328001, gadget_id = 70500000, pos = { x = 2063.760, y = 261.838, z = -337.080 }, rot = { x = 5.278, y = 336.401, z = 61.028 }, level = 1, point_type = 1003, persistent = true, area_id = 3 },
	{ config_id = 328002, gadget_id = 70500000, pos = { x = 2072.206, y = 262.990, z = -341.341 }, rot = { x = 346.554, y = 357.343, z = 22.258 }, level = 1, point_type = 1003, persistent = true, area_id = 3 },
	{ config_id = 328003, gadget_id = 70360001, pos = { x = 2069.640, y = 260.764, z = -342.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 3 },
	{ config_id = 328004, gadget_id = 70500000, pos = { x = 2068.053, y = 261.826, z = -340.929 }, rot = { x = 0.125, y = 1.038, z = 16.192 }, level = 1, point_type = 1005, persistent = true, area_id = 3 },
	{ config_id = 328005, gadget_id = 70500000, pos = { x = 2071.656, y = 260.197, z = -350.129 }, rot = { x = 4.463, y = 0.105, z = 2.684 }, level = 1, point_type = 1005, persistent = true, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1328006, name = "GROUP_REFRESH_328006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_328006" },
	{ config_id = 1328007, name = "ANY_GADGET_DIE_328007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_328007", trigger_count = 0 },
	{ config_id = 1328008, name = "BLOSSOM_PROGRESS_FINISH_328008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_328008" },
	{ config_id = 1328009, name = "GROUP_LOAD_328009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_328009" }
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
		triggers = { "GROUP_LOAD_328009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_328006", "ANY_GADGET_DIE_328007", "BLOSSOM_PROGRESS_FINISH_328008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 328001, 328002, 328003, 328004, 328005 },
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
function action_EVENT_GROUP_REFRESH_328006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133004328, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004328, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_328007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133004328)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_328008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133004328, 3) then
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
function action_EVENT_GROUP_LOAD_328009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end