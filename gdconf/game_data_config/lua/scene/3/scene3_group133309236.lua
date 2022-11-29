-- 基础信息
local base_info = {
	group_id = 133309236
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 236001, monster_id = 23010501, pos = { x = -2144.073, y = 9.383, z = 5528.458 }, rot = { x = 0.000, y = 187.655, z = 0.000 }, level = 32, drop_tag = "先遣队", pose_id = 9001, area_id = 27 },
	{ config_id = 236008, monster_id = 25210202, pos = { x = -2135.893, y = 11.023, z = 5529.744 }, rot = { x = 0.000, y = 339.026, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9502, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 236002, gadget_id = 70211002, pos = { x = -2136.688, y = 11.399, z = 5527.717 }, rot = { x = 5.394, y = 339.479, z = 353.483 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 236004, gadget_id = 70330396, pos = { x = -2133.241, y = 8.904, z = 5533.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 27 },
	{ config_id = 236005, gadget_id = 70330396, pos = { x = -2143.321, y = 8.990, z = 5531.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 27 },
	{ config_id = 236006, gadget_id = 70220048, pos = { x = -2144.146, y = 10.048, z = 5526.059 }, rot = { x = 15.409, y = 1.559, z = 11.482 }, level = 32, area_id = 27 },
	{ config_id = 236007, gadget_id = 70220048, pos = { x = -2139.071, y = 12.061, z = 5523.705 }, rot = { x = 18.319, y = 291.916, z = 351.730 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1236003, name = "ANY_MONSTER_DIE_236003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_236003", action = "action_EVENT_ANY_MONSTER_DIE_236003" }
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
		monsters = { 236001, 236008 },
		gadgets = { 236002, 236004, 236005, 236006, 236007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_236003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_236003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_236003(context, evt)
	-- 将configid为 236002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 236002, GadgetState.Default) then
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