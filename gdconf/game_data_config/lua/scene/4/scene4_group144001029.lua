-- 基础信息
local base_info = {
	group_id = 144001029
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 29001, monster_id = 21020301, pos = { x = 223.621, y = 120.841, z = 228.318 }, rot = { x = 0.000, y = 42.254, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, area_id = 102 },
	{ config_id = 29004, monster_id = 21010601, pos = { x = 224.357, y = 121.128, z = 222.968 }, rot = { x = 0.000, y = 87.333, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 102 },
	{ config_id = 29006, monster_id = 21010701, pos = { x = 230.290, y = 120.722, z = 228.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 102 },
	{ config_id = 29007, monster_id = 21010201, pos = { x = 226.617, y = 120.731, z = 229.837 }, rot = { x = 0.000, y = 297.202, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 102 },
	{ config_id = 29008, monster_id = 21010301, pos = { x = 220.395, y = 120.845, z = 231.225 }, rot = { x = 0.000, y = 104.424, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 29002, gadget_id = 70211012, pos = { x = 223.619, y = 120.789, z = 231.219 }, rot = { x = 0.000, y = 97.762, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1029003, name = "ANY_MONSTER_DIE_29003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_29003", action = "action_EVENT_ANY_MONSTER_DIE_29003" }
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
		monsters = { 29001, 29004, 29006, 29007, 29008 },
		gadgets = { 29002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_29003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_29003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_29003(context, evt)
	-- 将configid为 29002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 29002, GadgetState.Default) then
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