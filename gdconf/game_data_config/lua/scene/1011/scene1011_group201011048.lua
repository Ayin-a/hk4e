-- 基础信息
local base_info = {
	group_id = 201011048
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 244, monster_id = 21010301, pos = { x = -43.395, y = 0.800, z = -138.153 }, rot = { x = 0.000, y = 62.415, z = 0.000 }, level = 7 },
	{ config_id = 245, monster_id = 21010301, pos = { x = -44.786, y = 0.800, z = -133.901 }, rot = { x = 0.000, y = 90.863, z = 0.000 }, level = 7 },
	{ config_id = 246, monster_id = 21010301, pos = { x = -43.950, y = 0.800, z = -129.364 }, rot = { x = 0.000, y = 117.260, z = 0.000 }, level = 7 },
	{ config_id = 247, monster_id = 21010501, pos = { x = -52.225, y = 0.800, z = -137.798 }, rot = { x = 0.000, y = 74.262, z = 0.000 }, level = 7, affix = { 1008, 1010 }, isElite = true, pose_id = 32 },
	{ config_id = 248, monster_id = 21010501, pos = { x = -52.470, y = 0.800, z = -134.014 }, rot = { x = 0.000, y = 102.671, z = 0.000 }, level = 7, affix = { 1008, 1010 }, isElite = true, pose_id = 32 },
	{ config_id = 249, monster_id = 21010501, pos = { x = -51.254, y = 0.800, z = -128.433 }, rot = { x = 0.000, y = 113.169, z = 0.000 }, level = 7, affix = { 1008, 1010 }, isElite = true, pose_id = 32 },
	{ config_id = 266, monster_id = 21010501, pos = { x = -51.946, y = 0.800, z = -130.863 }, rot = { x = 0.000, y = 93.709, z = 0.000 }, level = 7, affix = { 1008, 1010 }, isElite = true, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 286, gadget_id = 70350004, pos = { x = -80.542, y = 0.800, z = -139.188 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 287, gadget_id = 70350004, pos = { x = -80.429, y = 0.800, z = -133.203 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 288, gadget_id = 70380004, pos = { x = -36.031, y = 0.800, z = -133.913 }, rot = { x = 0.000, y = 27.068, z = 0.000 }, level = 7, route_id = 1011002 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000159, name = "ANY_MONSTER_DIE_159", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_159", action = "action_EVENT_ANY_MONSTER_DIE_159" }
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
		monsters = { },
		gadgets = { 286, 287 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 244, 245, 246, 247, 248, 249, 266 },
		gadgets = { 286, 287, 288 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_159" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_159(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_159(context, evt)
	-- 将configid为 286 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 286, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 287 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 287, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end