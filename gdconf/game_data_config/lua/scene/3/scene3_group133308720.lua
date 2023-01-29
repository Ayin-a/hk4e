-- 基础信息
local base_info = {
	group_id = 133308720
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 720001, monster_id = 25210401, pos = { x = -1089.360, y = 133.839, z = 4922.904 }, rot = { x = 0.000, y = 310.143, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 32 },
	{ config_id = 720004, monster_id = 25210203, pos = { x = -1102.446, y = 133.351, z = 4910.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 32 },
	{ config_id = 720005, monster_id = 25210203, pos = { x = -1095.108, y = 133.682, z = 4917.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 32 },
	{ config_id = 720006, monster_id = 28060901, pos = { x = -1103.132, y = 133.316, z = 4906.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "驮兽镀金旅团", pose_id = 2, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 720002, gadget_id = 70211022, pos = { x = -1094.356, y = 133.745, z = 4912.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1720003, name = "ANY_MONSTER_DIE_720003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_720003", action = "action_EVENT_ANY_MONSTER_DIE_720003" }
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
		monsters = { 720001, 720004, 720005, 720006 },
		gadgets = { 720002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_720003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_720003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133308717) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_720003(context, evt)
	-- 将configid为 720002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 720002, GadgetState.Default) then
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