-- 基础信息
local base_info = {
	group_id = 133104441
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 441001, monster_id = 22010301, pos = { x = 234.606, y = 206.009, z = 458.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 9 },
	{ config_id = 441005, monster_id = 21010901, pos = { x = 230.357, y = 210.393, z = 466.914 }, rot = { x = 0.000, y = 218.100, z = 0.000 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, area_id = 9 },
	{ config_id = 441006, monster_id = 21011201, pos = { x = 236.578, y = 206.165, z = 461.891 }, rot = { x = 0.000, y = 194.130, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, area_id = 9 },
	{ config_id = 441007, monster_id = 21011201, pos = { x = 232.652, y = 206.091, z = 461.647 }, rot = { x = 0.000, y = 163.800, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 441002, gadget_id = 70211022, pos = { x = 234.406, y = 206.218, z = 463.206 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 441008, gadget_id = 70220013, pos = { x = 226.145, y = 206.028, z = 449.667 }, rot = { x = 1.513, y = 0.036, z = 2.690 }, level = 19, area_id = 9 },
	{ config_id = 441010, gadget_id = 70220014, pos = { x = 228.488, y = 206.281, z = 462.469 }, rot = { x = 351.120, y = 359.931, z = 0.895 }, level = 19, area_id = 9 },
	{ config_id = 441012, gadget_id = 70220005, pos = { x = 229.677, y = 206.056, z = 459.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 441014, gadget_id = 70310001, pos = { x = 232.872, y = 206.210, z = 463.651 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 441015, gadget_id = 70310001, pos = { x = 235.914, y = 206.208, z = 463.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1441003, name = "ANY_MONSTER_DIE_441003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_441003", action = "action_EVENT_ANY_MONSTER_DIE_441003" }
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
		monsters = { 441001, 441005, 441006, 441007 },
		gadgets = { 441002, 441008, 441010, 441012, 441014, 441015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_441003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_441003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_441003(context, evt)
	-- 将configid为 441002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 441002, GadgetState.Default) then
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