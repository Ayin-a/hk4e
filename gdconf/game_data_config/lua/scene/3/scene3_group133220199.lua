-- 基础信息
local base_info = {
	group_id = 133220199
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 199001, monster_id = 25080101, pos = { x = -2826.107, y = 200.521, z = -4569.214 }, rot = { x = 0.000, y = 263.961, z = 0.000 }, level = 27, drop_tag = "浪人武士", pose_id = 1, area_id = 11 },
	{ config_id = 199004, monster_id = 25080201, pos = { x = -2817.145, y = 200.587, z = -4576.298 }, rot = { x = 0.000, y = 137.647, z = 0.000 }, level = 27, drop_tag = "浪人武士", pose_id = 1006, area_id = 11 },
	{ config_id = 199005, monster_id = 25080301, pos = { x = -2827.299, y = 200.527, z = -4548.634 }, rot = { x = 0.000, y = 246.014, z = 0.000 }, level = 27, drop_tag = "浪人武士", pose_id = 1004, area_id = 11 },
	{ config_id = 199006, monster_id = 25100101, pos = { x = -2834.447, y = 200.803, z = -4569.067 }, rot = { x = 0.000, y = 198.182, z = 0.000 }, level = 27, drop_tag = "高阶武士", pose_id = 1002, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 199002, gadget_id = 70211002, pos = { x = -2835.904, y = 201.123, z = -4571.974 }, rot = { x = 4.207, y = 28.441, z = 355.375 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 199008, gadget_id = 70310004, pos = { x = -2828.366, y = 200.483, z = -4549.423 }, rot = { x = 354.800, y = 44.208, z = 356.016 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 199009, gadget_id = 70220052, pos = { x = -2826.075, y = 200.304, z = -4553.655 }, rot = { x = 359.091, y = 119.248, z = 356.593 }, level = 27, area_id = 11 },
	{ config_id = 199010, gadget_id = 70220050, pos = { x = -2825.797, y = 200.444, z = -4552.353 }, rot = { x = 0.000, y = 47.774, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 199011, gadget_id = 70220052, pos = { x = -2825.730, y = 200.454, z = -4550.873 }, rot = { x = 0.000, y = 213.159, z = 354.905 }, level = 27, area_id = 11 },
	{ config_id = 199012, gadget_id = 70220051, pos = { x = -2826.955, y = 200.392, z = -4552.563 }, rot = { x = 292.384, y = 24.643, z = 289.453 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1199003, name = "ANY_MONSTER_DIE_199003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_199003", action = "action_EVENT_ANY_MONSTER_DIE_199003" }
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
		monsters = { 199001, 199004, 199005, 199006 },
		gadgets = { 199002, 199008, 199009, 199010, 199011, 199012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_199003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_199003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_199003(context, evt)
	-- 将configid为 199002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 199002, GadgetState.Default) then
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