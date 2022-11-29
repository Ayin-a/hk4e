-- 基础信息
local base_info = {
	group_id = 199001162
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 162001, monster_id = 20011301, pos = { x = 272.174, y = 120.476, z = 346.996 }, rot = { x = 0.000, y = 118.031, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 402 },
	{ config_id = 162004, monster_id = 20011201, pos = { x = 270.890, y = 120.476, z = 348.857 }, rot = { x = 0.000, y = 118.031, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 402 },
	{ config_id = 162005, monster_id = 20011301, pos = { x = 268.844, y = 120.476, z = 346.445 }, rot = { x = 0.000, y = 118.031, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 162002, gadget_id = 70211002, pos = { x = 267.814, y = 121.328, z = 340.349 }, rot = { x = 347.943, y = 13.900, z = -0.001 }, level = 16, drop_tag = "战斗低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1162003, name = "ANY_MONSTER_DIE_162003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_162003", action = "action_EVENT_ANY_MONSTER_DIE_162003" }
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
		monsters = { 162001, 162004, 162005 },
		gadgets = { 162002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_162003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_162003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_162003(context, evt)
	-- 将configid为 162002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 162002, GadgetState.Default) then
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