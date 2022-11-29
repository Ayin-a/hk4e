-- 基础信息
local base_info = {
	group_id = 133212268
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 268001, monster_id = 21010901, pos = { x = -3801.429, y = 264.286, z = -2304.849 }, rot = { x = 0.000, y = 114.150, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 13 },
	{ config_id = 268004, monster_id = 21010901, pos = { x = -3805.435, y = 264.798, z = -2305.142 }, rot = { x = 0.000, y = 196.995, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 13 },
	{ config_id = 268005, monster_id = 21010901, pos = { x = -3792.658, y = 262.441, z = -2300.444 }, rot = { x = 0.000, y = 60.213, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, area_id = 13 },
	{ config_id = 268006, monster_id = 21010901, pos = { x = -3802.631, y = 259.576, z = -2286.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 268002, gadget_id = 70211002, pos = { x = -3803.082, y = 264.904, z = -2297.031 }, rot = { x = 5.039, y = 175.877, z = 8.798 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 268007, gadget_id = 70220014, pos = { x = -3805.025, y = 265.148, z = -2296.211 }, rot = { x = 0.000, y = 0.000, z = 349.701 }, level = 27, area_id = 13 },
	{ config_id = 268008, gadget_id = 70220014, pos = { x = -3805.765, y = 265.222, z = -2296.969 }, rot = { x = 0.000, y = 0.000, z = 352.692 }, level = 27, area_id = 13 },
	{ config_id = 268009, gadget_id = 70220014, pos = { x = -3791.861, y = 259.998, z = -2299.302 }, rot = { x = 353.305, y = 0.000, z = 338.476 }, level = 27, area_id = 13 },
	{ config_id = 268010, gadget_id = 70220014, pos = { x = -3790.902, y = 259.641, z = -2299.963 }, rot = { x = 0.000, y = 0.144, z = 331.028 }, level = 27, area_id = 13 },
	{ config_id = 268011, gadget_id = 70220014, pos = { x = -3790.020, y = 261.731, z = -2307.331 }, rot = { x = 350.521, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 268012, gadget_id = 70300088, pos = { x = -3799.590, y = 263.361, z = -2307.341 }, rot = { x = 0.000, y = 246.036, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 268013, gadget_id = 70300088, pos = { x = -3806.611, y = 264.936, z = -2307.383 }, rot = { x = 0.000, y = 305.064, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 268014, gadget_id = 70300086, pos = { x = -3810.011, y = 264.706, z = -2297.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 268015, gadget_id = 70300086, pos = { x = -3800.672, y = 261.825, z = -2310.851 }, rot = { x = 352.450, y = 10.030, z = 334.408 }, level = 27, area_id = 13 },
	{ config_id = 268016, gadget_id = 70300086, pos = { x = -3793.303, y = 258.706, z = -2297.440 }, rot = { x = 11.091, y = 1.046, z = 338.566 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1268003, name = "ANY_MONSTER_DIE_268003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_268003", action = "action_EVENT_ANY_MONSTER_DIE_268003" }
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
		monsters = { 268001, 268004, 268005, 268006 },
		gadgets = { 268002, 268007, 268008, 268009, 268010, 268011, 268012, 268013, 268014, 268015, 268016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_268003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_268003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_268003(context, evt)
	-- 将configid为 268002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 268002, GadgetState.Default) then
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