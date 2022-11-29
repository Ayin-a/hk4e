-- 基础信息
local base_info = {
	group_id = 133103083
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 78, monster_id = 21010901, pos = { x = 803.615, y = 264.715, z = 1057.551 }, rot = { x = 359.146, y = 359.870, z = 17.355 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 83001, monster_id = 21011001, pos = { x = 805.977, y = 265.365, z = 1061.267 }, rot = { x = 13.778, y = 305.538, z = 10.690 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 263, gadget_id = 70211012, pos = { x = 802.895, y = 264.452, z = 1059.992 }, rot = { x = 352.686, y = 106.438, z = 348.777 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000088, name = "ANY_MONSTER_DIE_88", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_88", action = "action_EVENT_ANY_MONSTER_DIE_88" }
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
		monsters = { 78, 83001 },
		gadgets = { 263 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_88" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_88(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_88(context, evt)
	-- 将configid为 263 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 263, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end