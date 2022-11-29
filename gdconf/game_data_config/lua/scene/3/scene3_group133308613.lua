-- 基础信息
local base_info = {
	group_id = 133308613
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 613001, monster_id = 25410201, pos = { x = -2393.572, y = 386.342, z = 4098.138 }, rot = { x = 0.000, y = 301.870, z = 0.000 }, level = 32, drop_tag = "高级镀金旅团", pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 613002, gadget_id = 70211151, pos = { x = -2388.316, y = 386.535, z = 4099.597 }, rot = { x = 355.565, y = 101.409, z = 0.946 }, level = 26, chest_drop_id = 21910097, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1613003, name = "ANY_MONSTER_DIE_613003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_613003", action = "action_EVENT_ANY_MONSTER_DIE_613003" }
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
		monsters = { 613001 },
		gadgets = { 613002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_613003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_613003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_613003(context, evt)
	-- 将configid为 613002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 613002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end