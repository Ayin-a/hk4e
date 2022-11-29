-- 基础信息
local base_info = {
	group_id = 133108044
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 44001, monster_id = 21020201, pos = { x = -176.908, y = 201.388, z = -1006.005 }, rot = { x = 0.000, y = 165.535, z = 0.000 }, level = 33, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 7 },
	{ config_id = 44004, monster_id = 21020201, pos = { x = -193.613, y = 200.740, z = -1010.076 }, rot = { x = 0.000, y = 126.600, z = 0.000 }, level = 33, drop_tag = "丘丘暴徒", disableWander = true, area_id = 7 },
	{ config_id = 44005, monster_id = 22010101, pos = { x = -183.984, y = 200.407, z = -1000.740 }, rot = { x = 0.000, y = 158.553, z = 0.000 }, level = 33, drop_tag = "深渊法师", area_id = 7 },
	{ config_id = 44006, monster_id = 21011201, pos = { x = -180.095, y = 200.003, z = -994.290 }, rot = { x = 0.000, y = 93.928, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9012, area_id = 7 },
	{ config_id = 44007, monster_id = 21011001, pos = { x = -192.877, y = 200.591, z = -993.977 }, rot = { x = 0.000, y = 53.645, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 44002, gadget_id = 70211022, pos = { x = -189.147, y = 205.068, z = -1015.357 }, rot = { x = 0.000, y = 335.380, z = 0.000 }, level = 26, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 44008, gadget_id = 70310009, pos = { x = -213.622, y = 201.555, z = -1011.718 }, rot = { x = 7.071, y = 359.559, z = 352.875 }, level = 32, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1044003, name = "ANY_MONSTER_DIE_44003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_44003", action = "action_EVENT_ANY_MONSTER_DIE_44003" }
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
		monsters = { 44001, 44004, 44005, 44006, 44007 },
		gadgets = { 44002, 44008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_44003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_44003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_44003(context, evt)
	-- 将configid为 44002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 44002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end