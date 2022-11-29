-- 基础信息
local base_info = {
	group_id = 133310472
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 472001, monster_id = 26120401, pos = { x = -2062.423, y = 257.299, z = 4328.825 }, rot = { x = 0.000, y = 163.827, z = 0.000 }, level = 32, drop_tag = "大蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 472002, monster_id = 26090901, pos = { x = -2062.651, y = 256.642, z = 4331.800 }, rot = { x = 0.000, y = 163.794, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 472003, monster_id = 26090901, pos = { x = -2062.510, y = 255.878, z = 4335.132 }, rot = { x = 0.000, y = 193.039, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 472004, monster_id = 26090901, pos = { x = -2061.312, y = 255.333, z = 4337.510 }, rot = { x = 0.000, y = 219.024, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 472005, gadget_id = 70211002, pos = { x = -2054.520, y = 257.361, z = 4333.922 }, rot = { x = 357.031, y = 267.559, z = 351.108 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1472006, name = "ANY_MONSTER_DIE_472006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_472006", action = "action_EVENT_ANY_MONSTER_DIE_472006" }
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
		monsters = { 472001, 472002, 472003, 472004 },
		gadgets = { 472005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_472006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_472006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_472006(context, evt)
	-- 将configid为 472005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 472005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end