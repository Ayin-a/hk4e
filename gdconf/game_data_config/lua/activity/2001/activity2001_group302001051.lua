-- 基础信息
local base_info = {
	group_id = 302001051
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 51001, monster_id = 21020201, pos = { x = 1154.380, y = 204.442, z = -159.467 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 50, area_id = 5 },
	{ config_id = 51002, monster_id = 21020201, pos = { x = 1158.134, y = 204.589, z = -166.028 }, rot = { x = 0.000, y = 7.228, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 5 },
	{ config_id = 51003, monster_id = 21020201, pos = { x = 1154.380, y = 204.442, z = -159.467 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 5 },
	{ config_id = 51004, monster_id = 21020501, pos = { x = 1160.442, y = 203.895, z = -149.838 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 250, area_id = 5 },
	{ config_id = 51005, monster_id = 21020201, pos = { x = 1164.602, y = 204.259, z = -165.209 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, kill_score = 50, area_id = 5 },
	{ config_id = 51006, monster_id = 21010301, pos = { x = 1142.051, y = 205.610, z = -161.185 }, rot = { x = 0.000, y = 80.108, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 10, area_id = 5 },
	{ config_id = 51007, monster_id = 21010501, pos = { x = 1177.106, y = 202.654, z = -152.417 }, rot = { x = 0.000, y = 252.239, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 10, area_id = 5 },
	{ config_id = 51008, monster_id = 21011001, pos = { x = 1175.865, y = 202.878, z = -148.913 }, rot = { x = 0.000, y = 236.476, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 10, area_id = 5 },
	{ config_id = 51009, monster_id = 21020101, pos = { x = 1162.304, y = 205.277, z = -173.005 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 5 },
	{ config_id = 51010, monster_id = 21020201, pos = { x = 1143.029, y = 206.187, z = -167.776 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 5 },
	{ config_id = 51011, monster_id = 22010201, pos = { x = 1152.873, y = 206.227, z = -146.557 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 50, area_id = 5 },
	{ config_id = 51012, monster_id = 21020501, pos = { x = 1160.442, y = 203.895, z = -149.838 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 250, area_id = 5 },
	{ config_id = 51013, monster_id = 21020201, pos = { x = 1164.602, y = 204.259, z = -165.209 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 50, area_id = 5 },
	{ config_id = 51014, monster_id = 21010301, pos = { x = 1142.051, y = 205.610, z = -161.185 }, rot = { x = 0.000, y = 80.108, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 10, area_id = 5 },
	{ config_id = 51015, monster_id = 21010502, pos = { x = 1177.106, y = 202.654, z = -152.417 }, rot = { x = 0.000, y = 252.239, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 10, area_id = 5 },
	{ config_id = 51016, monster_id = 21011002, pos = { x = 1175.865, y = 202.878, z = -148.913 }, rot = { x = 0.000, y = 236.476, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 10, area_id = 5 },
	{ config_id = 51017, monster_id = 21020101, pos = { x = 1162.304, y = 205.277, z = -173.005 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 5 },
	{ config_id = 51018, monster_id = 21020202, pos = { x = 1143.029, y = 206.187, z = -167.776 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 30, area_id = 5 },
	{ config_id = 51019, monster_id = 22010202, pos = { x = 1152.873, y = 206.227, z = -146.557 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 1, drop_id = 1000100, kill_score = 50, area_id = 5 },
	{ config_id = 51020, monster_id = 21020201, pos = { x = 1158.134, y = 204.589, z = -166.028 }, rot = { x = 0.000, y = 7.228, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4103 }, kill_score = 50, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1051023, name = "ANY_MONSTER_DIE_51023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_51023", action = "action_EVENT_ANY_MONSTER_DIE_51023", trigger_count = 0 },
	{ config_id = 1051032, name = "ANY_MONSTER_DIE_51032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_51032", action = "action_EVENT_ANY_MONSTER_DIE_51032", trigger_count = 0 }
}

-- 变量
variables = {
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 51002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_51023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 51003, 51004, 51005, 51006, 51007, 51008, 51009, 51010, 51011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 51020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_51032" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 51001, 51012, 51013, 51014, 51015, 51016, 51017, 51018, 51019 },
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
function condition_EVENT_ANY_MONSTER_DIE_51023(context, evt)
	if 51002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_51023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001051, {51003,51004}, 99999, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_51032(context, evt)
	if 51020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_51032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为99999，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001051, {51001,51012}, 99999, 1, 1) then
		return -1
	end
	
	return 0
end