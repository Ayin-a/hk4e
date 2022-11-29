-- 基础信息
local base_info = {
	group_id = 133301633
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 633001, monster_id = 21010201, pos = { x = -301.148, y = 304.617, z = 3246.919 }, rot = { x = 0.000, y = 91.058, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, area_id = 22 },
	{ config_id = 633004, monster_id = 21011001, pos = { x = -303.135, y = 305.108, z = 3272.888 }, rot = { x = 0.000, y = 172.959, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 22 },
	{ config_id = 633005, monster_id = 21020701, pos = { x = -306.682, y = 304.859, z = 3271.812 }, rot = { x = 0.000, y = 140.492, z = 0.000 }, level = 27, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 22 },
	{ config_id = 633006, monster_id = 21010201, pos = { x = -293.597, y = 303.841, z = 3257.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 633002, gadget_id = 70211012, pos = { x = -308.077, y = 305.266, z = 3267.847 }, rot = { x = 0.000, y = 32.221, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 633007, gadget_id = 70300088, pos = { x = -305.676, y = 305.446, z = 3266.807 }, rot = { x = 0.000, y = 332.283, z = 0.000 }, level = 27, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1633003, name = "ANY_MONSTER_DIE_633003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_633003", action = "action_EVENT_ANY_MONSTER_DIE_633003" }
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
		monsters = { 633001, 633004, 633005, 633006 },
		gadgets = { 633002, 633007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_633003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_633003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_633003(context, evt)
	-- 将configid为 633002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 633002, GadgetState.Default) then
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