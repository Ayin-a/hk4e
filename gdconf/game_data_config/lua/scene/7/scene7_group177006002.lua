-- 基础信息
local base_info = {
	group_id = 177006002
}

-- DEFS_MISCS
local defs = {
	--groupID
	groupID = 177006002,

	--挑战操作台
	challenge_gadget = 2008,

	--挑战时间
	duration = 240,

	--出范围失败region
	regionID = 2006,

	--挑战ID
	challengeID = 111195,

	--怪物列表
	monster_array = {2001,2002},
	monster_min = 2,
	monster_max = 2,
	monster_count = 2
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 25100301, pos = { x = 452.105, y = 164.552, z = -270.934 }, rot = { x = 0.000, y = 197.749, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1032 }, pose_id = 1, area_id = 210 },
	{ config_id = 2002, monster_id = 25100401, pos = { x = 444.443, y = 164.899, z = -273.799 }, rot = { x = 0.000, y = 153.560, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, affix = { 1032 }, pose_id = 1, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2008, gadget_id = 70330160, pos = { x = 447.154, y = 165.068, z = -278.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 210 },
	{ config_id = 2010, gadget_id = 70360001, pos = { x = 447.153, y = 166.085, z = -278.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 2006, shape = RegionShape.SPHERE, radius = 50, pos = { x = 445.275, y = 165.164, z = -276.406 }, area_id = 210 }
}

-- 触发器
triggers = {
	{ config_id = 1002015, name = "ANY_MONSTER_DIE_2015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2015", action = "action_EVENT_ANY_MONSTER_DIE_2015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasFinished", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 2003, monster_id = 25080101, pos = { x = 446.342, y = 165.724, z = -284.501 }, rot = { x = 0.000, y = 359.904, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 210 },
		{ config_id = 2004, monster_id = 21010201, pos = { x = 452.260, y = 165.594, z = -283.292 }, rot = { x = 0.000, y = 309.152, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 210 },
		{ config_id = 2005, monster_id = 21010201, pos = { x = 440.598, y = 165.910, z = -279.978 }, rot = { x = 0.000, y = 16.634, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 210 }
	},
	triggers = {
		{ config_id = 1002011, name = "SELECT_OPTION_2011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2011", action = "action_EVENT_SELECT_OPTION_2011", trigger_count = 0 },
		{ config_id = 1002012, name = "CHALLENGE_SUCCESS_2012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2012", trigger_count = 0 },
		{ config_id = 1002013, name = "CHALLENGE_FAIL_2013", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2013", trigger_count = 0 },
		{ config_id = 1002014, name = "GADGET_STATE_CHANGE_2014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2014", action = "action_EVENT_GADGET_STATE_CHANGE_2014", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 2008, 2010 },
		regions = { 2006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 2001, 2002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ANY_MONSTER_DIE_2015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2015(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 177006002, 3)
	
	return 0
end

require "V2_5/RecircleChallenge"