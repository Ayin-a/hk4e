-- 基础信息
local base_info = {
	group_id = 133305008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 28060401, pos = { x = -2377.520, y = 220.337, z = 4082.928 }, rot = { x = 0.000, y = 126.699, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 2, area_id = 26 },
	{ config_id = 8002, monster_id = 28060401, pos = { x = -2378.961, y = 217.665, z = 4086.738 }, rot = { x = 0.000, y = 72.088, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 2, area_id = 26 },
	{ config_id = 8003, monster_id = 28060401, pos = { x = -2381.418, y = 217.116, z = 4078.009 }, rot = { x = 0.000, y = 113.435, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 2, area_id = 26 },
	{ config_id = 8006, monster_id = 28060401, pos = { x = -2385.347, y = 214.228, z = 4067.592 }, rot = { x = 0.000, y = 126.699, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 26 },
	{ config_id = 8007, monster_id = 28060401, pos = { x = -2394.033, y = 214.419, z = 4060.990 }, rot = { x = 0.000, y = 309.427, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8004, gadget_id = 70211002, pos = { x = -2378.586, y = 220.651, z = 4081.061 }, rot = { x = 7.495, y = 224.080, z = 345.559 }, level = 26, chest_drop_id = 2004800, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1008005, name = "ANY_MONSTER_DIE_8005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8005", action = "action_EVENT_ANY_MONSTER_DIE_8005" }
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
		monsters = { 8001, 8002, 8003, 8006, 8007 },
		gadgets = { 8004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_8005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8005(context, evt)
	-- 将configid为 8004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end