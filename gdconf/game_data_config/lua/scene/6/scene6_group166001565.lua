-- 基础信息
local base_info = {
	group_id = 166001565
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 565002, monster_id = 22010101, pos = { x = 435.133, y = 189.073, z = 708.706 }, rot = { x = 0.000, y = 127.985, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9013, area_id = 300 },
	{ config_id = 565003, monster_id = 22010401, pos = { x = 441.355, y = 188.930, z = 710.947 }, rot = { x = 0.000, y = 296.629, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9013, area_id = 300 },
	{ config_id = 565004, monster_id = 22010301, pos = { x = 433.816, y = 190.374, z = 704.615 }, rot = { x = 0.000, y = 329.778, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 9013, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 565001, shape = RegionShape.SPHERE, radius = 25, pos = { x = 439.475, y = 191.309, z = 704.948 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1565001, name = "ENTER_REGION_565001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_565001" },
	{ config_id = 1565006, name = "ANY_MONSTER_DIE_565006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_565006", action = "action_EVENT_ANY_MONSTER_DIE_565006" }
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
	end_suite = 3,
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
		monsters = { 565002 },
		gadgets = { },
		regions = { 565001 },
		triggers = { "ENTER_REGION_565001", "ANY_MONSTER_DIE_565006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 565003, 565004 },
		gadgets = { },
		regions = { },
		triggers = { },
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
	},
	{
		-- suite_id = 4,
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

-- 触发操作
function action_EVENT_ENTER_REGION_565001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001565, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_565006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_565006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 166001565, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end