-- 基础信息
local base_info = {
	group_id = 235880001
}

-- DEFS_MISCS
local defs =
{
--操作台id
    starter_gadget = 1001,
--gallery id
    gallery_id = 35001,
--传送点 id 
    teleportPos_id = 1005,
    groups_info = 
    {
       --主控group 怪物数量不用管
        [1] = {id = 235880001, monster_num = 0,},
       --第一组玩法group
        [2] = {id = 235880002, monster_num = 28,},
       --第二组玩法group
        [3] = {id = 235880003, monster_num = 21,},
       --第三组玩法group
        [4] = {id = 235880004, monster_num = 24,},
    },
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
	[1001] = { config_id = 1001, gadget_id = 70800446, pos = { x = 219.037, y = 90.180, z = 213.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001002, name = "VARIABLE_CHANGE_1002", event = EventType.EVENT_VARIABLE_CHANGE, source = "GALLERY_STATE", condition = "condition_EVENT_VARIABLE_CHANGE_1002", action = "action_EVENT_VARIABLE_CHANGE_1002", trigger_count = 0 },
	{ config_id = 1001003, name = "VARIABLE_CHANGE_1003", event = EventType.EVENT_VARIABLE_CHANGE, source = "GALLERY_STATE", condition = "condition_EVENT_VARIABLE_CHANGE_1003", action = "action_EVENT_VARIABLE_CHANGE_1003", trigger_count = 0 },
	{ config_id = 1001004, name = "VARIABLE_CHANGE_1004", event = EventType.EVENT_VARIABLE_CHANGE, source = "GALLERY_STATE", condition = "condition_EVENT_VARIABLE_CHANGE_1004", action = "action_EVENT_VARIABLE_CHANGE_1004", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 1005, pos = { x = 235.500, y = 92.053, z = 183.755 }, rot = { x = 0.000, y = 327.733, z = 0.000 } }
}

-- 变量
variables = {
	{ config_id = 1, name = "GALLERY_STATE", value = 0, no_refresh = false }
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
		gadgets = { 1001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_1002", "VARIABLE_CHANGE_1003", "VARIABLE_CHANGE_1004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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

-- 自动持续刷怪
function TLA_active_monster_tide(context, evt, source_name, group_id, monster_table, total_num, min, max)
	-- 创建编号为source_name（该怪物潮的识别id)的怪物潮，创建怪物总数为total_num，场上怪物最少min只，最多max只
	if 0 ~= ScriptLib.AutoMonsterTide(context, source_name, group_id, monster_table, total_num, min, max) then
		return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GALLERY_STATE"为1
	if ScriptLib.GetGroupVariableValue(context, "GALLERY_STATE") ~= 1 then
			return false
	end
	
	-- 判断变量"GROUP_INDEX"为2
	if ScriptLib.GetGroupVariableValue(context, "GROUP_INDEX") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1002(context, evt)
	TLA_active_monster_tide(context, evt, 1, 235880002, {2001,2002,2003,2004,2005,2006,2008,2009}, 8, 2, 2)
	
	TLA_active_monster_tide(context, evt, 2, 235880002, {2010,2011,2012,2013,2014,2015,2016,2017}, 8, 2, 2)
	
	TLA_active_monster_tide(context, evt, 3, 235880002, {2018,2019,2020,2021}, 4, 1, 1)
	
	TLA_active_monster_tide(context, evt, 4, 235880002, {2026,2027,2028,2029,2030,2031,2032,2033}, 8, 2, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GALLERY_STATE"为1
	if ScriptLib.GetGroupVariableValue(context, "GALLERY_STATE") ~= 1 then
			return false
	end
	
	-- 判断变量"GROUP_INDEX"为3
	if ScriptLib.GetGroupVariableValue(context, "GROUP_INDEX") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1003(context, evt)
	TLA_active_monster_tide(context, evt, 1, 235880003, {3002,3003,3004,3005,3006,3007,3008,3009,3010}, 9, 3, 3)
	
	TLA_active_monster_tide(context, evt, 2, 235880003, {3011,3012,3013,3014,3015,3016}, 6, 2, 2)
	
	TLA_active_monster_tide(context, evt, 3, 235880003, {3017,3018,3019}, 3, 1, 1)
	
	TLA_active_monster_tide(context, evt, 4, 235880003, {3020,3021,3022}, 3, 1, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GALLERY_STATE"为1
	if ScriptLib.GetGroupVariableValue(context, "GALLERY_STATE") ~= 1 then
			return false
	end
	
	-- 判断变量"GROUP_INDEX"为4
	if ScriptLib.GetGroupVariableValue(context, "GROUP_INDEX") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1004(context, evt)
	TLA_active_monster_tide(context, evt, 1, 235880004, {4002,4003,4004,4005,4006,4007,4008,4009,4010,4011,4012,4013}, 12, 6, 6)
	
	return 0
end

require "V3_4/Activity_TeamChainChallenge"