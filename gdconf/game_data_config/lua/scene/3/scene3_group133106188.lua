-- 基础信息
local base_info = {
	group_id = 133106188
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 188001, monster_id = 23010101, pos = { x = -1015.064, y = 240.992, z = 1017.553 }, rot = { x = 0.000, y = 162.559, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, area_id = 8 },
	{ config_id = 188002, monster_id = 23010201, pos = { x = -1019.699, y = 240.971, z = 1016.202 }, rot = { x = 0.000, y = 161.026, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 188005, gadget_id = 70211012, pos = { x = -1009.849, y = 241.310, z = 1022.700 }, rot = { x = 1.978, y = 211.151, z = 5.362 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 188006, gadget_id = 70310006, pos = { x = -1006.451, y = 241.023, z = 1020.728 }, rot = { x = 2.385, y = 93.159, z = 5.490 }, level = 32, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1188007, name = "ANY_MONSTER_DIE_188007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_188007", action = "action_EVENT_ANY_MONSTER_DIE_188007" }
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
		monsters = { 188001, 188002 },
		gadgets = { 188005, 188006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_188007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_188007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_188007(context, evt)
	-- 将configid为 188005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 188005, GadgetState.Default) then
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