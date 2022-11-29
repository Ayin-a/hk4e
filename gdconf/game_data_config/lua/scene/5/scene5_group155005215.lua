-- 基础信息
local base_info = {
	group_id = 155005215
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 215001, monster_id = 21010901, pos = { x = 141.717, y = 309.624, z = 296.172 }, rot = { x = 0.000, y = 32.618, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, area_id = 200 },
	{ config_id = 215007, monster_id = 21010901, pos = { x = 158.052, y = 306.159, z = 302.821 }, rot = { x = 0.000, y = 252.153, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, area_id = 200 },
	{ config_id = 215008, monster_id = 21010901, pos = { x = 146.249, y = 304.456, z = 310.212 }, rot = { x = 0.000, y = 6.276, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 200 },
	{ config_id = 215009, monster_id = 21030101, pos = { x = 149.284, y = 305.991, z = 301.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 215002, gadget_id = 70211002, pos = { x = 143.510, y = 305.694, z = 302.284 }, rot = { x = 3.607, y = 58.179, z = 9.079 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 215004, gadget_id = 70300086, pos = { x = 142.311, y = 305.955, z = 293.367 }, rot = { x = 351.853, y = 0.000, z = 2.302 }, level = 36, area_id = 200 },
	{ config_id = 215005, gadget_id = 70300086, pos = { x = 153.756, y = 306.329, z = 296.419 }, rot = { x = 341.007, y = 334.009, z = 355.889 }, level = 36, area_id = 200 },
	{ config_id = 215006, gadget_id = 70300086, pos = { x = 142.332, y = 304.370, z = 306.029 }, rot = { x = 7.271, y = 1.360, z = 10.621 }, level = 36, area_id = 200 },
	{ config_id = 215010, gadget_id = 70310001, pos = { x = 144.633, y = 306.109, z = 298.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 215011, gadget_id = 70310001, pos = { x = 152.859, y = 306.802, z = 297.434 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 215012, gadget_id = 70310001, pos = { x = 156.518, y = 304.854, z = 306.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 215013, gadget_id = 70310001, pos = { x = 145.059, y = 304.039, z = 312.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1215003, name = "ANY_MONSTER_DIE_215003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_215003", action = "action_EVENT_ANY_MONSTER_DIE_215003" }
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
		monsters = { 215001, 215007, 215008, 215009 },
		gadgets = { 215002, 215004, 215005, 215006, 215010, 215011, 215012, 215013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_215003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_215003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_215003(context, evt)
	-- 将configid为 215002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 215002, GadgetState.Default) then
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