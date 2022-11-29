-- 基础信息
local base_info = {
	group_id = 199003088
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 88001, monster_id = 21010201, pos = { x = -666.224, y = 120.000, z = -223.705 }, rot = { x = 0.000, y = 303.283, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 403 },
	{ config_id = 88004, monster_id = 21020501, pos = { x = -651.142, y = 120.264, z = -213.596 }, rot = { x = 0.000, y = 155.091, z = 0.000 }, level = 20, drop_tag = "丘丘岩盔王", pose_id = 401, area_id = 403 },
	{ config_id = 88005, monster_id = 21020201, pos = { x = -642.585, y = 120.234, z = -226.032 }, rot = { x = 0.000, y = 233.117, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, area_id = 403 },
	{ config_id = 88006, monster_id = 21020101, pos = { x = -651.702, y = 120.247, z = -232.008 }, rot = { x = 0.000, y = 59.414, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, area_id = 403 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 88002, gadget_id = 70211012, pos = { x = -646.481, y = 120.391, z = -228.489 }, rot = { x = 0.000, y = 333.652, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1088003, name = "ANY_MONSTER_DIE_88003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_88003", action = "action_EVENT_ANY_MONSTER_DIE_88003" }
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
		monsters = { 88001, 88004, 88005, 88006 },
		gadgets = { 88002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_88003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_88003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_88003(context, evt)
	-- 将configid为 88002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 88002, GadgetState.Default) then
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