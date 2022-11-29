-- 基础信息
local base_info = {
	group_id = 133309271
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 271005, monster_id = 21010101, pos = { x = -2164.758, y = 30.667, z = 5392.859 }, rot = { x = 0.000, y = 24.454, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9010, area_id = 27 },
	{ config_id = 271008, monster_id = 21020201, pos = { x = -2162.231, y = 27.340, z = 5386.546 }, rot = { x = 0.000, y = 110.176, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", area_id = 27 },
	{ config_id = 271009, monster_id = 21010201, pos = { x = -2161.895, y = 31.733, z = 5394.073 }, rot = { x = 0.000, y = 279.955, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9003, area_id = 27 },
	{ config_id = 271010, monster_id = 21010101, pos = { x = -2163.633, y = 31.230, z = 5396.428 }, rot = { x = 0.000, y = 188.566, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9010, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 271001, gadget_id = 70210101, pos = { x = -2153.306, y = 33.093, z = 5400.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 27 },
	{ config_id = 271002, gadget_id = 70211002, pos = { x = -2165.317, y = 31.848, z = 5399.197 }, rot = { x = 15.135, y = 193.188, z = 358.706 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 271004, gadget_id = 70210101, pos = { x = -2144.087, y = 29.582, z = 5388.155 }, rot = { x = 328.684, y = 344.505, z = 8.153 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 27 },
	{ config_id = 271006, gadget_id = 70220013, pos = { x = -2139.412, y = 36.350, z = 5397.362 }, rot = { x = 274.508, y = 285.000, z = 90.001 }, level = 32, area_id = 27 },
	{ config_id = 271007, gadget_id = 70220013, pos = { x = -2139.012, y = 35.479, z = 5394.082 }, rot = { x = 0.000, y = 52.697, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 271011, gadget_id = 70220014, pos = { x = -2161.162, y = 31.927, z = 5393.591 }, rot = { x = 350.180, y = 353.503, z = 22.936 }, level = 32, area_id = 27 },
	{ config_id = 271012, gadget_id = 70220014, pos = { x = -2153.898, y = 33.052, z = 5400.217 }, rot = { x = 54.600, y = 20.263, z = 4.855 }, level = 32, area_id = 27 },
	{ config_id = 271013, gadget_id = 70330396, pos = { x = -2148.310, y = 32.952, z = 5398.838 }, rot = { x = 337.896, y = 18.603, z = 1.215 }, level = 32, state = GadgetState.GearStart, area_id = 27 },
	{ config_id = 271014, gadget_id = 70220014, pos = { x = -2152.677, y = 32.901, z = 5400.225 }, rot = { x = 24.330, y = 33.087, z = 345.951 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1271003, name = "ANY_MONSTER_DIE_271003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_271003", action = "action_EVENT_ANY_MONSTER_DIE_271003" }
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
		monsters = { 271005, 271008, 271009, 271010 },
		gadgets = { 271001, 271002, 271004, 271006, 271007, 271011, 271012, 271013, 271014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_271003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_271003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_271003(context, evt)
	-- 将configid为 271002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 271002, GadgetState.Default) then
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