-- 基础信息
local base_info = {
	group_id = 133304072
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 72002, monster_id = 25210201, pos = { x = -1545.185, y = 201.143, z = 2690.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "镀金旅团", pose_id = 9006, area_id = 21 },
	{ config_id = 72003, monster_id = 25210401, pos = { x = -1530.177, y = 206.269, z = 2678.404 }, rot = { x = 0.000, y = 42.931, z = 0.000 }, level = 30, drop_tag = "镀金旅团", area_id = 21 },
	{ config_id = 72004, monster_id = 25210101, pos = { x = -1538.753, y = 201.473, z = 2691.599 }, rot = { x = 0.000, y = 326.825, z = 0.000 }, level = 30, drop_tag = "镀金旅团", pose_id = 9003, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 72001, gadget_id = 70211002, pos = { x = -1526.874, y = 204.302, z = 2685.342 }, rot = { x = 17.665, y = 50.270, z = 356.999 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1072005, name = "ANY_MONSTER_DIE_72005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_72005", action = "action_EVENT_ANY_MONSTER_DIE_72005", trigger_count = 0 }
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
		monsters = { 72002, 72003, 72004 },
		gadgets = { 72001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_72005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_72005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_72005(context, evt)
	-- 将configid为 72001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 72001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end