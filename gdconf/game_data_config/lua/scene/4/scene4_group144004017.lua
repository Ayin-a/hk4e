-- 基础信息
local base_info = {
	group_id = 144004017
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 17001, monster_id = 21010201, pos = { x = -394.649, y = 123.826, z = -353.516 }, rot = { x = 0.000, y = 279.668, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 100 },
	{ config_id = 17004, monster_id = 21010901, pos = { x = -391.744, y = 130.123, z = -341.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "远程丘丘人", area_id = 100 },
	{ config_id = 17008, monster_id = 21020201, pos = { x = -394.479, y = 123.874, z = -349.511 }, rot = { x = 0.000, y = 233.680, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 100 },
	{ config_id = 17015, monster_id = 21011001, pos = { x = -407.654, y = 124.018, z = -357.601 }, rot = { x = 0.000, y = 46.878, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 100 },
	{ config_id = 17016, monster_id = 21030301, pos = { x = -401.462, y = 123.898, z = -354.227 }, rot = { x = 0.000, y = 51.423, z = 0.000 }, level = 22, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 100 },
	{ config_id = 17017, monster_id = 21010301, pos = { x = -397.992, y = 123.857, z = -347.472 }, rot = { x = 0.000, y = 175.994, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9003, area_id = 100 },
	{ config_id = 17018, monster_id = 21010301, pos = { x = -397.838, y = 123.757, z = -355.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9003, area_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 17002, gadget_id = 70211012, pos = { x = -398.657, y = 123.871, z = -351.756 }, rot = { x = 0.000, y = 57.700, z = 0.000 }, level = 26, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 100 },
	{ config_id = 17005, gadget_id = 70220026, pos = { x = -401.710, y = 123.833, z = -360.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 17006, gadget_id = 70310001, pos = { x = -396.276, y = 123.881, z = -342.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 100 },
	{ config_id = 17007, gadget_id = 70310001, pos = { x = -406.196, y = 123.900, z = -350.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 100 },
	{ config_id = 17009, gadget_id = 70310006, pos = { x = -391.692, y = 123.819, z = -353.772 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 17010, gadget_id = 70300086, pos = { x = -394.285, y = 123.878, z = -346.022 }, rot = { x = 0.000, y = 0.000, z = 1.510 }, level = 1, area_id = 100 },
	{ config_id = 17011, gadget_id = 70220026, pos = { x = -394.989, y = 123.879, z = -345.146 }, rot = { x = 0.000, y = 262.069, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 17012, gadget_id = 70220026, pos = { x = -395.082, y = 123.877, z = -346.744 }, rot = { x = 0.000, y = 31.668, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 17013, gadget_id = 70220013, pos = { x = -392.887, y = 123.819, z = -347.095 }, rot = { x = 0.000, y = 12.423, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 17019, gadget_id = 70220013, pos = { x = -400.284, y = 123.934, z = -361.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1017003, name = "ANY_MONSTER_DIE_17003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_17003", action = "action_EVENT_ANY_MONSTER_DIE_17003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 17014, gadget_id = 70220025, pos = { x = -407.528, y = 124.064, z = -357.704 }, rot = { x = 84.536, y = 270.000, z = 270.000 }, level = 1, area_id = 100 }
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
		monsters = { 17001, 17004, 17008, 17015, 17016, 17017, 17018 },
		gadgets = { 17002, 17005, 17006, 17007, 17009, 17010, 17011, 17012, 17013, 17019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_17003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_17003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_17003(context, evt)
	-- 将configid为 17002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 17002, GadgetState.Default) then
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