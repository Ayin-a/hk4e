-- 基础信息
local base_info = {
	group_id = 133001369
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 369001, monster_id = 20011201, pos = { x = 1993.923, y = 204.899, z = -1364.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 4, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 369004, monster_id = 20011201, pos = { x = 1996.409, y = 204.955, z = -1362.311 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 4, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 369005, monster_id = 21010501, pos = { x = 2000.444, y = 204.869, z = -1358.722 }, rot = { x = 0.000, y = 40.049, z = 0.000 }, level = 4, drop_tag = "远程丘丘人", disableWander = true, area_id = 2 },
	{ config_id = 369006, monster_id = 21010501, pos = { x = 1992.375, y = 204.975, z = -1366.413 }, rot = { x = 0.000, y = 243.462, z = 0.000 }, level = 4, drop_tag = "远程丘丘人", disableWander = true, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 369002, gadget_id = 70211012, pos = { x = 2000.634, y = 205.258, z = -1362.919 }, rot = { x = 2.290, y = 274.630, z = 353.926 }, level = 1, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 369007, gadget_id = 70310001, pos = { x = 2001.199, y = 205.032, z = -1360.174 }, rot = { x = 0.000, y = 235.889, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 369008, gadget_id = 70310001, pos = { x = 1994.094, y = 204.238, z = -1356.854 }, rot = { x = 0.000, y = 8.467, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 369009, gadget_id = 70220010, pos = { x = 1990.637, y = 204.268, z = -1360.112 }, rot = { x = 0.000, y = 225.477, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 369010, gadget_id = 70220010, pos = { x = 2000.786, y = 204.608, z = -1355.971 }, rot = { x = 0.000, y = 225.477, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 369011, gadget_id = 70220010, pos = { x = 2002.539, y = 205.613, z = -1369.594 }, rot = { x = 0.000, y = 225.477, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 369012, gadget_id = 70310006, pos = { x = 1994.907, y = 204.829, z = -1362.348 }, rot = { x = 0.000, y = 11.009, z = 0.000 }, level = 5, state = GadgetState.GearStart, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1369003, name = "ANY_MONSTER_DIE_369003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_369003", action = "action_EVENT_ANY_MONSTER_DIE_369003" }
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
		monsters = { 369001, 369004, 369005, 369006 },
		gadgets = { 369002, 369007, 369008, 369009, 369010, 369011, 369012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_369003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_369003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_369003(context, evt)
	-- 将configid为 369002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 369002, GadgetState.Default) then
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