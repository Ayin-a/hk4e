-- 基础信息
local base_info = {
	group_id = 177009011
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 11002, monster_id = 22070101, pos = { x = -754.343, y = 138.831, z = -223.197 }, rot = { x = 0.000, y = 232.261, z = 0.000 }, level = 36, drop_id = 212000001, disableWander = true, affix = { 5135, 1007, 1041 }, pose_id = 101, area_id = 210 },
	{ config_id = 11003, monster_id = 22070201, pos = { x = -762.332, y = 139.271, z = -227.842 }, rot = { x = 0.000, y = 65.056, z = 0.000 }, level = 36, drop_id = 212000001, disableWander = true, affix = { 5135, 1007, 1041 }, pose_id = 9003, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 11001, gadget_id = 70211022, pos = { x = -757.023, y = 139.089, z = -224.871 }, rot = { x = 0.000, y = 237.891, z = 0.000 }, level = 16, chest_drop_id = 212000005, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1011005, name = "ANY_MONSTER_DIE_11005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11005", action = "action_EVENT_ANY_MONSTER_DIE_11005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 11004, monster_id = 22070201, pos = { x = -761.733, y = 139.166, z = -223.480 }, rot = { x = 0.000, y = 93.299, z = 0.000 }, level = 36, drop_id = 212000001, disableWander = true, affix = { 5135, 1007, 1041 }, pose_id = 9003, area_id = 210 }
	}
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
		gadgets = { 11001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_11005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11005(context, evt)
	-- 将configid为 11001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 11001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end