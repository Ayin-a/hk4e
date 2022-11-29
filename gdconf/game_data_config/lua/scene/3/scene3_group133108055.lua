-- 基础信息
local base_info = {
	group_id = 133108055
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 55001, monster_id = 24010101, pos = { x = -326.416, y = 200.335, z = -718.702 }, rot = { x = 0.000, y = 285.770, z = 0.000 }, level = 34, drop_tag = "遗迹守卫", pose_id = 101, area_id = 7 },
	{ config_id = 55002, monster_id = 24010101, pos = { x = -358.870, y = 201.185, z = -694.562 }, rot = { x = 0.000, y = 157.638, z = 0.000 }, level = 34, drop_tag = "遗迹守卫", pose_id = 101, area_id = 7 },
	{ config_id = 55003, monster_id = 24010101, pos = { x = -376.568, y = 202.063, z = -697.612 }, rot = { x = 0.000, y = 184.215, z = 0.000 }, level = 34, drop_tag = "遗迹守卫", pose_id = 101, area_id = 7 },
	{ config_id = 55004, monster_id = 24010101, pos = { x = -360.736, y = 201.189, z = -718.176 }, rot = { x = 0.000, y = 56.259, z = 0.000 }, level = 34, drop_tag = "遗迹守卫", pose_id = 101, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 55005, gadget_id = 70310007, pos = { x = -341.341, y = 200.854, z = -730.924 }, rot = { x = 0.000, y = 19.617, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 55006, gadget_id = 70310007, pos = { x = -336.446, y = 198.386, z = -701.122 }, rot = { x = 51.818, y = 19.617, z = 22.506 }, level = 32, area_id = 7 },
	{ config_id = 55007, gadget_id = 70310007, pos = { x = -358.219, y = 201.359, z = -740.200 }, rot = { x = 45.439, y = 334.542, z = 61.211 }, level = 32, area_id = 7 },
	{ config_id = 55008, gadget_id = 70310007, pos = { x = -368.481, y = 200.477, z = -710.444 }, rot = { x = 317.427, y = 82.052, z = 1.125 }, level = 32, area_id = 7 },
	{ config_id = 55009, gadget_id = 70310007, pos = { x = -366.547, y = 201.375, z = -681.150 }, rot = { x = 45.439, y = 334.542, z = 61.211 }, level = 32, area_id = 7 },
	{ config_id = 55010, gadget_id = 70211011, pos = { x = -359.113, y = 200.834, z = -717.035 }, rot = { x = 4.008, y = 63.584, z = 356.023 }, level = 26, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 55011, gadget_id = 70211031, pos = { x = -353.008, y = 200.504, z = -716.493 }, rot = { x = 1.084, y = 13.911, z = 359.346 }, level = 26, drop_tag = "战斗超级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 55013, gadget_id = 70310007, pos = { x = -326.416, y = 200.335, z = -718.702 }, rot = { x = 0.000, y = 285.770, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 55014, gadget_id = 70310007, pos = { x = -358.870, y = 201.185, z = -694.562 }, rot = { x = 0.000, y = 157.638, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 55015, gadget_id = 70310007, pos = { x = -376.568, y = 202.138, z = -697.612 }, rot = { x = 0.000, y = 184.215, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 55016, gadget_id = 70310007, pos = { x = -360.736, y = 201.025, z = -718.176 }, rot = { x = 0.000, y = 56.259, z = 0.000 }, level = 32, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1055012, name = "ANY_MONSTER_DIE_55012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_55012", action = "action_EVENT_ANY_MONSTER_DIE_55012" }
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
		monsters = { 55001, 55002, 55003, 55004 },
		gadgets = { 55005, 55006, 55007, 55008, 55009, 55010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_55012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 55011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 55005, 55006, 55007, 55008, 55009, 55013, 55014, 55015, 55016 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_55012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_55012(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133108055, 2)
	
	return 0
end