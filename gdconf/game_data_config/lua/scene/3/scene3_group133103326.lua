-- 基础信息
local base_info = {
	group_id = 133103326
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 326004, monster_id = 21010501, pos = { x = 437.055, y = 247.332, z = 1098.707 }, rot = { x = 0.000, y = 195.456, z = 0.000 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 326005, monster_id = 22010101, pos = { x = 434.722, y = 247.084, z = 1094.397 }, rot = { x = 0.000, y = 47.801, z = 0.000 }, level = 19, drop_tag = "深渊法师", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 326002, gadget_id = 70211012, pos = { x = 437.666, y = 246.939, z = 1095.343 }, rot = { x = 350.304, y = 0.530, z = 353.758 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 326006, gadget_id = 70310001, pos = { x = 439.058, y = 246.307, z = 1093.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 326007, gadget_id = 70220013, pos = { x = 436.513, y = 246.289, z = 1091.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1326003, name = "ANY_MONSTER_DIE_326003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_326003", action = "action_EVENT_ANY_MONSTER_DIE_326003" }
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
		monsters = { 326004, 326005 },
		gadgets = { 326002, 326006, 326007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_326003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_326003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_326003(context, evt)
	-- 将configid为 326002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 326002, GadgetState.Default) then
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