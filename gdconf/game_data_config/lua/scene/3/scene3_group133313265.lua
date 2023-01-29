-- 基础信息
local base_info = {
	group_id = 133313265
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 265001, monster_id = 24040101, pos = { x = -998.218, y = -220.738, z = 5829.788 }, rot = { x = 0.000, y = 163.564, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1004, area_id = 32 },
	{ config_id = 265002, monster_id = 24040201, pos = { x = -982.265, y = -222.934, z = 5829.732 }, rot = { x = 0.000, y = 221.927, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1004, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 265003, gadget_id = 70330432, pos = { x = -1005.773, y = -218.831, z = 5810.480 }, rot = { x = 0.000, y = 0.000, z = 336.058 }, level = 32, area_id = 32 },
	{ config_id = 265004, gadget_id = 70330432, pos = { x = -972.578, y = -219.852, z = 5815.931 }, rot = { x = 25.745, y = 237.091, z = 12.386 }, level = 32, area_id = 32 },
	{ config_id = 265005, gadget_id = 70330432, pos = { x = -997.217, y = -211.913, z = 5755.265 }, rot = { x = 0.000, y = 0.000, z = 9.082 }, level = 32, area_id = 32 },
	{ config_id = 265007, gadget_id = 70211001, pos = { x = -982.387, y = -222.233, z = 5836.222 }, rot = { x = 359.983, y = 211.544, z = 2.799 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1265006, name = "ANY_MONSTER_DIE_265006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_265006", action = "action_EVENT_ANY_MONSTER_DIE_265006", trigger_count = 0 }
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
		monsters = { 265001, 265002 },
		gadgets = { 265003, 265004, 265005, 265007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_265006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_265006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_265006(context, evt)
	-- 将configid为 265007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 265007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end