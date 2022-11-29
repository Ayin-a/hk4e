-- 基础信息
local base_info = {
	group_id = 133315308
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 308001, monster_id = 26120301, pos = { x = 498.616, y = 98.885, z = 2385.075 }, rot = { x = 0.000, y = 54.118, z = 0.000 }, level = 27, drop_tag = "大蕈兽", disableWander = true, pose_id = 101, area_id = 20 },
	{ config_id = 308004, monster_id = 26090101, pos = { x = 500.795, y = 97.935, z = 2387.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 102, area_id = 20 },
	{ config_id = 308005, monster_id = 26090101, pos = { x = 503.468, y = 97.935, z = 2385.418 }, rot = { x = 0.000, y = 282.745, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 102, area_id = 20 },
	{ config_id = 308006, monster_id = 26090101, pos = { x = 504.737, y = 97.935, z = 2380.888 }, rot = { x = 0.000, y = 298.329, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 102, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 308002, gadget_id = 70211002, pos = { x = 496.684, y = 98.358, z = 2386.820 }, rot = { x = 0.000, y = 180.045, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1308003, name = "ANY_MONSTER_DIE_308003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_308003", action = "action_EVENT_ANY_MONSTER_DIE_308003" },
	{ config_id = 1308007, name = "GROUP_LOAD_308007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_308007", action = "action_EVENT_GROUP_LOAD_308007", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_308007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 308001, 308004, 308005, 308006 },
		gadgets = { 308002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_308003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_308003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_308003(context, evt)
	-- 将configid为 308002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 308002, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_GROUP_LOAD_308007(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_308007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133315308, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"