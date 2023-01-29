-- 基础信息
local base_info = {
	group_id = 133307314
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 314009, monster_id = 24010301, pos = { x = -285.262, y = -73.228, z = 4765.083 }, rot = { x = 0.000, y = 295.444, z = 0.000 }, level = 32, drop_tag = "遗迹重机", pose_id = 101, area_id = 32 },
	{ config_id = 314017, monster_id = 24040201, pos = { x = -270.325, y = -73.193, z = 4771.156 }, rot = { x = 0.000, y = 260.061, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1, area_id = 32 },
	{ config_id = 314019, monster_id = 24040301, pos = { x = -285.970, y = -72.479, z = 4750.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 314001, gadget_id = 70330395, pos = { x = -303.279, y = -60.917, z = 4766.745 }, rot = { x = 0.000, y = 4.330, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 314002, gadget_id = 70211011, pos = { x = -285.262, y = -73.228, z = 4765.083 }, rot = { x = 0.000, y = 305.438, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 314004, gadget_id = 70330395, pos = { x = -292.701, y = -60.917, z = 4781.802 }, rot = { x = 0.000, y = 64.283, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 314005, gadget_id = 70330395, pos = { x = -274.401, y = -60.917, z = 4780.169 }, rot = { x = 0.000, y = 122.609, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 314006, gadget_id = 70330395, pos = { x = -266.643, y = -60.917, z = 4763.512 }, rot = { x = 0.000, y = 184.710, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 314007, gadget_id = 70330395, pos = { x = -289.305, y = -71.498, z = 4747.691 }, rot = { x = 52.942, y = 338.260, z = 100.152 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 314008, gadget_id = 70330395, pos = { x = -295.518, y = -60.917, z = 4750.077 }, rot = { x = 0.000, y = 304.428, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 314011, gadget_id = 70330396, pos = { x = -294.356, y = -72.796, z = 4752.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 314012, gadget_id = 70330396, pos = { x = -299.917, y = -73.171, z = 4766.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 314013, gadget_id = 70330396, pos = { x = -292.452, y = -73.218, z = 4778.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 314014, gadget_id = 70330396, pos = { x = -273.756, y = -73.218, z = 4776.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 314015, gadget_id = 70330396, pos = { x = -268.462, y = -73.009, z = 4765.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 314016, gadget_id = 70330396, pos = { x = -277.578, y = -72.509, z = 4752.284 }, rot = { x = 20.648, y = 2.988, z = 44.314 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 314021, gadget_id = 70220103, pos = { x = -306.917, y = -58.390, z = 4780.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 314022, gadget_id = 70210101, pos = { x = -281.523, y = -71.455, z = 4749.918 }, rot = { x = 0.000, y = 146.535, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 314023, gadget_id = 70210101, pos = { x = -269.677, y = -69.333, z = 4748.308 }, rot = { x = 0.000, y = 143.049, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 314024, gadget_id = 70210101, pos = { x = -268.573, y = -71.589, z = 4757.979 }, rot = { x = 0.000, y = 95.352, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1314003, name = "ANY_MONSTER_DIE_314003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_314003", action = "action_EVENT_ANY_MONSTER_DIE_314003" },
	{ config_id = 1314010, name = "MONSTER_BATTLE_314010", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_314010", action = "action_EVENT_MONSTER_BATTLE_314010", trigger_count = 0 },
	{ config_id = 1314018, name = "MONSTER_BATTLE_314018", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_314018", action = "action_EVENT_MONSTER_BATTLE_314018", trigger_count = 0 },
	{ config_id = 1314020, name = "ANY_MONSTER_DIE_314020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_314020", action = "action_EVENT_ANY_MONSTER_DIE_314020" }
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
		monsters = { 314009 },
		gadgets = { 314001, 314004, 314005, 314006, 314007, 314008, 314011, 314012, 314013, 314014, 314015, 314016, 314021, 314022, 314023, 314024 },
		regions = { },
		triggers = { "MONSTER_BATTLE_314018", "ANY_MONSTER_DIE_314020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 314017, 314019 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_314003", "MONSTER_BATTLE_314010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 玩家行为埋点
function TLA_mark_playeraction(context, evt, param1, param2, param3)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, param1, param2, param3) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_314003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_314003(context, evt)
	ScriptLib.CreateGadget(context, {config_id=314002})
	
	TLA_mark_playeraction(context, evt, 4000, 3, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_314010(context, evt)
	if 314017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_314010(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,314001, GadgetState.GearStart)
	
	ScriptLib.SetGadgetStateByConfigId(context,314004, GadgetState.GearStart)
	
	ScriptLib.SetGadgetStateByConfigId(context,314005, GadgetState.GearStart)
	
	ScriptLib.SetGadgetStateByConfigId(context,314006, GadgetState.GearStart)
	
	ScriptLib.SetGadgetStateByConfigId(context,314007, GadgetState.GearStart)
	
	ScriptLib.SetGadgetStateByConfigId(context,314008, GadgetState.GearStart)
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_314018(context, evt)
	if 314009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_314018(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,314011, GadgetState.GearStart)
	
	ScriptLib.SetGadgetStateByConfigId(context,314012, GadgetState.GearStart)
	
	ScriptLib.SetGadgetStateByConfigId(context,314013, GadgetState.GearStart)
	
	ScriptLib.SetGadgetStateByConfigId(context,314014, GadgetState.GearStart)
	
	ScriptLib.SetGadgetStateByConfigId(context,314015, GadgetState.GearStart)
	
	ScriptLib.SetGadgetStateByConfigId(context,314016, GadgetState.GearStart)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_314020(context, evt)
	if 314009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_314020(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307314, 2)
	
	return 0
end