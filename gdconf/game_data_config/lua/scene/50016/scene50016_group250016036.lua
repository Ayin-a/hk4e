-- 基础信息
local base_info = {
	group_id = 250016036
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 36005, monster_id = 20010801, pos = { x = -380.739, y = 16.000, z = 735.309 }, rot = { x = 0.000, y = 88.653, z = 0.000 }, level = 1 },
	{ config_id = 36006, monster_id = 20010801, pos = { x = -373.015, y = 16.000, z = 723.879 }, rot = { x = 0.000, y = 16.490, z = 0.000 }, level = 1 },
	{ config_id = 36007, monster_id = 20010801, pos = { x = -370.540, y = 16.000, z = 744.530 }, rot = { x = 0.000, y = 151.549, z = 0.000 }, level = 1 },
	{ config_id = 36008, monster_id = 20010801, pos = { x = -363.981, y = 16.000, z = 724.326 }, rot = { x = 0.000, y = 336.685, z = 0.000 }, level = 1 },
	{ config_id = 36009, monster_id = 20010801, pos = { x = -364.778, y = 16.000, z = 754.765 }, rot = { x = 0.000, y = 336.685, z = 0.000 }, level = 1 },
	{ config_id = 36010, monster_id = 20010801, pos = { x = -363.284, y = 16.000, z = 740.449 }, rot = { x = 0.000, y = 336.685, z = 0.000 }, level = 1 },
	{ config_id = 36011, monster_id = 20010801, pos = { x = -376.071, y = 16.000, z = 752.814 }, rot = { x = 0.000, y = 336.685, z = 0.000 }, level = 1 },
	{ config_id = 36012, monster_id = 20010801, pos = { x = -380.345, y = 16.000, z = 722.679 }, rot = { x = 0.000, y = 336.685, z = 0.000 }, level = 1 },
	{ config_id = 36013, monster_id = 20010801, pos = { x = -368.488, y = 16.000, z = 712.666 }, rot = { x = 0.000, y = 336.685, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 36001, gadget_id = 70350004, pos = { x = -392.983, y = 16.000, z = 727.657 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 36002, gadget_id = 70350004, pos = { x = -392.772, y = 16.000, z = 733.832 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 36003, gadget_id = 70350004, pos = { x = -392.541, y = 16.000, z = 739.892 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 36004, gadget_id = 70350004, pos = { x = -392.312, y = 16.000, z = 745.908 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1036014, name = "ANY_MONSTER_DIE_36014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_36014", action = "action_EVENT_ANY_MONSTER_DIE_36014" }
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
		monsters = { 36005, 36006, 36007, 36008, 36009, 36010, 36011, 36012, 36013 },
		gadgets = { 36001, 36002, 36003, 36004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_36014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_36014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_36014(context, evt)
	-- 将configid为 36001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 36002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 36003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 36004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end