-- 基础信息
local base_info = {
	group_id = 133220063
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 63001, monster_id = 21011601, pos = { x = -2277.574, y = 201.621, z = -4207.381 }, rot = { x = 0.000, y = 316.659, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 11 },
	{ config_id = 63004, monster_id = 21020701, pos = { x = -2272.760, y = 201.000, z = -4197.300 }, rot = { x = 0.000, y = 46.216, z = 0.000 }, level = 27, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 11 },
	{ config_id = 63005, monster_id = 21010201, pos = { x = -2279.911, y = 201.646, z = -4205.018 }, rot = { x = 0.000, y = 150.747, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, area_id = 11 },
	{ config_id = 63011, monster_id = 21010201, pos = { x = -2284.142, y = 202.877, z = -4210.293 }, rot = { x = 0.000, y = 91.878, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 63002, gadget_id = 70211022, pos = { x = -2282.038, y = 202.354, z = -4207.376 }, rot = { x = 7.426, y = 33.916, z = 355.361 }, level = 26, drop_tag = "战斗高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 63006, gadget_id = 70900393, pos = { x = -2274.659, y = 201.177, z = -4207.519 }, rot = { x = 6.182, y = 359.567, z = 351.995 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 63007, gadget_id = 70900393, pos = { x = -2284.953, y = 202.004, z = -4201.728 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 63008, gadget_id = 70220013, pos = { x = -2281.633, y = 202.473, z = -4210.010 }, rot = { x = 4.441, y = 359.758, z = 353.758 }, level = 27, area_id = 11 },
	{ config_id = 63009, gadget_id = 70220013, pos = { x = -2283.741, y = 202.595, z = -4207.978 }, rot = { x = 8.662, y = 57.872, z = 358.762 }, level = 27, area_id = 11 },
	{ config_id = 63010, gadget_id = 70220014, pos = { x = -2282.827, y = 202.769, z = -4211.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1063003, name = "ANY_MONSTER_DIE_63003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_63003", action = "action_EVENT_ANY_MONSTER_DIE_63003" }
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
		monsters = { 63001, 63004, 63005, 63011 },
		gadgets = { 63002, 63006, 63007, 63008, 63009, 63010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_63003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_63003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_63003(context, evt)
	-- 将configid为 63002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 63002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end