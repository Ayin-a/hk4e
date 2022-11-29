-- 基础信息
local base_info = {
	group_id = 133102343
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 343001, monster_id = 20010201, pos = { x = 1627.256, y = 202.808, z = 215.579 }, rot = { x = 355.351, y = 0.165, z = 350.069 }, level = 15, drop_tag = "大史莱姆", pose_id = 201, area_id = 5 },
	{ config_id = 343003, monster_id = 20010101, pos = { x = 1626.857, y = 202.737, z = 215.292 }, rot = { x = 346.067, y = 297.513, z = 13.235 }, level = 15, drop_tag = "史莱姆", pose_id = 201, area_id = 5 },
	{ config_id = 343004, monster_id = 20010101, pos = { x = 1627.124, y = 202.885, z = 215.799 }, rot = { x = 344.700, y = 3.552, z = 348.099 }, level = 15, drop_tag = "史莱姆", pose_id = 201, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 343006, gadget_id = 70211111, pos = { x = 1623.860, y = 204.493, z = 217.502 }, rot = { x = 13.558, y = 118.985, z = 352.702 }, level = 16, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 343002, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1627.098, y = 203.819, z = 215.640 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1343002, name = "ENTER_REGION_343002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1343005, name = "ANY_MONSTER_DIE_343005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_343005", action = "action_EVENT_ANY_MONSTER_DIE_343005" }
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
		monsters = { 343001 },
		gadgets = { },
		regions = { 343002 },
		triggers = { "ENTER_REGION_343002", "ANY_MONSTER_DIE_343005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 343003, 343004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 343006 },
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
function condition_EVENT_ANY_MONSTER_DIE_343005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_343005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102343, 3)
	
	return 0
end