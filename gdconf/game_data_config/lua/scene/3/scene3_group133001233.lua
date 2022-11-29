-- 基础信息
local base_info = {
	group_id = 133001233
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 233013, monster_id = 23010501, pos = { x = 1526.168, y = 287.521, z = -1293.039 }, rot = { x = 0.000, y = 177.555, z = 0.000 }, level = 13, drop_tag = "先遣队", disableWander = true, area_id = 2 },
	{ config_id = 233015, monster_id = 23010401, pos = { x = 1526.903, y = 287.138, z = -1297.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_tag = "先遣队", disableWander = true, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 233001, gadget_id = 70900019, pos = { x = 1528.268, y = 287.791, z = -1292.693 }, rot = { x = 0.000, y = 237.505, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 233002, gadget_id = 70211012, pos = { x = 1530.344, y = 288.015, z = -1291.637 }, rot = { x = 2.660, y = 62.174, z = 356.166 }, level = 6, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 233004, gadget_id = 70220048, pos = { x = 1533.956, y = 288.120, z = -1285.224 }, rot = { x = 0.000, y = 346.859, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 233005, gadget_id = 70220048, pos = { x = 1534.570, y = 288.098, z = -1287.206 }, rot = { x = 0.000, y = 70.864, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 233009, gadget_id = 70220014, pos = { x = 1520.356, y = 288.126, z = -1288.630 }, rot = { x = 0.000, y = 238.920, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 233010, gadget_id = 70220014, pos = { x = 1520.002, y = 288.354, z = -1287.207 }, rot = { x = 0.000, y = 306.556, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 233011, gadget_id = 70220014, pos = { x = 1521.091, y = 288.462, z = -1286.221 }, rot = { x = 0.000, y = 47.724, z = 0.000 }, level = 10, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1233003, name = "ANY_MONSTER_DIE_233003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_233003", action = "action_EVENT_ANY_MONSTER_DIE_233003" }
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
		monsters = { 233013, 233015 },
		gadgets = { 233001, 233002, 233004, 233005, 233009, 233010, 233011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_233003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_233003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_233003(context, evt)
	-- 将configid为 233002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 233002, GadgetState.Default) then
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