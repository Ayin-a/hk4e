-- 基础信息
local base_info = {
	group_id = 133103164
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 164001, monster_id = 21020301, pos = { x = 50.131, y = 350.991, z = 1916.917 }, rot = { x = 0.000, y = 213.795, z = 0.000 }, level = 27, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 6 },
	{ config_id = 164004, monster_id = 21010601, pos = { x = 44.694, y = 353.134, z = 1925.714 }, rot = { x = 0.000, y = 50.753, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9016, area_id = 6 },
	{ config_id = 164005, monster_id = 21030401, pos = { x = 57.888, y = 349.284, z = 1897.894 }, rot = { x = 0.000, y = 290.857, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 6 },
	{ config_id = 164006, monster_id = 21010501, pos = { x = 51.276, y = 353.618, z = 1889.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", pose_id = 32, area_id = 6 },
	{ config_id = 164007, monster_id = 21011001, pos = { x = 35.542, y = 350.977, z = 1914.193 }, rot = { x = 0.000, y = 129.587, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", pose_id = 32, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 164002, gadget_id = 70211012, pos = { x = 25.380, y = 358.102, z = 1938.149 }, rot = { x = 0.000, y = 131.933, z = 0.000 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 164008, gadget_id = 70310001, pos = { x = 70.938, y = 357.772, z = 1909.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 164009, gadget_id = 70310001, pos = { x = 31.219, y = 357.154, z = 1929.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 164010, gadget_id = 70310001, pos = { x = 31.306, y = 340.424, z = 1892.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 164011, gadget_id = 70220013, pos = { x = 28.167, y = 355.608, z = 1926.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 164012, gadget_id = 70220013, pos = { x = 28.476, y = 358.063, z = 1941.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 164013, gadget_id = 70220013, pos = { x = 19.723, y = 358.112, z = 1937.018 }, rot = { x = 358.925, y = 157.003, z = 0.335 }, level = 27, area_id = 6 },
	{ config_id = 164014, gadget_id = 70220014, pos = { x = 19.146, y = 358.075, z = 1938.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 164015, gadget_id = 70220014, pos = { x = 25.861, y = 358.020, z = 1943.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 164016, gadget_id = 70220014, pos = { x = 29.292, y = 358.111, z = 1939.050 }, rot = { x = 0.459, y = 275.099, z = 359.023 }, level = 27, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1164003, name = "ANY_MONSTER_DIE_164003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_164003", action = "action_EVENT_ANY_MONSTER_DIE_164003" }
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
		monsters = { 164001, 164004, 164005, 164006, 164007 },
		gadgets = { 164002, 164008, 164009, 164010, 164011, 164012, 164013, 164014, 164015, 164016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_164003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_164003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_164003(context, evt)
	-- 将configid为 164002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164002, GadgetState.Default) then
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