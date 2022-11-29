-- 基础信息
local base_info = {
	group_id = 133001021
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 21003, monster_id = 21010401, pos = { x = 1754.413, y = 251.630, z = -1153.237 }, rot = { x = 0.000, y = 94.345, z = 0.000 }, level = 9, drop_tag = "远程丘丘人", area_id = 2 },
	{ config_id = 21004, monster_id = 21010301, pos = { x = 1759.034, y = 250.982, z = -1163.801 }, rot = { x = 0.000, y = 101.577, z = 0.000 }, level = 9, drop_tag = "丘丘人", area_id = 2 },
	{ config_id = 21005, monster_id = 21010201, pos = { x = 1755.930, y = 251.545, z = -1161.334 }, rot = { x = 0.000, y = 39.314, z = 358.933 }, level = 9, drop_tag = "丘丘人", area_id = 2 },
	{ config_id = 21006, monster_id = 21010601, pos = { x = 1754.647, y = 251.809, z = -1156.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 9, drop_tag = "丘丘人", area_id = 2 },
	{ config_id = 21007, monster_id = 21010701, pos = { x = 1753.047, y = 251.842, z = -1160.939 }, rot = { x = 0.000, y = 78.376, z = 0.000 }, level = 8, drop_tag = "丘丘人", area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 21001, gadget_id = 70211012, pos = { x = 1751.210, y = 251.962, z = -1155.787 }, rot = { x = -0.006, y = 314.745, z = 358.734 }, level = 6, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 21008, gadget_id = 70900019, pos = { x = 1752.192, y = 251.944, z = -1157.705 }, rot = { x = 0.000, y = 237.505, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 21009, gadget_id = 70220013, pos = { x = 1745.704, y = 252.630, z = -1156.148 }, rot = { x = 0.000, y = 22.894, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 21010, gadget_id = 70220013, pos = { x = 1757.061, y = 251.031, z = -1152.105 }, rot = { x = 0.000, y = 70.864, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 21011, gadget_id = 70220013, pos = { x = 1749.318, y = 252.090, z = -1164.914 }, rot = { x = 0.000, y = 80.863, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 21012, gadget_id = 70220013, pos = { x = 1753.413, y = 251.662, z = -1164.354 }, rot = { x = 0.000, y = 164.825, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 21013, gadget_id = 70220014, pos = { x = 1754.375, y = 251.643, z = -1162.716 }, rot = { x = 0.000, y = 238.920, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 21014, gadget_id = 70220010, pos = { x = 1757.646, y = 251.252, z = -1162.422 }, rot = { x = 0.000, y = 163.513, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 21015, gadget_id = 70220013, pos = { x = 1750.201, y = 252.412, z = -1150.142 }, rot = { x = 0.000, y = 346.859, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 21016, gadget_id = 70220014, pos = { x = 1746.331, y = 252.016, z = -1160.095 }, rot = { x = 0.000, y = 238.920, z = 0.000 }, level = 10, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1021002, name = "ANY_MONSTER_DIE_21002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_21002", action = "action_EVENT_ANY_MONSTER_DIE_21002" }
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
		monsters = { 21003, 21004, 21005, 21006, 21007 },
		gadgets = { 21001, 21008, 21009, 21010, 21011, 21012, 21013, 21014, 21015, 21016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_21002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_21002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_21002(context, evt)
	-- 将configid为 21001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21001, GadgetState.Default) then
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