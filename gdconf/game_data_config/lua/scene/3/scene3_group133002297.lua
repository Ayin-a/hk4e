-- 基础信息
local base_info = {
	group_id = 133002297
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 297001, monster_id = 23010101, pos = { x = 1732.630, y = 274.753, z = -48.953 }, rot = { x = 355.321, y = 102.153, z = 343.307 }, level = 15, drop_tag = "先遣队", disableWander = true, area_id = 5 },
	{ config_id = 297004, monster_id = 23010201, pos = { x = 1738.614, y = 275.082, z = -50.861 }, rot = { x = 357.727, y = 304.682, z = 17.173 }, level = 15, drop_tag = "先遣队", disableWander = true, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 297002, gadget_id = 70211012, pos = { x = 1734.998, y = 274.843, z = -49.854 }, rot = { x = 344.687, y = 358.790, z = 8.187 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1297003, name = "ANY_MONSTER_DIE_297003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_297003", action = "action_EVENT_ANY_MONSTER_DIE_297003" }
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
		-- description = suite_1,
		monsters = { 297001, 297004 },
		gadgets = { 297002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_297003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_297003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_297003(context, evt)
	-- 将configid为 297002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 297002, GadgetState.Default) then
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