-- 基础信息
local base_info = {
	group_id = 133310485
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 485002, monster_id = 21020301, pos = { x = -3111.012, y = 124.740, z = 4338.162 }, rot = { x = 0.000, y = 97.415, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", disableWander = true, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 485001, gadget_id = 70330259, pos = { x = -3113.096, y = 122.266, z = 4335.547 }, rot = { x = 4.721, y = 331.397, z = 345.218 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 485004, gadget_id = 70211002, pos = { x = -3108.336, y = 123.989, z = 4337.796 }, rot = { x = 11.384, y = 56.451, z = 349.331 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1485003, name = "ANY_GADGET_DIE_485003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_485003", action = "action_EVENT_ANY_GADGET_DIE_485003" },
	{ config_id = 1485005, name = "ANY_MONSTER_DIE_485005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_485005", action = "action_EVENT_ANY_MONSTER_DIE_485005" }
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
	end_suite = 2,
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
		monsters = { },
		gadgets = { 485001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_485003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 485002 },
		gadgets = { 485004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_485005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_485003(context, evt)
	if 485001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_485003(context, evt)
	-- 将本组内变量名为 "stone01" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stone01", 1, 133310375) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133310485, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_485005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_485005(context, evt)
	-- 将configid为 485004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 485004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end