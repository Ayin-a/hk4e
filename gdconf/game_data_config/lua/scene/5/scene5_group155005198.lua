-- 基础信息
local base_info = {
	group_id = 155005198
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 198001, monster_id = 22010301, pos = { x = 229.800, y = 336.810, z = 268.192 }, rot = { x = 0.000, y = 176.843, z = 0.000 }, level = 36, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 200 },
	{ config_id = 198005, monster_id = 21030101, pos = { x = 227.121, y = 336.979, z = 260.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 200 },
	{ config_id = 198006, monster_id = 21030101, pos = { x = 235.889, y = 337.115, z = 270.911 }, rot = { x = 0.000, y = 263.823, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 200 },
	{ config_id = 198007, monster_id = 21030101, pos = { x = 236.626, y = 338.000, z = 266.094 }, rot = { x = 0.000, y = 106.276, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 198002, gadget_id = 70211012, pos = { x = 234.496, y = 337.022, z = 278.955 }, rot = { x = 13.816, y = 214.710, z = 13.071 }, level = 16, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 198004, gadget_id = 70300107, pos = { x = 230.248, y = 336.693, z = 264.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1198003, name = "ANY_MONSTER_DIE_198003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_198003", action = "action_EVENT_ANY_MONSTER_DIE_198003" }
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
		monsters = { 198001, 198005, 198006, 198007 },
		gadgets = { 198002, 198004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_198003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_198003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_198003(context, evt)
	-- 将configid为 198002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 198002, GadgetState.Default) then
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