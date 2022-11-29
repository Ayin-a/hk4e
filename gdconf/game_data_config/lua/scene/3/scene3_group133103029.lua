-- 基础信息
local base_info = {
	group_id = 133103029
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 28, monster_id = 21010201, pos = { x = 700.932, y = 318.836, z = 1762.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 29001, monster_id = 22010101, pos = { x = 700.993, y = 319.484, z = 1767.721 }, rot = { x = 0.000, y = 218.973, z = 0.000 }, level = 24, drop_tag = "深渊法师", disableWander = true, area_id = 6 },
	{ config_id = 29002, monster_id = 21010201, pos = { x = 697.791, y = 318.740, z = 1763.409 }, rot = { x = 0.000, y = 101.667, z = 0.000 }, level = 24, drop_tag = "丘丘人", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 144, gadget_id = 70211012, pos = { x = 700.758, y = 319.235, z = 1765.280 }, rot = { x = 359.545, y = 359.974, z = 6.440 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 29003, gadget_id = 70310001, pos = { x = 697.537, y = 318.571, z = 1766.205 }, rot = { x = 0.000, y = 0.231, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000044, name = "ANY_MONSTER_DIE_44", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_44", action = "action_EVENT_ANY_MONSTER_DIE_44" }
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
		monsters = { 28, 29001, 29002 },
		gadgets = { 144, 29003 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_44" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_44(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_44(context, evt)
	-- 将configid为 144 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 144, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end