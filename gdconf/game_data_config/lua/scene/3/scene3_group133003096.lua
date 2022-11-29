-- 基础信息
local base_info = {
	group_id = 133003096
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 96001, monster_id = 21030201, pos = { x = 2181.188, y = 259.419, z = -1735.855 }, rot = { x = 0.000, y = 189.689, z = 0.000 }, level = 10, drop_tag = "丘丘萨满", disableWander = true, area_id = 1 },
	{ config_id = 96002, monster_id = 21010201, pos = { x = 2185.644, y = 259.029, z = -1725.889 }, rot = { x = 0.000, y = 13.023, z = 0.000 }, level = 10, drop_tag = "丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 96003, monster_id = 21010501, pos = { x = 2184.062, y = 260.070, z = -1738.453 }, rot = { x = 0.000, y = 234.328, z = 0.000 }, level = 10, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 96004, monster_id = 21010501, pos = { x = 2177.646, y = 259.755, z = -1736.632 }, rot = { x = 0.000, y = 161.404, z = 0.000 }, level = 10, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 96005, gadget_id = 70211012, pos = { x = 2192.628, y = 260.636, z = -1737.130 }, rot = { x = 5.231, y = 283.690, z = 356.521 }, level = 11, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1096006, name = "ANY_MONSTER_DIE_96006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_96006", action = "action_EVENT_ANY_MONSTER_DIE_96006" }
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
		monsters = { 96001, 96002, 96003, 96004 },
		gadgets = { 96005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_96006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_96006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_96006(context, evt)
	-- 将configid为 96005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end