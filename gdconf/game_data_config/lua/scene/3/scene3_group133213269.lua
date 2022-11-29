-- 基础信息
local base_info = {
	group_id = 133213269
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 269001, monster_id = 21030201, pos = { x = -3862.585, y = 206.558, z = -2978.319 }, rot = { x = 9.886, y = 26.912, z = 3.998 }, level = 28, drop_tag = "丘丘萨满", disableWander = true, area_id = 12 },
	{ config_id = 269004, monster_id = 21020301, pos = { x = -3859.256, y = 206.194, z = -2981.015 }, rot = { x = 10.619, y = 359.917, z = 359.105 }, level = 27, drop_tag = "丘丘暴徒", disableWander = true, area_id = 12 },
	{ config_id = 269005, monster_id = 21020701, pos = { x = -3852.262, y = 205.861, z = -2978.137 }, rot = { x = 10.619, y = 359.917, z = 359.105 }, level = 27, drop_tag = "丘丘暴徒", disableWander = true, area_id = 12 },
	{ config_id = 269006, monster_id = 21020801, pos = { x = -3859.415, y = 206.622, z = -2985.637 }, rot = { x = 10.561, y = 12.517, z = 1.430 }, level = 27, drop_tag = "丘丘岩盔王", disableWander = true, area_id = 12 },
	{ config_id = 269007, monster_id = 21010501, pos = { x = -3850.768, y = 205.229, z = -2971.481 }, rot = { x = 10.619, y = 359.917, z = 359.105 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, area_id = 12 },
	{ config_id = 269008, monster_id = 21010901, pos = { x = -3863.568, y = 205.307, z = -2973.007 }, rot = { x = 9.697, y = 29.516, z = 4.441 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 269002, gadget_id = 70211002, pos = { x = -3853.653, y = 206.532, z = -2986.656 }, rot = { x = 8.393, y = 326.403, z = 353.410 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1269003, name = "ANY_MONSTER_DIE_269003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_269003", action = "action_EVENT_ANY_MONSTER_DIE_269003" },
	{ config_id = 1269009, name = "SPECIFIC_MONSTER_HP_CHANGE_269009", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "269006", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_269009", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_269009" },
	{ config_id = 1269010, name = "SPECIFIC_MONSTER_HP_CHANGE_269010", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "269006", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_269010", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_269010" }
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
		monsters = { 269001, 269006 },
		gadgets = { 269002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_269003", "SPECIFIC_MONSTER_HP_CHANGE_269009", "SPECIFIC_MONSTER_HP_CHANGE_269010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 269004, 269007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 269005, 269008 },
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
function condition_EVENT_ANY_MONSTER_DIE_269003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_269003(context, evt)
	-- 将configid为 269002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 269002, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_269009(context, evt)
	--[[判断指定configid的怪物的血量小于%70时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 70 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_269009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213269, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_269010(context, evt)
	--[[判断指定configid的怪物的血量小于%30时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 30 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_269010(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213269, 3)
	
	return 0
end