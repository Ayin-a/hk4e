-- 基础信息
local base_info = {
	group_id = 133301059
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 59001, monster_id = 25070101, pos = { x = -546.965, y = 190.211, z = 3346.292 }, rot = { x = 0.000, y = 150.201, z = 0.000 }, level = 33, drop_tag = "盗宝团", pose_id = 9006, area_id = 22 },
	{ config_id = 59006, monster_id = 25030301, pos = { x = -548.645, y = 190.610, z = 3338.136 }, rot = { x = 0.000, y = 134.899, z = 0.000 }, level = 33, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 22 },
	{ config_id = 59007, monster_id = 25020201, pos = { x = -546.735, y = 191.010, z = 3344.234 }, rot = { x = 0.000, y = 328.710, z = 0.000 }, level = 33, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, area_id = 22 },
	{ config_id = 59010, monster_id = 25010501, pos = { x = -559.902, y = 190.725, z = 3351.822 }, rot = { x = 0.000, y = 66.306, z = 0.000 }, level = 33, drop_tag = "盗宝团", area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 59004, gadget_id = 70211002, pos = { x = -544.899, y = 195.031, z = 3365.586 }, rot = { x = 8.127, y = 10.821, z = 0.868 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 59011, gadget_id = 70300104, pos = { x = -534.921, y = 191.509, z = 3374.815 }, rot = { x = 4.003, y = 29.851, z = 15.170 }, level = 33, area_id = 22 },
	{ config_id = 59012, gadget_id = 70310009, pos = { x = -537.416, y = 191.786, z = 3370.693 }, rot = { x = 8.838, y = 30.838, z = 9.627 }, level = 33, state = GadgetState.GearStart, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1059003, name = "ANY_MONSTER_DIE_59003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_59003", action = "action_EVENT_ANY_MONSTER_DIE_59003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 59008, monster_id = 25020201, pos = { x = -539.697, y = 190.500, z = 3375.813 }, rot = { x = 0.000, y = 112.897, z = 0.000 }, level = 33, drop_tag = "盗宝团", pose_id = 9005, area_id = 22 }
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
		monsters = { 59001, 59006, 59007, 59010 },
		gadgets = { 59004, 59011, 59012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_59003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_59003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_59003(context, evt)
	-- 将configid为 59004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 59004, GadgetState.Default) then
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