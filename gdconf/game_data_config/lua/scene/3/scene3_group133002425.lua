-- 基础信息
local base_info = {
	group_id = 133002425
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 425001, monster_id = 21020201, pos = { x = 1642.459, y = 258.106, z = -598.592 }, rot = { x = 0.000, y = 35.781, z = 0.000 }, level = 10, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 3 },
	{ config_id = 425006, monster_id = 21020201, pos = { x = 1638.236, y = 257.936, z = -597.807 }, rot = { x = 0.000, y = 351.142, z = 0.000 }, level = 10, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 3 },
	{ config_id = 425007, monster_id = 21010901, pos = { x = 1652.212, y = 257.418, z = -595.407 }, rot = { x = 0.000, y = 124.610, z = 0.000 }, level = 10, drop_tag = "远程丘丘人", pose_id = 9013, area_id = 3 },
	{ config_id = 425008, monster_id = 21010901, pos = { x = 1638.305, y = 256.176, z = -588.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "远程丘丘人", pose_id = 32, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 425002, gadget_id = 70211022, pos = { x = 1640.090, y = 258.221, z = -599.263 }, rot = { x = 10.524, y = 353.360, z = 359.044 }, level = 6, drop_tag = "战斗高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 425004, gadget_id = 70300091, pos = { x = 1639.658, y = 258.303, z = -601.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 425005, gadget_id = 70300091, pos = { x = 1634.971, y = 255.845, z = -589.508 }, rot = { x = 0.000, y = 313.234, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 425009, gadget_id = 70300088, pos = { x = 1655.915, y = 257.026, z = -596.051 }, rot = { x = 7.586, y = 186.905, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 425010, gadget_id = 70300088, pos = { x = 1652.388, y = 258.080, z = -597.993 }, rot = { x = 346.625, y = 222.363, z = 358.984 }, level = 10, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1425003, name = "ANY_MONSTER_DIE_425003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_425003", action = "action_EVENT_ANY_MONSTER_DIE_425003" }
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
		monsters = { 425001, 425006, 425007, 425008 },
		gadgets = { 425002, 425004, 425005, 425009, 425010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_425003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_425003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_425003(context, evt)
	-- 将configid为 425002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 425002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end