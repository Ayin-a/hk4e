-- 基础信息
local base_info = {
	group_id = 133103424
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 424001, monster_id = 21010601, pos = { x = 239.850, y = 204.085, z = 1256.675 }, rot = { x = 0.000, y = 73.410, z = 0.000 }, level = 24, drop_tag = "丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 424004, monster_id = 21010601, pos = { x = 226.016, y = 203.798, z = 1264.037 }, rot = { x = 0.000, y = 244.000, z = 0.000 }, level = 24, drop_tag = "丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 424007, monster_id = 22010101, pos = { x = 233.386, y = 202.785, z = 1259.513 }, rot = { x = 0.000, y = 14.970, z = 0.000 }, level = 24, drop_tag = "深渊法师", area_id = 6 },
	{ config_id = 424008, monster_id = 21011001, pos = { x = 252.833, y = 201.741, z = 1279.952 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 424009, monster_id = 21011001, pos = { x = 226.786, y = 200.224, z = 1284.044 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 424002, gadget_id = 70211022, pos = { x = 231.137, y = 206.336, z = 1255.265 }, rot = { x = 0.000, y = 18.630, z = 0.000 }, level = 21, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1424003, name = "ANY_MONSTER_DIE_424003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_424003", action = "action_EVENT_ANY_MONSTER_DIE_424003" }
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
		monsters = { 424001, 424004, 424007, 424008, 424009 },
		gadgets = { 424002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_424003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_424003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_424003(context, evt)
	-- 将configid为 424002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 424002, GadgetState.Default) then
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