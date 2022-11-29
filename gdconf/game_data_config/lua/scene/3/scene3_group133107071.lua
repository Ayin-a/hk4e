-- 基础信息
local base_info = {
	group_id = 133107071
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 71001, monster_id = 21010501, pos = { x = -562.582, y = 354.587, z = 597.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 7 },
	{ config_id = 71011, monster_id = 21010501, pos = { x = -551.908, y = 357.536, z = 617.775 }, rot = { x = 0.000, y = 214.473, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 7 },
	{ config_id = 71012, monster_id = 21030401, pos = { x = -554.645, y = 354.324, z = 604.631 }, rot = { x = 0.000, y = 325.589, z = 0.000 }, level = 24, drop_tag = "丘丘萨满", disableWander = true, area_id = 7 },
	{ config_id = 71013, monster_id = 21030201, pos = { x = -554.848, y = 353.990, z = 608.712 }, rot = { x = 0.000, y = 214.384, z = 0.000 }, level = 24, drop_tag = "丘丘萨满", disableWander = true, area_id = 7 },
	{ config_id = 71014, monster_id = 21010501, pos = { x = -558.385, y = 353.040, z = 606.385 }, rot = { x = 0.000, y = 81.995, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 71002, gadget_id = 70211012, pos = { x = -551.143, y = 354.810, z = 607.571 }, rot = { x = 353.540, y = 262.546, z = 351.925 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 71004, gadget_id = 70300086, pos = { x = -551.627, y = 354.316, z = 611.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 71005, gadget_id = 70300086, pos = { x = -551.131, y = 355.541, z = 604.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 71006, gadget_id = 70300086, pos = { x = -557.479, y = 350.816, z = 615.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 71007, gadget_id = 70300086, pos = { x = -556.304, y = 354.461, z = 596.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 71008, gadget_id = 70310001, pos = { x = -551.450, y = 354.617, z = 609.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 71009, gadget_id = 70310001, pos = { x = -551.099, y = 355.161, z = 606.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 71010, gadget_id = 70310006, pos = { x = -555.794, y = 353.706, z = 606.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1071003, name = "ANY_MONSTER_DIE_71003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_71003", action = "action_EVENT_ANY_MONSTER_DIE_71003" }
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
		monsters = { 71001, 71011, 71012, 71013, 71014 },
		gadgets = { 71002, 71004, 71005, 71006, 71007, 71008, 71009, 71010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_71003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_71003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_71003(context, evt)
	-- 将configid为 71002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 71002, GadgetState.Default) then
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