-- 基础信息
local base_info = {
	group_id = 133308163
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 163004, monster_id = 24030201, pos = { x = -1953.143, y = 202.338, z = 4664.945 }, rot = { x = 0.000, y = 358.475, z = 0.000 }, level = 32, drop_tag = "遗迹龙兽", pose_id = 102, area_id = 26 },
	{ config_id = 163005, monster_id = 24030101, pos = { x = -1952.785, y = 202.093, z = 4675.397 }, rot = { x = 0.000, y = 145.511, z = 0.000 }, level = 32, drop_tag = "遗迹龙兽", pose_id = 102, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 163002, gadget_id = 70211022, pos = { x = -1948.303, y = 202.411, z = 4669.614 }, rot = { x = 354.609, y = 105.663, z = 0.740 }, level = 26, drop_tag = "战斗高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1163001, name = "ANY_MONSTER_DIE_163001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_163001", action = "action_EVENT_ANY_MONSTER_DIE_163001" },
	{ config_id = 1163003, name = "ANY_MONSTER_DIE_163003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_163003", action = "action_EVENT_ANY_MONSTER_DIE_163003" }
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
		monsters = { 163004, 163005 },
		gadgets = { 163002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_163001", "ANY_MONSTER_DIE_163003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_163001(context, evt)
	if 163004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_163001(context, evt)
		-- 改变指定monster的globalvalue
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {163005}, "_MONSTERAFFIX_AIHITFEELING_LEVELTRIGGER", 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_163003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_163003(context, evt)
	-- 将configid为 163002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163002, GadgetState.Default) then
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