-- 基础信息
local base_info = {
	group_id = 177002011
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 11002, monster_id = 22070202, pos = { x = 1331.813, y = 180.832, z = 850.683 }, rot = { x = 0.000, y = 48.556, z = 0.000 }, level = 36, drop_id = 212000001, affix = { 5135, 1007 }, pose_id = 9003, area_id = 210 },
	{ config_id = 11003, monster_id = 22070302, pos = { x = 1337.931, y = 180.819, z = 853.336 }, rot = { x = 0.000, y = 249.764, z = 0.000 }, level = 36, drop_id = 212000001, disableWander = true, affix = { 5135, 1007 }, pose_id = 101, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 11001, gadget_id = 70211022, pos = { x = 1334.931, y = 180.891, z = 852.010 }, rot = { x = 0.000, y = 342.857, z = 0.000 }, level = 16, chest_drop_id = 212000003, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 210 },
	{ config_id = 11005, gadget_id = 70310001, pos = { x = 1336.333, y = 179.791, z = 847.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 11006, gadget_id = 70310001, pos = { x = 1333.453, y = 181.076, z = 856.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1011004, name = "ANY_MONSTER_DIE_11004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11004", action = "action_EVENT_ANY_MONSTER_DIE_11004" }
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
		monsters = { 11002, 11003 },
		gadgets = { 11001, 11005, 11006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_11004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11004(context, evt)
	-- 将configid为 11001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end