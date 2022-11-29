-- 基础信息
local base_info = {
	group_id = 133107057
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 57001, monster_id = 21010201, pos = { x = -422.135, y = 334.595, z = 574.930 }, rot = { x = 0.000, y = 327.223, z = 0.000 }, level = 24, drop_tag = "丘丘人", disableWander = true, area_id = 7 },
	{ config_id = 57005, monster_id = 21020301, pos = { x = -424.415, y = 335.871, z = 578.341 }, rot = { x = 0.000, y = 156.706, z = 0.000 }, level = 24, drop_tag = "丘丘暴徒", disableWander = true, area_id = 7 },
	{ config_id = 57006, monster_id = 21010401, pos = { x = -421.262, y = 334.487, z = 579.328 }, rot = { x = 355.727, y = 225.869, z = 4.135 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 57002, gadget_id = 70211012, pos = { x = -426.740, y = 336.845, z = 578.502 }, rot = { x = 20.147, y = 136.179, z = 13.878 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 57013, gadget_id = 70300107, pos = { x = -423.261, y = 335.060, z = 576.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1057003, name = "ANY_MONSTER_DIE_57003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_57003", action = "action_EVENT_ANY_MONSTER_DIE_57003" }
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
		monsters = { 57001, 57005, 57006 },
		gadgets = { 57002, 57013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_57003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_57003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_57003(context, evt)
	-- 将configid为 57002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57002, GadgetState.Default) then
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