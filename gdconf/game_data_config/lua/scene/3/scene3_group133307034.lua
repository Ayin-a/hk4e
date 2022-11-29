-- 基础信息
local base_info = {
	group_id = 133307034
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 34001, monster_id = 25210203, pos = { x = -1939.202, y = 153.585, z = 5463.943 }, rot = { x = 0.000, y = 99.733, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9003, area_id = 27 },
	{ config_id = 34003, monster_id = 25210302, pos = { x = -1933.302, y = 153.054, z = 5462.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9511, area_id = 27 },
	{ config_id = 34005, monster_id = 25210301, pos = { x = -1933.600, y = 152.908, z = 5464.516 }, rot = { x = 0.000, y = 172.885, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9512, area_id = 27 },
	{ config_id = 34006, monster_id = 28060511, pos = { x = -1936.732, y = 154.712, z = 5452.447 }, rot = { x = 0.000, y = 14.715, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 27 },
	{ config_id = 34007, monster_id = 25210101, pos = { x = -1936.456, y = 153.203, z = 5464.060 }, rot = { x = 0.000, y = 123.426, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9505, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 34002, gadget_id = 70310006, pos = { x = -1934.945, y = 153.059, z = 5463.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 34008, gadget_id = 70211002, pos = { x = -1937.773, y = 153.326, z = 5469.875 }, rot = { x = 7.035, y = 89.238, z = 358.591 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1034009, name = "ANY_MONSTER_DIE_34009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_34009", action = "action_EVENT_ANY_MONSTER_DIE_34009", trigger_count = 0 }
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
		monsters = { 34001, 34003, 34005, 34006, 34007 },
		gadgets = { 34002, 34008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_34009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_34009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_34009(context, evt)
	-- 将configid为 34008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 34008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end