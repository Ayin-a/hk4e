-- 基础信息
local base_info = {
	group_id = 133304327
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 327002, monster_id = 26090201, pos = { x = -1624.041, y = 201.901, z = 2704.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 102, area_id = 21 },
	{ config_id = 327003, monster_id = 26090201, pos = { x = -1624.350, y = 201.848, z = 2709.300 }, rot = { x = 0.000, y = 83.056, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 102, area_id = 21 },
	{ config_id = 327004, monster_id = 26090201, pos = { x = -1620.061, y = 201.879, z = 2708.299 }, rot = { x = 0.000, y = 78.327, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 102, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 327001, gadget_id = 70217020, pos = { x = -1630.887, y = 203.278, z = 2717.208 }, rot = { x = 1.731, y = 311.042, z = 357.344 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1327005, name = "ANY_MONSTER_DIE_327005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_327005", action = "action_EVENT_ANY_MONSTER_DIE_327005", trigger_count = 0 }
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
		monsters = { 327002, 327003, 327004 },
		gadgets = { 327001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_327005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_327005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_327005(context, evt)
	-- 将configid为 327001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end