-- 基础信息
local base_info = {
	group_id = 177008008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 24020101, pos = { x = -69.767, y = 168.022, z = 56.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, affix = { 1040 }, pose_id = 101, area_id = 210 },
	{ config_id = 8004, monster_id = 24020101, pos = { x = -76.679, y = 169.054, z = 55.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, affix = { 1040 }, pose_id = 101, area_id = 210 },
	{ config_id = 8005, monster_id = 21010201, pos = { x = -75.378, y = 168.950, z = 62.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘人", area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8002, gadget_id = 70211156, pos = { x = -76.373, y = 169.062, z = 58.552 }, rot = { x = 351.347, y = 325.472, z = 353.026 }, level = 16, drop_tag = "渊下宫活动低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1008003, name = "ANY_MONSTER_DIE_8003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8003", action = "action_EVENT_ANY_MONSTER_DIE_8003" }
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
		monsters = { 8001, 8004 },
		gadgets = { 8002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_8003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8003(context, evt)
	-- 将configid为 8002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8002, GadgetState.Default) then
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