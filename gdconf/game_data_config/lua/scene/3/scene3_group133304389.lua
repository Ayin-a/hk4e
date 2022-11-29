-- 基础信息
local base_info = {
	group_id = 133304389
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 389002, monster_id = 25020201, pos = { x = -1543.189, y = 230.696, z = 2923.102 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9002, area_id = 21 },
	{ config_id = 389003, monster_id = 25010301, pos = { x = -1533.605, y = 230.763, z = 2922.095 }, rot = { x = 0.000, y = 128.394, z = 0.000 }, level = 30, drop_tag = "盗宝团", pose_id = 9003, area_id = 21 },
	{ config_id = 389004, monster_id = 25070101, pos = { x = -1552.537, y = 227.227, z = 2927.771 }, rot = { x = 0.000, y = 309.973, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 389001, gadget_id = 70211002, pos = { x = -1539.916, y = 230.765, z = 2924.034 }, rot = { x = 0.000, y = 343.076, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1389005, name = "ANY_MONSTER_DIE_389005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_389005", action = "action_EVENT_ANY_MONSTER_DIE_389005", trigger_count = 0 }
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
		monsters = { 389002, 389003, 389004 },
		gadgets = { 389001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_389005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_389005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_389005(context, evt)
	-- 将configid为 389001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 389001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end