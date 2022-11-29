-- 基础信息
local base_info = {
	group_id = 133104375
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 375001, monster_id = 21010201, pos = { x = 760.440, y = 201.111, z = 580.316 }, rot = { x = 359.105, y = 359.986, z = 0.000 }, level = 21, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 6 },
	{ config_id = 375007, monster_id = 21010701, pos = { x = 758.870, y = 201.126, z = 584.130 }, rot = { x = 2.310, y = 163.140, z = 358.366 }, level = 21, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 6 },
	{ config_id = 375008, monster_id = 21011201, pos = { x = 757.340, y = 201.106, z = 580.982 }, rot = { x = 0.000, y = 59.083, z = 0.000 }, level = 21, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 375002, gadget_id = 70211012, pos = { x = 766.113, y = 201.579, z = 584.617 }, rot = { x = 8.007, y = 244.998, z = 358.235 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 375004, gadget_id = 70310001, pos = { x = 765.250, y = 201.549, z = 586.209 }, rot = { x = 356.415, y = 0.095, z = 5.340 }, level = 19, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 375005, gadget_id = 70310001, pos = { x = 766.843, y = 201.650, z = 583.182 }, rot = { x = 358.136, y = 0.474, z = 8.862 }, level = 19, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 375006, gadget_id = 70310006, pos = { x = 759.982, y = 201.107, z = 582.059 }, rot = { x = 359.105, y = 359.979, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 375009, gadget_id = 70220013, pos = { x = 759.080, y = 201.267, z = 587.028 }, rot = { x = 356.428, y = 359.861, z = 1.795 }, level = 19, area_id = 6 },
	{ config_id = 375010, gadget_id = 70220013, pos = { x = 755.523, y = 201.125, z = 585.229 }, rot = { x = 359.343, y = 317.225, z = 0.608 }, level = 19, area_id = 6 },
	{ config_id = 375011, gadget_id = 70220014, pos = { x = 755.289, y = 201.106, z = 579.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 375012, gadget_id = 70220014, pos = { x = 761.675, y = 201.106, z = 577.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1375003, name = "ANY_MONSTER_DIE_375003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_375003", action = "action_EVENT_ANY_MONSTER_DIE_375003" }
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
		-- description = suite_1,
		monsters = { 375001, 375007, 375008 },
		gadgets = { 375002, 375004, 375005, 375006, 375009, 375010, 375011, 375012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_375003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_375003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_375003(context, evt)
	-- 将configid为 375002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 375002, GadgetState.Default) then
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