-- 基础信息
local base_info = {
	group_id = 133309396
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 396001, monster_id = 25310301, pos = { x = -2630.093, y = 167.060, z = 5344.399 }, rot = { x = 0.000, y = 59.875, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", pose_id = 9002, area_id = 27 },
	{ config_id = 396004, monster_id = 28060901, pos = { x = -2641.867, y = 167.572, z = 5335.326 }, rot = { x = 0.000, y = 10.034, z = 0.000 }, level = 32, drop_tag = "驮兽镀金旅团", disableWander = true, affix = { 5175 }, pose_id = 1, area_id = 27 },
	{ config_id = 396005, monster_id = 25210202, pos = { x = -2634.462, y = 168.129, z = 5344.204 }, rot = { x = 0.000, y = 161.394, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9003, area_id = 27 },
	{ config_id = 396006, monster_id = 25210502, pos = { x = -2631.807, y = 166.828, z = 5341.034 }, rot = { x = 0.000, y = 359.555, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9503, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 396002, gadget_id = 70211002, pos = { x = -2629.074, y = 167.089, z = 5346.720 }, rot = { x = 13.251, y = 102.860, z = 355.823 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1396003, name = "ANY_MONSTER_DIE_396003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_396003", action = "action_EVENT_ANY_MONSTER_DIE_396003" }
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
		monsters = { 396001, 396004, 396005, 396006 },
		gadgets = { 396002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_396003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_396003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_396003(context, evt)
	-- 将configid为 396002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 396002, GadgetState.Default) then
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