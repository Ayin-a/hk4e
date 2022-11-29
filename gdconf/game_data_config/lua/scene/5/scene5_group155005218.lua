-- 基础信息
local base_info = {
	group_id = 155005218
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 218001, monster_id = 21010201, pos = { x = 364.639, y = 192.312, z = 57.205 }, rot = { x = 0.000, y = 9.879, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 200 },
	{ config_id = 218006, monster_id = 21010501, pos = { x = 363.121, y = 189.775, z = 51.826 }, rot = { x = 0.000, y = 93.758, z = 352.046 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 200 },
	{ config_id = 218007, monster_id = 21010501, pos = { x = 363.969, y = 190.584, z = 53.617 }, rot = { x = 0.004, y = 105.465, z = 351.277 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 200 },
	{ config_id = 218008, monster_id = 21010201, pos = { x = 361.247, y = 192.698, z = 59.058 }, rot = { x = 0.000, y = 42.953, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9012, area_id = 200 },
	{ config_id = 218009, monster_id = 21010201, pos = { x = 368.229, y = 192.797, z = 58.157 }, rot = { x = 353.375, y = 306.043, z = 3.814 }, level = 36, drop_tag = "丘丘人", pose_id = 9012, area_id = 200 },
	{ config_id = 218015, monster_id = 21030601, pos = { x = 364.303, y = 194.969, z = 62.259 }, rot = { x = 8.130, y = 172.941, z = 3.245 }, level = 36, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 218002, gadget_id = 70211002, pos = { x = 357.027, y = 189.442, z = 52.575 }, rot = { x = 353.360, y = 45.500, z = 350.744 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 218004, gadget_id = 70300088, pos = { x = 369.492, y = 190.161, z = 50.493 }, rot = { x = 8.152, y = 192.534, z = 2.240 }, level = 36, area_id = 200 },
	{ config_id = 218005, gadget_id = 70300088, pos = { x = 370.164, y = 191.079, z = 52.740 }, rot = { x = 12.844, y = 180.802, z = 350.054 }, level = 36, area_id = 200 },
	{ config_id = 218010, gadget_id = 70300086, pos = { x = 354.066, y = 189.659, z = 53.389 }, rot = { x = 341.773, y = 347.011, z = 10.076 }, level = 36, area_id = 200 },
	{ config_id = 218011, gadget_id = 70300086, pos = { x = 370.078, y = 189.719, z = 47.415 }, rot = { x = 0.000, y = 0.000, z = 357.823 }, level = 36, area_id = 200 },
	{ config_id = 218012, gadget_id = 70300089, pos = { x = 374.339, y = 192.951, z = 59.320 }, rot = { x = 348.840, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 218013, gadget_id = 70300089, pos = { x = 352.000, y = 191.819, z = 60.523 }, rot = { x = 327.946, y = 0.933, z = 356.810 }, level = 36, area_id = 200 },
	{ config_id = 218016, gadget_id = 70220026, pos = { x = 355.625, y = 189.424, z = 52.503 }, rot = { x = 356.531, y = 65.847, z = 344.633 }, level = 36, area_id = 200 },
	{ config_id = 218017, gadget_id = 70220026, pos = { x = 357.029, y = 189.358, z = 51.317 }, rot = { x = 342.724, y = 1.011, z = 7.939 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1218003, name = "ANY_MONSTER_DIE_218003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_218003", action = "action_EVENT_ANY_MONSTER_DIE_218003" }
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
		monsters = { 218001, 218006, 218007, 218008, 218009, 218015 },
		gadgets = { 218002, 218004, 218005, 218010, 218011, 218012, 218013, 218016, 218017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_218003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_218003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_218003(context, evt)
	-- 将configid为 218002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218002, GadgetState.Default) then
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