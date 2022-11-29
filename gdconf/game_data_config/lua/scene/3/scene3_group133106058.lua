-- 基础信息
local base_info = {
	group_id = 133106058
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 58001, monster_id = 25030201, pos = { x = -847.686, y = 156.980, z = 1189.619 }, rot = { x = 0.000, y = 63.417, z = 0.000 }, level = 32, drop_tag = "盗宝团", pose_id = 9006, area_id = 8 },
	{ config_id = 58004, monster_id = 25010501, pos = { x = -845.496, y = 156.892, z = 1191.023 }, rot = { x = 0.000, y = 225.245, z = 0.000 }, level = 32, drop_tag = "盗宝团", disableWander = true, pose_id = 9009, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 58002, gadget_id = 70211002, pos = { x = -849.428, y = 157.321, z = 1190.741 }, rot = { x = 0.000, y = 109.703, z = 0.000 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 58006, gadget_id = 70310006, pos = { x = -839.739, y = 157.092, z = 1194.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1058003, name = "ANY_MONSTER_DIE_58003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_58003", action = "action_EVENT_ANY_MONSTER_DIE_58003" }
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
		monsters = { 58001, 58004 },
		gadgets = { 58002, 58006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_58003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_58003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_58003(context, evt)
	-- 将configid为 58002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58002, GadgetState.Default) then
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