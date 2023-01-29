-- 基础信息
local base_info = {
	group_id = 133314045
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 45001, monster_id = 21011001, pos = { x = -972.373, y = 87.812, z = 4905.092 }, rot = { x = 0.000, y = 322.382, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, area_id = 32 },
	{ config_id = 45004, monster_id = 21011001, pos = { x = -987.183, y = 83.782, z = 4910.861 }, rot = { x = 0.000, y = 357.258, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", disableWander = true, area_id = 32 },
	{ config_id = 45005, monster_id = 21020701, pos = { x = -981.946, y = 83.865, z = 4906.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 45002, gadget_id = 70211002, pos = { x = -979.638, y = 87.708, z = 4902.417 }, rot = { x = 0.000, y = 337.570, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 45006, gadget_id = 70300086, pos = { x = -978.613, y = 84.213, z = 4912.801 }, rot = { x = 0.000, y = 11.999, z = 16.377 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1045003, name = "ANY_MONSTER_DIE_45003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_45003", action = "action_EVENT_ANY_MONSTER_DIE_45003" }
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
		monsters = { 45001, 45004, 45005 },
		gadgets = { 45002, 45006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_45003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_45003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_45003(context, evt)
	-- 将configid为 45002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 45002, GadgetState.Default) then
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