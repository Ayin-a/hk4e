-- 基础信息
local base_info = {
	group_id = 155006192
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 192001, monster_id = 21010701, pos = { x = 363.650, y = 132.489, z = -249.343 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘人", area_id = 200 },
	{ config_id = 192004, monster_id = 21010701, pos = { x = 417.767, y = 139.119, z = -221.736 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘人", area_id = 200 },
	{ config_id = 192005, monster_id = 21020201, pos = { x = 394.616, y = 136.103, z = -243.868 }, rot = { x = 0.000, y = 343.230, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 200 },
	{ config_id = 192015, monster_id = 21010501, pos = { x = 383.288, y = 138.237, z = -250.435 }, rot = { x = 0.000, y = 39.755, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 192002, gadget_id = 70211002, pos = { x = 392.667, y = 135.209, z = -241.318 }, rot = { x = 0.000, y = 31.703, z = 1.399 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 192006, gadget_id = 70220013, pos = { x = 392.253, y = 133.616, z = -233.787 }, rot = { x = 352.674, y = 359.035, z = 7.527 }, level = 36, area_id = 200 },
	{ config_id = 192007, gadget_id = 70220014, pos = { x = 393.637, y = 134.172, z = -231.166 }, rot = { x = 0.000, y = 0.000, z = 5.211 }, level = 36, area_id = 200 },
	{ config_id = 192008, gadget_id = 70220014, pos = { x = 394.746, y = 134.135, z = -234.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 192009, gadget_id = 70220014, pos = { x = 403.771, y = 137.971, z = -242.021 }, rot = { x = 12.644, y = 0.000, z = 8.629 }, level = 36, area_id = 200 },
	{ config_id = 192010, gadget_id = 70220014, pos = { x = 402.699, y = 138.403, z = -243.121 }, rot = { x = 19.946, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 192011, gadget_id = 70220014, pos = { x = 390.512, y = 139.185, z = -249.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 192012, gadget_id = 70310001, pos = { x = 396.103, y = 134.971, z = -232.213 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 192013, gadget_id = 70310001, pos = { x = 379.481, y = 133.898, z = -248.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 192014, gadget_id = 70310001, pos = { x = 405.120, y = 137.630, z = -240.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1192003, name = "ANY_MONSTER_DIE_192003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_192003", action = "action_EVENT_ANY_MONSTER_DIE_192003" }
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
		monsters = { 192001, 192004, 192005, 192015 },
		gadgets = { 192002, 192006, 192007, 192008, 192009, 192010, 192011, 192012, 192013, 192014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_192003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_192003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_192003(context, evt)
	-- 将configid为 192002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 192002, GadgetState.Default) then
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