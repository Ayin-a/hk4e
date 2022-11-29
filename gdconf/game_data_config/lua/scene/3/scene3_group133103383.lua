-- 基础信息
local base_info = {
	group_id = 133103383
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 383001, monster_id = 25070101, pos = { x = 352.149, y = 215.588, z = 1553.495 }, rot = { x = 0.000, y = 330.360, z = 0.000 }, level = 24, drop_tag = "盗宝团", disableWander = true, area_id = 6 },
	{ config_id = 383004, monster_id = 25010501, pos = { x = 352.518, y = 215.719, z = 1554.986 }, rot = { x = 0.000, y = 206.263, z = 0.000 }, level = 24, drop_tag = "盗宝团", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 383002, gadget_id = 70211012, pos = { x = 345.953, y = 213.935, z = 1554.676 }, rot = { x = 6.433, y = 285.684, z = 12.112 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1383003, name = "ANY_MONSTER_DIE_383003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_383003", action = "action_EVENT_ANY_MONSTER_DIE_383003" }
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
		monsters = { 383001, 383004 },
		gadgets = { 383002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_383003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_383003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_383003(context, evt)
	-- 将configid为 383002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 383002, GadgetState.Default) then
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