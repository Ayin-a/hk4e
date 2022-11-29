-- 基础信息
local base_info = {
	group_id = 133102577
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 577005, monster_id = 21020201, pos = { x = 1591.204, y = 247.881, z = 292.106 }, rot = { x = 0.000, y = 219.171, z = 0.000 }, level = 16, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 5 },
	{ config_id = 577006, monster_id = 21030301, pos = { x = 1593.666, y = 249.517, z = 286.564 }, rot = { x = 9.879, y = 261.787, z = 350.455 }, level = 16, drop_tag = "丘丘萨满", disableWander = true, area_id = 5 },
	{ config_id = 577007, monster_id = 21011001, pos = { x = 1589.203, y = 247.453, z = 298.535 }, rot = { x = 7.083, y = 184.152, z = 351.219 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 577002, gadget_id = 70211022, pos = { x = 1589.065, y = 247.838, z = 288.666 }, rot = { x = 354.520, y = 225.039, z = 347.816 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 577008, gadget_id = 70220026, pos = { x = 1583.517, y = 245.760, z = 294.083 }, rot = { x = 11.346, y = 0.893, z = 8.972 }, level = 16, area_id = 5 },
	{ config_id = 577009, gadget_id = 70220026, pos = { x = 1593.456, y = 248.689, z = 289.570 }, rot = { x = 11.479, y = 2.333, z = 22.901 }, level = 16, area_id = 5 },
	{ config_id = 577010, gadget_id = 70220005, pos = { x = 1593.357, y = 248.948, z = 287.917 }, rot = { x = 5.014, y = 0.702, z = 15.933 }, level = 16, area_id = 5 },
	{ config_id = 577011, gadget_id = 70310006, pos = { x = 1589.316, y = 247.246, z = 292.255 }, rot = { x = 10.913, y = 1.153, z = 12.026 }, level = 16, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1577003, name = "ANY_MONSTER_DIE_577003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_577003", action = "action_EVENT_ANY_MONSTER_DIE_577003" }
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
		monsters = { 577005, 577006, 577007 },
		gadgets = { 577002, 577008, 577009, 577010, 577011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_577003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_577003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_577003(context, evt)
	-- 将configid为 577002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 577002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end