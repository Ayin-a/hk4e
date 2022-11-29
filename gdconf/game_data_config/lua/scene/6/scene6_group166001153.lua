-- 基础信息
local base_info = {
	group_id = 166001153
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 153001, monster_id = 23010301, pos = { x = 947.594, y = 717.777, z = 303.325 }, rot = { x = 0.000, y = 96.516, z = 0.000 }, level = 36, drop_tag = "先遣队", disableWander = true, pose_id = 9001, area_id = 300 },
	{ config_id = 153006, monster_id = 23010601, pos = { x = 961.781, y = 719.999, z = 313.907 }, rot = { x = 0.000, y = 109.616, z = 0.000 }, level = 36, drop_tag = "先遣队", disableWander = true, pose_id = 9002, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 153002, gadget_id = 70211112, pos = { x = 942.031, y = 717.961, z = 305.453 }, rot = { x = 0.000, y = 97.023, z = 0.000 }, level = 26, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1153003, name = "ANY_MONSTER_DIE_153003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_153003", action = "action_EVENT_ANY_MONSTER_DIE_153003" }
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
		monsters = { 153001, 153006 },
		gadgets = { 153002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_153003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_153003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_153003(context, evt)
	-- 将configid为 153002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 153002, GadgetState.Default) then
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