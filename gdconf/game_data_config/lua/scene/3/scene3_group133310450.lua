-- 基础信息
local base_info = {
	group_id = 133310450
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 450001, monster_id = 26010201, pos = { x = -2251.319, y = 226.749, z = 4488.799 }, rot = { x = 0.000, y = 317.006, z = 0.000 }, level = 32, drop_tag = "骗骗花", disableWander = true, area_id = 26 },
	{ config_id = 450004, monster_id = 26090601, pos = { x = -2245.199, y = 226.542, z = 4491.472 }, rot = { x = 0.000, y = 253.214, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 26 },
	{ config_id = 450005, monster_id = 26090701, pos = { x = -2254.889, y = 226.902, z = 4486.003 }, rot = { x = 0.000, y = 35.850, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 26 },
	{ config_id = 450006, monster_id = 26090601, pos = { x = -2251.228, y = 225.745, z = 4495.072 }, rot = { x = 0.000, y = 208.470, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 450002, gadget_id = 70211002, pos = { x = -2254.867, y = 225.739, z = 4492.787 }, rot = { x = 352.593, y = 131.897, z = 2.913 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1450003, name = "ANY_MONSTER_DIE_450003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_450003", action = "action_EVENT_ANY_MONSTER_DIE_450003" }
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
		monsters = { 450001, 450004, 450005, 450006 },
		gadgets = { 450002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_450003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_450003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_450003(context, evt)
	-- 将configid为 450002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 450002, GadgetState.Default) then
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