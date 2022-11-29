-- 基础信息
local base_info = {
	group_id = 133107116
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 116001, monster_id = 23010301, pos = { x = -796.115, y = 316.009, z = 608.620 }, rot = { x = 0.000, y = 336.479, z = 0.000 }, level = 24, drop_tag = "先遣队", disableWander = true, area_id = 7 },
	{ config_id = 116002, monster_id = 23010401, pos = { x = -799.212, y = 315.869, z = 613.922 }, rot = { x = 0.000, y = 160.633, z = 0.000 }, level = 24, drop_tag = "先遣队", disableWander = true, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 116004, gadget_id = 70211012, pos = { x = -801.038, y = 315.794, z = 617.539 }, rot = { x = 0.000, y = 184.116, z = 0.000 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 116005, gadget_id = 70220013, pos = { x = -801.895, y = 315.505, z = 607.941 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 116006, gadget_id = 70220013, pos = { x = -793.943, y = 316.095, z = 611.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 116007, gadget_id = 70310006, pos = { x = -797.534, y = 316.031, z = 610.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1116008, name = "ANY_MONSTER_DIE_116008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_116008", action = "action_EVENT_ANY_MONSTER_DIE_116008" }
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
		monsters = { 116001, 116002 },
		gadgets = { 116004, 116005, 116006, 116007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_116008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_116008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_116008(context, evt)
	-- 将configid为 116004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 116004, GadgetState.Default) then
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