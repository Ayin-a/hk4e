-- 基础信息
local base_info = {
	group_id = 133105112
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6, monster_id = 21010301, pos = { x = 843.674, y = 206.527, z = -41.800 }, rot = { x = 0.000, y = 242.114, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 9 },
	{ config_id = 7, monster_id = 21020201, pos = { x = 847.571, y = 207.359, z = -48.692 }, rot = { x = 0.000, y = 239.695, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, isElite = true, area_id = 9 },
	{ config_id = 8, monster_id = 21011001, pos = { x = 855.384, y = 213.424, z = -48.357 }, rot = { x = 0.000, y = 318.017, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 9 },
	{ config_id = 9, monster_id = 21011001, pos = { x = 845.193, y = 207.510, z = -49.838 }, rot = { x = 0.000, y = 57.035, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 270, gadget_id = 70211012, pos = { x = 849.189, y = 210.512, z = -55.764 }, rot = { x = 0.000, y = 332.124, z = 0.000 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
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
		monsters = { 6, 7, 8, 9 },
		gadgets = { 270 },
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
	-- 将configid为 270 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end