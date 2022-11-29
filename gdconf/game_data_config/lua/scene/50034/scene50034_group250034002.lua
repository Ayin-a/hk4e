-- 基础信息
local base_info = {
	group_id = 250034002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 21010101, pos = { x = 64.588, y = 26.602, z = 24.384 }, rot = { x = 0.000, y = 286.296, z = 0.000 }, level = 1 },
	{ config_id = 2002, monster_id = 21010101, pos = { x = 67.880, y = 26.601, z = 20.708 }, rot = { x = 0.000, y = 187.525, z = 0.000 }, level = 1 },
	{ config_id = 2003, monster_id = 21010101, pos = { x = 66.569, y = 26.601, z = 23.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2004, monster_id = 21010101, pos = { x = 67.707, y = 26.604, z = 25.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2005, monster_id = 21010101, pos = { x = 66.148, y = 26.601, z = 28.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2006, monster_id = 21010101, pos = { x = 64.147, y = 26.603, z = 27.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2007, monster_id = 21020201, pos = { x = 63.841, y = 26.603, z = 21.440 }, rot = { x = 0.000, y = 166.749, z = 0.000 }, level = 1 },
	{ config_id = 2008, monster_id = 21010101, pos = { x = 62.439, y = 26.621, z = 28.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2009, monster_id = 21010101, pos = { x = 62.012, y = 26.602, z = 22.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2011, monster_id = 21010101, pos = { x = 38.558, y = 30.501, z = 21.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2012, monster_id = 21010101, pos = { x = 35.835, y = 30.501, z = 21.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2013, monster_id = 21010101, pos = { x = 40.499, y = 30.500, z = 18.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2014, monster_id = 21010101, pos = { x = 36.169, y = 30.501, z = 17.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
	{ config_id = 1002010, name = "ANY_MONSTER_LIVE_2010", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_2010", action = "action_EVENT_ANY_MONSTER_LIVE_2010" }
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
		monsters = { 2001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_2010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_2010(context, evt)
	if 2001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_2010(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为90，场上怪物最少7只，最多7只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 250034002, {2002,2003,2004,2005,2006,2007,2008,2009,2011,2012,2013,2014}, 90, 7, 7) then
		return -1
	end
	
	return 0
end