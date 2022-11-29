-- 基础信息
local base_info = {
	group_id = 133106532
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 532001, monster_id = 25010501, pos = { x = -650.058, y = 149.277, z = 1887.391 }, rot = { x = 0.000, y = 206.032, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 9004, area_id = 19 },
	{ config_id = 532004, monster_id = 25060101, pos = { x = -648.588, y = 149.228, z = 1891.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9101, area_id = 19 },
	{ config_id = 532005, monster_id = 25010201, pos = { x = -649.832, y = 149.265, z = 1892.631 }, rot = { x = 0.000, y = 45.404, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9101, area_id = 19 },
	{ config_id = 532006, monster_id = 25020201, pos = { x = -628.909, y = 151.319, z = 1878.730 }, rot = { x = 0.000, y = 108.683, z = 0.000 }, level = 36, drop_tag = "盗宝团", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 532002, gadget_id = 70211002, pos = { x = -652.336, y = 149.412, z = 1896.496 }, rot = { x = 359.658, y = 220.766, z = 359.310 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1532003, name = "ANY_MONSTER_DIE_532003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_532003", action = "action_EVENT_ANY_MONSTER_DIE_532003" }
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
		monsters = { 532001, 532004, 532005, 532006 },
		gadgets = { 532002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_532003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_532003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_532003(context, evt)
	-- 将configid为 532002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 532002, GadgetState.Default) then
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