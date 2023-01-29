-- 基础信息
local base_info = {
	group_id = 133314267
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 267001, monster_id = 23010201, pos = { x = -831.806, y = 87.758, z = 4730.708 }, rot = { x = 0.000, y = 77.084, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, pose_id = 9001, area_id = 32 },
	{ config_id = 267004, monster_id = 23010601, pos = { x = -829.271, y = 87.794, z = 4730.828 }, rot = { x = 0.000, y = 252.837, z = 0.000 }, level = 32, drop_tag = "先遣队", pose_id = 9012, area_id = 32 },
	{ config_id = 267005, monster_id = 23010301, pos = { x = -796.073, y = 98.803, z = 4747.564 }, rot = { x = 0.000, y = 217.506, z = 0.000 }, level = 32, drop_tag = "先遣队", area_id = 32 },
	{ config_id = 267006, monster_id = 23010401, pos = { x = -786.276, y = 102.187, z = 4733.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "先遣队", area_id = 32 },
	{ config_id = 267007, monster_id = 23010501, pos = { x = -785.830, y = 102.239, z = 4736.488 }, rot = { x = 0.000, y = 207.143, z = 0.000 }, level = 32, drop_tag = "先遣队", area_id = 32 },
	{ config_id = 267008, monster_id = 23010101, pos = { x = -794.560, y = 98.330, z = 4745.654 }, rot = { x = 0.000, y = 225.511, z = 0.000 }, level = 32, drop_tag = "先遣队", area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 267002, gadget_id = 70211022, pos = { x = -784.174, y = 102.346, z = 4738.774 }, rot = { x = 358.970, y = 247.469, z = 1.594 }, level = 26, drop_tag = "战斗高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1267003, name = "ANY_MONSTER_DIE_267003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_267003", action = "action_EVENT_ANY_MONSTER_DIE_267003" }
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
		monsters = { 267001, 267004, 267005, 267006, 267007, 267008 },
		gadgets = { 267002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_267003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_267003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_267003(context, evt)
	-- 将configid为 267002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 267002, GadgetState.Default) then
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