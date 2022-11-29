-- 基础信息
local base_info = {
	group_id = 133103329
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 329001, monster_id = 21030401, pos = { x = 363.359, y = 294.784, z = 1246.274 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "丘丘萨满", disableWander = true, area_id = 6 },
	{ config_id = 329004, monster_id = 21010501, pos = { x = 366.110, y = 294.426, z = 1252.322 }, rot = { x = 0.000, y = 205.296, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 329005, monster_id = 21011001, pos = { x = 359.872, y = 293.943, z = 1251.936 }, rot = { x = 0.000, y = 128.370, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 329002, gadget_id = 70211012, pos = { x = 363.145, y = 294.325, z = 1249.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 329006, gadget_id = 70310001, pos = { x = 362.149, y = 293.820, z = 1253.601 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 329007, gadget_id = 70220013, pos = { x = 359.984, y = 294.375, z = 1247.428 }, rot = { x = 0.000, y = 52.564, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 329008, gadget_id = 70220013, pos = { x = 366.260, y = 294.820, z = 1247.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1329003, name = "ANY_MONSTER_DIE_329003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_329003", action = "action_EVENT_ANY_MONSTER_DIE_329003" }
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
		monsters = { 329001, 329004, 329005 },
		gadgets = { 329002, 329006, 329007, 329008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_329003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_329003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_329003(context, evt)
	-- 将configid为 329002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 329002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end