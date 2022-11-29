-- 基础信息
local base_info = {
	group_id = 133222352
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 352001, monster_id = 21020701, pos = { x = -4807.840, y = 200.418, z = -4457.462 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", disableWander = true, climate_area_id = 10, area_id = 14 },
	{ config_id = 352004, monster_id = 21010201, pos = { x = -4812.533, y = 200.000, z = -4446.481 }, rot = { x = 0.000, y = 294.903, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, climate_area_id = 10, area_id = 14 },
	{ config_id = 352005, monster_id = 21011001, pos = { x = -4805.655, y = 200.130, z = -4465.545 }, rot = { x = 0.000, y = 169.045, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 352002, gadget_id = 70211002, pos = { x = -4817.267, y = 200.160, z = -4448.040 }, rot = { x = 8.729, y = 106.354, z = 357.338 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 352006, gadget_id = 70300086, pos = { x = -4812.889, y = 198.771, z = -4453.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 352007, gadget_id = 70300086, pos = { x = -4805.704, y = 198.547, z = -4459.944 }, rot = { x = 0.000, y = 0.000, z = 340.586 }, level = 30, area_id = 14 },
	{ config_id = 352008, gadget_id = 70220014, pos = { x = -4814.487, y = 199.552, z = -4446.306 }, rot = { x = 0.000, y = 0.000, z = 351.595 }, level = 30, area_id = 14 },
	{ config_id = 352009, gadget_id = 70220014, pos = { x = -4815.446, y = 199.518, z = -4445.271 }, rot = { x = 0.000, y = 0.000, z = 11.029 }, level = 30, area_id = 14 },
	{ config_id = 352010, gadget_id = 70220014, pos = { x = -4814.237, y = 199.365, z = -4445.108 }, rot = { x = 40.795, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 352011, gadget_id = 70220014, pos = { x = -4802.905, y = 200.205, z = -4458.707 }, rot = { x = 0.000, y = 0.000, z = 337.756 }, level = 30, area_id = 14 },
	{ config_id = 352012, gadget_id = 70220014, pos = { x = -4806.116, y = 199.893, z = -4459.596 }, rot = { x = 0.000, y = 0.000, z = 23.557 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1352003, name = "ANY_MONSTER_DIE_352003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_352003", action = "action_EVENT_ANY_MONSTER_DIE_352003" }
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
		monsters = { 352001, 352004, 352005 },
		gadgets = { 352002, 352006, 352007, 352008, 352009, 352010, 352011, 352012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_352003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_352003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_352003(context, evt)
	-- 将configid为 352002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 352002, GadgetState.Default) then
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