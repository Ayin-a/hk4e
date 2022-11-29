-- 基础信息
local base_info = {
	group_id = 166001322
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 322001, monster_id = 26040102, pos = { x = 1061.404, y = 1009.495, z = 847.140 }, rot = { x = 0.000, y = 211.415, z = 0.000 }, level = 36, drop_tag = "岩龙蜥", disableWander = true, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 322002, gadget_id = 70211012, pos = { x = 1067.048, y = 1014.003, z = 836.397 }, rot = { x = 7.798, y = 227.703, z = 350.603 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 322005, gadget_id = 70290324, pos = { x = 1064.368, y = 1012.674, z = 832.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 322006, gadget_id = 70290324, pos = { x = 1049.758, y = 1009.939, z = 841.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 322007, gadget_id = 70290324, pos = { x = 1071.585, y = 1010.056, z = 854.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 322008, gadget_id = 70290324, pos = { x = 1047.900, y = 1013.291, z = 857.597 }, rot = { x = 0.000, y = 301.314, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 322009, gadget_id = 70220048, pos = { x = 1042.038, y = 1009.019, z = 813.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 322010, gadget_id = 70220048, pos = { x = 1043.720, y = 1009.055, z = 813.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 322011, gadget_id = 70220048, pos = { x = 1045.436, y = 1008.532, z = 811.136 }, rot = { x = 359.154, y = 354.665, z = 10.185 }, level = 36, area_id = 300 },
	{ config_id = 322012, gadget_id = 70220048, pos = { x = 1042.847, y = 1010.598, z = 813.635 }, rot = { x = 0.000, y = 333.419, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1322003, name = "ANY_MONSTER_DIE_322003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_322003", action = "action_EVENT_ANY_MONSTER_DIE_322003" },
	{ config_id = 1322013, name = "ANY_GADGET_DIE_322013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_322013", action = "action_EVENT_ANY_GADGET_DIE_322013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 322014, gadget_id = 70290301, pos = { x = 1047.288, y = 1014.556, z = 861.202 }, rot = { x = 359.662, y = 265.229, z = 340.205 }, level = 36, isOneoff = true, area_id = 300 }
	}
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
		monsters = { 322001 },
		gadgets = { 322002, 322005, 322006, 322007, 322008, 322009, 322010, 322011, 322012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_322003", "ANY_GADGET_DIE_322013" },
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
function condition_EVENT_ANY_MONSTER_DIE_322003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_322003(context, evt)
	-- 将configid为 322002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 322002, GadgetState.Default) then
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
function condition_EVENT_ANY_GADGET_DIE_322013(context, evt)
	if 322009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_322013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 322012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end