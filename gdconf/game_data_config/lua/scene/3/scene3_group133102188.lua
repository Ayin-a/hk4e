-- 基础信息
local base_info = {
	group_id = 133102188
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 344, monster_id = 23030101, pos = { x = 1608.142, y = 200.147, z = 313.069 }, rot = { x = 0.000, y = 131.598, z = 0.000 }, level = 20, drop_tag = "召唤师", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 680, gadget_id = 70310001, pos = { x = 1651.487, y = 200.554, z = 289.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 5 },
	{ config_id = 681, gadget_id = 70310001, pos = { x = 1636.466, y = 200.151, z = 290.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, state = GadgetState.GearStart, area_id = 5 },
	{ config_id = 682, gadget_id = 70310001, pos = { x = 1658.262, y = 200.129, z = 278.180 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 5 },
	{ config_id = 683, gadget_id = 70211012, pos = { x = 1615.096, y = 201.132, z = 319.216 }, rot = { x = 7.599, y = 226.105, z = 357.637 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 684, gadget_id = 70310006, pos = { x = 1676.763, y = 200.517, z = 292.397 }, rot = { x = 0.000, y = 308.733, z = 0.000 }, level = 18, isOneoff = true, persistent = true, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000488, name = "ANY_MONSTER_DIE_488", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_488", action = "action_EVENT_ANY_MONSTER_DIE_488", trigger_count = 0 }
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
		monsters = { 344 },
		gadgets = { 680, 681, 682, 683, 684 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_488" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_488(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_488(context, evt)
	-- 将configid为 683 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 683, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end