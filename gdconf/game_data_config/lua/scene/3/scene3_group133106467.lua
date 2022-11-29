-- 基础信息
local base_info = {
	group_id = 133106467
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 467001, monster_id = 23010601, pos = { x = -684.288, y = 98.837, z = 1717.402 }, rot = { x = 0.000, y = 310.249, z = 0.000 }, level = 36, drop_tag = "先遣队", disableWander = true, pose_id = 9011, area_id = 19 },
	{ config_id = 467004, monster_id = 23010501, pos = { x = -681.760, y = 97.853, z = 1733.083 }, rot = { x = 0.000, y = 9.051, z = 0.000 }, level = 36, drop_tag = "先遣队", pose_id = 9001, area_id = 19 },
	{ config_id = 467005, monster_id = 23050101, pos = { x = -685.699, y = 98.721, z = 1719.186 }, rot = { x = 0.000, y = 146.665, z = 0.000 }, level = 36, drop_tag = "藏镜侍女", disableWander = true, area_id = 19 },
	{ config_id = 467006, monster_id = 23010601, pos = { x = -675.193, y = 100.354, z = 1728.138 }, rot = { x = 0.000, y = 325.094, z = 0.000 }, level = 36, drop_tag = "先遣队", pose_id = 9002, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 467002, gadget_id = 70211022, pos = { x = -679.152, y = 98.808, z = 1723.935 }, rot = { x = 0.000, y = 250.462, z = 0.000 }, level = 26, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1467003, name = "ANY_MONSTER_DIE_467003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_467003", action = "action_EVENT_ANY_MONSTER_DIE_467003" }
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
		monsters = { 467001, 467004, 467005, 467006 },
		gadgets = { 467002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_467003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_467003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_467003(context, evt)
	-- 将configid为 467002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 467002, GadgetState.Default) then
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