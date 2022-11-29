-- 基础信息
local base_info = {
	group_id = 177006004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 20060501, pos = { x = 525.679, y = 131.143, z = -288.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "飘浮灵", disableWander = true, affix = { 1032 }, pose_id = 101, area_id = 210 },
	{ config_id = 4004, monster_id = 20060501, pos = { x = 519.844, y = 131.425, z = -283.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "飘浮灵", disableWander = true, affix = { 1032 }, pose_id = 101, area_id = 210 },
	{ config_id = 4005, monster_id = 20060401, pos = { x = 518.944, y = 131.278, z = -287.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "飘浮灵", disableWander = true, affix = { 1032 }, pose_id = 101, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4002, gadget_id = 70211156, pos = { x = 522.327, y = 129.668, z = -286.141 }, rot = { x = 0.000, y = 297.839, z = 0.000 }, level = 16, drop_tag = "渊下宫活动低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004003, name = "ANY_MONSTER_DIE_4003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4003", action = "action_EVENT_ANY_MONSTER_DIE_4003", trigger_count = 0 }
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
		monsters = { 4001, 4004, 4005 },
		gadgets = { 4002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4003(context, evt)
	-- 将configid为 4002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4002, GadgetState.Default) then
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