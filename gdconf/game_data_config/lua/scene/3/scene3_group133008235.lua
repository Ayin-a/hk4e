-- 基础信息
local base_info = {
	group_id = 133008235
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 235002, monster_id = 22010101, pos = { x = 895.826, y = 202.176, z = -1133.005 }, rot = { x = 0.000, y = 226.668, z = 0.000 }, level = 30, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, climate_area_id = 1, area_id = 10 },
	{ config_id = 235003, monster_id = 22010101, pos = { x = 892.744, y = 202.023, z = -1135.099 }, rot = { x = 0.000, y = 47.949, z = 0.000 }, level = 30, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 235001, gadget_id = 70310017, pos = { x = 894.311, y = 201.910, z = -1134.409 }, rot = { x = 0.000, y = 148.513, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 235005, gadget_id = 70211022, pos = { x = 891.847, y = 203.539, z = -1130.220 }, rot = { x = 19.563, y = 152.790, z = 354.893 }, level = 26, drop_tag = "雪山战斗高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1235004, name = "ANY_MONSTER_DIE_235004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_235004", action = "action_EVENT_ANY_MONSTER_DIE_235004" }
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
		monsters = { 235002, 235003 },
		gadgets = { 235001, 235005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_235004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_235004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_235004(context, evt)
	-- 将configid为 235005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 235005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end