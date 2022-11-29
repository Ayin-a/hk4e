-- 基础信息
local base_info = {
	group_id = 133106280
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
	{ config_id = 280001, gadget_id = 70500000, pos = { x = -786.330, y = 170.297, z = 779.103 }, rot = { x = 0.000, y = 0.000, z = 359.105 }, level = 1, point_type = 1003, persistent = true, area_id = 8 },
	{ config_id = 280002, gadget_id = 70500000, pos = { x = -789.165, y = 170.323, z = 775.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 8 },
	{ config_id = 280003, gadget_id = 70360001, pos = { x = -793.145, y = 170.279, z = 780.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 8 },
	{ config_id = 280004, gadget_id = 70500000, pos = { x = -791.995, y = 170.323, z = 785.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 8 },
	{ config_id = 280005, gadget_id = 70500000, pos = { x = -790.693, y = 170.323, z = 786.480 }, rot = { x = 0.000, y = 289.059, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 8 },
	{ config_id = 280010, gadget_id = 70500000, pos = { x = -788.131, y = 170.323, z = 777.595 }, rot = { x = 0.000, y = 304.189, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1280006, name = "GROUP_REFRESH_280006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_280006" },
	{ config_id = 1280007, name = "ANY_GADGET_DIE_280007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_280007", trigger_count = 0 },
	{ config_id = 1280008, name = "BLOSSOM_PROGRESS_FINISH_280008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_280008" },
	{ config_id = 1280009, name = "GROUP_LOAD_280009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_280009" }
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
		triggers = { "GROUP_LOAD_280009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_280006", "ANY_GADGET_DIE_280007", "BLOSSOM_PROGRESS_FINISH_280008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 280001, 280002, 280003, 280004, 280005, 280010 },
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
function action_EVENT_GROUP_REFRESH_280006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133106280, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106280, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_280007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133106280)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_280008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133106280, 3) then
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
function action_EVENT_GROUP_LOAD_280009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end