-- 基础信息
local base_info = {
	group_id = 133308459
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 459001, monster_id = 21020501, pos = { x = -1855.749, y = 132.680, z = 4917.276 }, rot = { x = 0.000, y = 10.662, z = 0.000 }, level = 32, drop_tag = "丘丘岩盔王", disableWander = true, area_id = 26 },
	{ config_id = 459006, monster_id = 21010501, pos = { x = -1846.148, y = 132.840, z = 4914.178 }, rot = { x = 0.000, y = 277.318, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 26 },
	{ config_id = 459007, monster_id = 21010401, pos = { x = -1851.727, y = 135.213, z = 4909.533 }, rot = { x = 0.000, y = 331.953, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", pose_id = 402, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 459002, gadget_id = 70211012, pos = { x = -1843.849, y = 135.758, z = 4904.042 }, rot = { x = 6.937, y = 328.758, z = 345.562 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 459004, gadget_id = 70300086, pos = { x = -1861.653, y = 131.786, z = 4929.269 }, rot = { x = 4.550, y = 1.070, z = 344.303 }, level = 32, area_id = 26 },
	{ config_id = 459005, gadget_id = 70300086, pos = { x = -1856.004, y = 131.421, z = 4928.250 }, rot = { x = 3.494, y = 358.090, z = 21.373 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	{ config_id = 459008, gadget_id = 70300081, pos = { x = -1841.694, y = 130.632, z = 4916.883 }, rot = { x = 0.714, y = 315.168, z = 346.563 }, level = 32, area_id = 26 },
	{ config_id = 459009, gadget_id = 70300081, pos = { x = -1858.650, y = 133.967, z = 4909.999 }, rot = { x = 352.431, y = 177.016, z = 6.467 }, level = 32, area_id = 26 },
	{ config_id = 459010, gadget_id = 70300086, pos = { x = -1858.553, y = 131.129, z = 4932.644 }, rot = { x = 346.712, y = 2.065, z = 356.764 }, level = 32, area_id = 26 },
	{ config_id = 459011, gadget_id = 70300107, pos = { x = -1859.019, y = 131.643, z = 4929.695 }, rot = { x = 4.454, y = 359.826, z = 355.533 }, level = 32, state = GadgetState.GearStart, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1459003, name = "ANY_MONSTER_DIE_459003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_459003", action = "action_EVENT_ANY_MONSTER_DIE_459003" }
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
		monsters = { 459001, 459006, 459007 },
		gadgets = { 459002, 459004, 459005, 459008, 459009, 459010, 459011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_459003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_459003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_459003(context, evt)
	-- 将configid为 459002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 459002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end