-- 基础信息
local base_info = {
	group_id = 133217131
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 131003, monster_id = 23010501, pos = { x = -4418.420, y = 219.080, z = -3839.529 }, rot = { x = 0.000, y = 15.822, z = 0.000 }, level = 30, drop_tag = "先遣队", pose_id = 9001, area_id = 14 },
	{ config_id = 131006, monster_id = 23010401, pos = { x = -4424.590, y = 217.763, z = -3836.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, area_id = 14 },
	{ config_id = 131008, monster_id = 23010201, pos = { x = -4432.873, y = 217.519, z = -3826.088 }, rot = { x = 0.000, y = 174.099, z = 0.000 }, level = 30, drop_tag = "先遣队", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 131004, gadget_id = 70211012, pos = { x = -4423.391, y = 217.476, z = -3834.622 }, rot = { x = 353.700, y = 225.495, z = 356.632 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 131010, gadget_id = 70310009, pos = { x = -4428.582, y = 218.235, z = -3840.155 }, rot = { x = 5.213, y = 359.940, z = 358.690 }, level = 30, area_id = 14 },
	{ config_id = 131012, gadget_id = 70220052, pos = { x = -4415.354, y = 221.052, z = -3851.921 }, rot = { x = 0.000, y = 252.890, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 131013, gadget_id = 70220050, pos = { x = -4413.649, y = 219.000, z = -3845.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 131015, gadget_id = 70220051, pos = { x = -4443.760, y = 219.492, z = -3835.692 }, rot = { x = 358.158, y = 9.032, z = 11.433 }, level = 30, area_id = 14 },
	{ config_id = 131017, gadget_id = 70220048, pos = { x = -4438.989, y = 218.837, z = -3830.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 131019, gadget_id = 70220048, pos = { x = -4428.063, y = 218.842, z = -3852.410 }, rot = { x = 13.948, y = 308.193, z = 5.167 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1131005, name = "ANY_MONSTER_DIE_131005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_131005", action = "action_EVENT_ANY_MONSTER_DIE_131005" },
	{ config_id = 1131007, name = "MONSTER_BATTLE_131007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_131007" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 131011, gadget_id = 70220052, pos = { x = -4417.120, y = 220.059, z = -3850.931 }, rot = { x = 358.905, y = 110.500, z = 0.214 }, level = 30, area_id = 14 },
		{ config_id = 131014, gadget_id = 70220050, pos = { x = -4415.457, y = 217.785, z = -3830.996 }, rot = { x = 3.065, y = 0.054, z = 2.005 }, level = 30, area_id = 14 },
		{ config_id = 131016, gadget_id = 70220052, pos = { x = -4446.443, y = 221.125, z = -3837.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 131018, gadget_id = 70220048, pos = { x = -4429.853, y = 218.521, z = -3855.606 }, rot = { x = 1.924, y = 359.967, z = 358.041 }, level = 30, area_id = 14 }
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
		monsters = { 131006 },
		gadgets = { 131004, 131010, 131012, 131013, 131015, 131017, 131019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_131005", "MONSTER_BATTLE_131007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 131003, 131008 },
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
function condition_EVENT_ANY_MONSTER_DIE_131005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_131005(context, evt)
	-- 将configid为 131004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 131004, GadgetState.Default) then
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

-- 触发操作
function action_EVENT_MONSTER_BATTLE_131007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217131, 2)
	
	return 0
end