-- 基础信息
local base_info = {
	group_id = 133302054
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 54001, monster_id = 25210402, pos = { x = -339.322, y = 200.382, z = 3023.890 }, rot = { x = 0.000, y = 214.363, z = 0.000 }, level = 27, drop_tag = "镀金旅团", pose_id = 9503, area_id = 24 },
	{ config_id = 54004, monster_id = 25210301, pos = { x = -335.933, y = 200.636, z = 3021.436 }, rot = { x = 0.000, y = 261.603, z = 0.000 }, level = 27, drop_tag = "镀金旅团", pose_id = 9005, area_id = 24 },
	{ config_id = 54005, monster_id = 25210201, pos = { x = -335.738, y = 200.743, z = 3019.423 }, rot = { x = 0.000, y = 295.411, z = 0.000 }, level = 27, drop_tag = "镀金旅团", pose_id = 9506, area_id = 24 },
	{ config_id = 54008, monster_id = 25310101, pos = { x = -341.876, y = 200.455, z = 3019.883 }, rot = { x = 0.000, y = 65.988, z = 0.000 }, level = 27, drop_tag = "中级镀金旅团", isElite = true, pose_id = 9003, area_id = 24 },
	{ config_id = 54009, monster_id = 25210401, pos = { x = -337.688, y = 200.688, z = 3016.654 }, rot = { x = 0.000, y = 327.249, z = 0.000 }, level = 27, drop_tag = "镀金旅团", pose_id = 9504, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 54002, gadget_id = 70211012, pos = { x = -331.624, y = 200.966, z = 3020.207 }, rot = { x = 0.000, y = 267.609, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 54006, gadget_id = 70310006, pos = { x = -338.233, y = 200.572, z = 3011.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 54007, gadget_id = 70310004, pos = { x = -338.805, y = 200.564, z = 3020.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 24 },
	{ config_id = 54010, gadget_id = 70220103, pos = { x = -330.704, y = 213.029, z = 3020.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 54011, gadget_id = 70220103, pos = { x = -298.126, y = 223.403, z = 3015.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 54012, gadget_id = 70220103, pos = { x = -297.479, y = 226.317, z = 2978.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 54013, gadget_id = 70220103, pos = { x = -274.469, y = 234.388, z = 2989.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1054003, name = "ANY_MONSTER_DIE_54003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_54003", action = "action_EVENT_ANY_MONSTER_DIE_54003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 54014, gadget_id = 70220103, pos = { x = -259.128, y = 219.176, z = 3061.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 }
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
		monsters = { 54001, 54004, 54005, 54008, 54009 },
		gadgets = { 54002, 54006, 54007, 54010, 54011, 54012, 54013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_54003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_54003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_54003(context, evt)
	-- 将configid为 54002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54002, GadgetState.Default) then
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