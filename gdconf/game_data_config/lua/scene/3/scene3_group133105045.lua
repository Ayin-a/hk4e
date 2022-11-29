-- 基础信息
local base_info = {
	group_id = 133105045
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 163, monster_id = 21010201, pos = { x = 800.012, y = 238.582, z = -219.647 }, rot = { x = 0.000, y = 342.544, z = 0.000 }, level = 23, drop_tag = "丘丘人", pose_id = 9003, area_id = 9 },
	{ config_id = 165, monster_id = 21010201, pos = { x = 786.008, y = 239.343, z = -218.905 }, rot = { x = 0.000, y = 304.851, z = 0.000 }, level = 23, drop_tag = "丘丘人", pose_id = 9016, area_id = 9 },
	{ config_id = 166, monster_id = 21010201, pos = { x = 799.056, y = 238.499, z = -217.405 }, rot = { x = 0.000, y = 42.282, z = 0.000 }, level = 23, drop_tag = "丘丘人", pose_id = 9016, area_id = 9 },
	{ config_id = 174, monster_id = 21020201, pos = { x = 795.633, y = 239.216, z = -227.030 }, rot = { x = 0.000, y = 173.244, z = 0.000 }, level = 23, drop_tag = "丘丘暴徒", isElite = true, area_id = 9 },
	{ config_id = 45001, monster_id = 21010401, pos = { x = 787.294, y = 240.674, z = -233.375 }, rot = { x = 0.000, y = 53.682, z = 0.000 }, level = 23, drop_tag = "远程丘丘人", pose_id = 9002, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 225, gadget_id = 70211012, pos = { x = 787.313, y = 239.270, z = -223.174 }, rot = { x = 2.834, y = 73.064, z = 1.678 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 245, gadget_id = 70220005, pos = { x = 798.681, y = 238.435, z = -219.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, area_id = 9 },
	{ config_id = 246, gadget_id = 70220005, pos = { x = 780.648, y = 239.540, z = -219.727 }, rot = { x = 0.000, y = 124.843, z = 0.000 }, level = 25, area_id = 9 },
	{ config_id = 247, gadget_id = 70220005, pos = { x = 786.710, y = 239.195, z = -219.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000130, name = "ANY_MONSTER_DIE_130", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_130", action = "action_EVENT_ANY_MONSTER_DIE_130" }
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
		monsters = { 163, 165, 166, 174, 45001 },
		gadgets = { 225, 245, 246, 247 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_130" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
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
function condition_EVENT_ANY_MONSTER_DIE_130(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_130(context, evt)
	-- 解锁目标225
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 225, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end