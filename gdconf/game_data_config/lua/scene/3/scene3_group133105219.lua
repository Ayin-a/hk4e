-- 基础信息
local base_info = {
	group_id = 133105219
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 219001, monster_id = 24010201, pos = { x = 333.054, y = 199.900, z = -176.472 }, rot = { x = 0.000, y = 34.793, z = 0.000 }, level = 19, drop_tag = "遗迹守卫", pose_id = 101, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 219003, gadget_id = 70211021, pos = { x = 333.385, y = 199.793, z = -180.447 }, rot = { x = 0.000, y = 359.439, z = 0.000 }, level = 16, drop_tag = "战斗高级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 219004, gadget_id = 70310007, pos = { x = 344.917, y = 198.576, z = -176.846 }, rot = { x = 306.613, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 219005, gadget_id = 70310007, pos = { x = 328.149, y = 198.320, z = -164.318 }, rot = { x = 10.978, y = 76.413, z = 60.396 }, level = 19, area_id = 9 },
	{ config_id = 219006, gadget_id = 70310007, pos = { x = 346.665, y = 199.216, z = -165.947 }, rot = { x = 80.322, y = 204.918, z = 48.282 }, level = 19, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1219002, name = "ANY_MONSTER_DIE_219002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_219002", action = "action_EVENT_ANY_MONSTER_DIE_219002" }
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
		monsters = { 219001 },
		gadgets = { 219004, 219005, 219006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_219002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 219003 },
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
function condition_EVENT_ANY_MONSTER_DIE_219002(context, evt)
	if 219001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_219002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105219, 2)
	
	return 0
end