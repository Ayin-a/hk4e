-- 基础信息
local base_info = {
	group_id = 133102098
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 173, monster_id = 21010901, pos = { x = 1228.526, y = 200.000, z = -211.556 }, rot = { x = 0.000, y = 38.514, z = 0.000 }, level = 16, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 5 },
	{ config_id = 174, monster_id = 21010901, pos = { x = 1236.394, y = 200.675, z = -217.569 }, rot = { x = 9.756, y = 359.938, z = 2.635 }, level = 16, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 5 },
	{ config_id = 175, monster_id = 21010301, pos = { x = 1252.047, y = 199.920, z = -210.141 }, rot = { x = 0.000, y = 332.316, z = 0.000 }, level = 16, drop_tag = "丘丘人", pose_id = 9003, area_id = 5 },
	{ config_id = 181, monster_id = 21010301, pos = { x = 1241.661, y = 200.145, z = -211.591 }, rot = { x = 354.919, y = 251.674, z = 358.863 }, level = 16, drop_tag = "丘丘人", pose_id = 9003, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 369, gadget_id = 70211012, pos = { x = 1235.569, y = 200.685, z = -211.604 }, rot = { x = 359.702, y = 0.006, z = 357.837 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000204, name = "ANY_MONSTER_DIE_204", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_204", action = "action_EVENT_ANY_MONSTER_DIE_204" }
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
		monsters = { 173, 174, 175, 181 },
		gadgets = { 369 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_204" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_204(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_204(context, evt)
	-- 将configid为 369 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 369, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end