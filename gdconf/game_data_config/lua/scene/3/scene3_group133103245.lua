-- 基础信息
local base_info = {
	group_id = 133103245
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 245001, monster_id = 21010201, pos = { x = 833.117, y = 216.090, z = 1220.221 }, rot = { x = 0.000, y = 256.363, z = 0.000 }, level = 24, drop_tag = "丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 245006, monster_id = 21030101, pos = { x = 833.112, y = 215.861, z = 1217.121 }, rot = { x = 0.000, y = 300.461, z = 0.000 }, level = 24, drop_tag = "丘丘萨满", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 245002, gadget_id = 70211012, pos = { x = 830.264, y = 215.952, z = 1219.161 }, rot = { x = 0.000, y = 271.737, z = 0.000 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 245004, gadget_id = 70310001, pos = { x = 828.709, y = 215.862, z = 1219.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 245005, gadget_id = 70220013, pos = { x = 827.523, y = 215.890, z = 1220.244 }, rot = { x = 0.000, y = 273.224, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 245007, gadget_id = 70220014, pos = { x = 831.337, y = 215.870, z = 1215.943 }, rot = { x = 0.000, y = 273.224, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1245003, name = "ANY_MONSTER_DIE_245003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_245003", action = "action_EVENT_ANY_MONSTER_DIE_245003" }
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
		monsters = { 245001, 245006 },
		gadgets = { 245002, 245004, 245005, 245007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_245003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_245003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_245003(context, evt)
	-- 将configid为 245002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 245002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end