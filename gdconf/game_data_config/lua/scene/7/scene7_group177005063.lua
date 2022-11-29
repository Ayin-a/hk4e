-- 基础信息
local base_info = {
	group_id = 177005063
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 63001, monster_id = 21020101, pos = { x = 640.528, y = 235.714, z = 684.312 }, rot = { x = 0.000, y = 351.484, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 210 },
	{ config_id = 63004, monster_id = 21010301, pos = { x = 641.166, y = 235.941, z = 691.156 }, rot = { x = 0.000, y = 191.578, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9003, area_id = 210 },
	{ config_id = 63005, monster_id = 21010301, pos = { x = 643.059, y = 236.144, z = 688.873 }, rot = { x = 0.000, y = 250.079, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9003, area_id = 210 },
	{ config_id = 63007, monster_id = 21010501, pos = { x = 642.729, y = 240.928, z = 680.215 }, rot = { x = 0.000, y = 50.487, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, area_id = 210 },
	{ config_id = 63016, monster_id = 21030601, pos = { x = 632.927, y = 235.000, z = 685.686 }, rot = { x = 0.000, y = 48.587, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 63002, gadget_id = 70211157, pos = { x = 636.890, y = 235.506, z = 688.015 }, rot = { x = 0.000, y = 251.047, z = 0.000 }, level = 16, drop_tag = "渊下宫活动中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 63006, gadget_id = 70310001, pos = { x = 640.471, y = 235.793, z = 688.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	{ config_id = 63008, gadget_id = 70300090, pos = { x = 642.762, y = 235.470, z = 680.012 }, rot = { x = 0.000, y = 334.535, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 63009, gadget_id = 70300106, pos = { x = 636.931, y = 235.094, z = 680.882 }, rot = { x = 0.000, y = 278.723, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 63010, gadget_id = 70300106, pos = { x = 634.596, y = 234.918, z = 682.411 }, rot = { x = 0.000, y = 310.676, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 63011, gadget_id = 70300081, pos = { x = 637.470, y = 235.908, z = 695.556 }, rot = { x = 0.000, y = 241.272, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 63012, gadget_id = 70300086, pos = { x = 639.619, y = 235.247, z = 679.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 63013, gadget_id = 70220026, pos = { x = 646.125, y = 236.700, z = 682.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 63014, gadget_id = 70220013, pos = { x = 646.976, y = 236.639, z = 684.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 63015, gadget_id = 70300081, pos = { x = 633.512, y = 234.525, z = 678.646 }, rot = { x = 0.000, y = 121.236, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 63017, gadget_id = 70300086, pos = { x = 631.214, y = 234.027, z = 684.420 }, rot = { x = 354.054, y = 2.396, z = 14.176 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1063003, name = "ANY_MONSTER_DIE_63003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_63003", action = "action_EVENT_ANY_MONSTER_DIE_63003" }
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
		monsters = { 63001, 63004, 63005, 63007, 63016 },
		gadgets = { 63002, 63006, 63008, 63009, 63010, 63011, 63012, 63013, 63014, 63015, 63017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_63003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_63003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_63003(context, evt)
	-- 将configid为 63002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 63002, GadgetState.Default) then
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