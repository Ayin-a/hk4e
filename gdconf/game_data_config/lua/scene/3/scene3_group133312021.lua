-- 基础信息
local base_info = {
	group_id = 133312021
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 21004, monster_id = 25210202, pos = { x = -2640.595, y = 89.956, z = 4534.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9511, area_id = 28 },
	{ config_id = 21005, monster_id = 25210502, pos = { x = -2640.469, y = 89.912, z = 4537.485 }, rot = { x = 0.000, y = 173.934, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9512, area_id = 28 },
	{ config_id = 21006, monster_id = 25310301, pos = { x = -2641.597, y = 90.970, z = 4518.785 }, rot = { x = 0.000, y = 351.993, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 21001, gadget_id = 70220128, pos = { x = -2640.322, y = 89.834, z = 4536.002 }, rot = { x = 0.000, y = 271.053, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 21002, gadget_id = 70211002, pos = { x = -2647.572, y = 90.476, z = 4521.043 }, rot = { x = 2.708, y = 6.903, z = 359.373 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1021003, name = "ANY_MONSTER_DIE_21003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_21003", action = "action_EVENT_ANY_MONSTER_DIE_21003" }
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
		monsters = { 21004, 21005, 21006 },
		gadgets = { 21001, 21002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_21003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_21003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_21003(context, evt)
	-- 将configid为 21002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 21002, GadgetState.Default) then
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