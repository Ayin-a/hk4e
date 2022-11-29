-- 基础信息
local base_info = {
	group_id = 199004068
}

-- Trigger变量
local defs = {
	duration = 30,
	kill_sum = 3,
	group_id = 199004068,
	gadget_controller_id = 68004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 68001, monster_id = 20060201, pos = { x = -387.156, y = 174.516, z = -600.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 101, area_id = 400 },
	{ config_id = 68010, monster_id = 20060201, pos = { x = -383.181, y = 172.552, z = -595.888 }, rot = { x = 0.000, y = 275.703, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 101, area_id = 400 },
	{ config_id = 68011, monster_id = 20060201, pos = { x = -390.777, y = 172.431, z = -594.566 }, rot = { x = 0.000, y = 86.436, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 101, area_id = 400 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 68003, shape = RegionShape.SPHERE, radius = 12, pos = { x = -385.830, y = 173.104, z = -596.223 }, area_id = 400 }
}

-- 触发器
triggers = {
	{ config_id = 1068003, name = "ENTER_REGION_68003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_68003", action = "action_EVENT_ENTER_REGION_68003" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 68002, gadget_id = 70350082, pos = { x = -387.235, y = 173.104, z = -596.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 400 },
		{ config_id = 68004, gadget_id = 70360001, pos = { x = -387.244, y = 173.573, z = -596.180 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 }
	},
	triggers = {
		{ config_id = 1068005, name = "GROUP_LOAD_68005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_68005", action = "action_EVENT_GROUP_LOAD_68005", trigger_count = 0 },
		{ config_id = 1068006, name = "CHALLENGE_SUCCESS_68006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_68006", trigger_count = 0 },
		{ config_id = 1068007, name = "CHALLENGE_FAIL_68007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_68007", trigger_count = 0 },
		{ config_id = 1068008, name = "GADGET_CREATE_68008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_68008", action = "action_EVENT_GADGET_CREATE_68008", trigger_count = 0 },
		{ config_id = 1068009, name = "SELECT_OPTION_68009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_68009", action = "action_EVENT_SELECT_OPTION_68009", trigger_count = 0 }
	}
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
		-- description = suite_1,
		monsters = { 68001 },
		gadgets = { },
		regions = { 68003 },
		triggers = { "ENTER_REGION_68003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 68010, 68011 },
		gadgets = { },
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

-- 触发条件
function condition_EVENT_ENTER_REGION_68003(context, evt)
	if evt.param1 ~= 68003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_68003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004068, 2)
	
	return 0
end