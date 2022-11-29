-- 基础信息
local base_info = {
	group_id = 133217240
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 240001, monster_id = 25080101, pos = { x = -4414.921, y = 159.707, z = -3807.187 }, rot = { x = 354.000, y = 259.698, z = 0.769 }, level = 32, drop_tag = "浪人武士", disableWander = true, pose_id = 1, area_id = 14 },
	{ config_id = 240005, monster_id = 25080301, pos = { x = -4418.043, y = 160.233, z = -3804.094 }, rot = { x = 2.381, y = 163.651, z = 1.914 }, level = 30, drop_tag = "浪人武士", disableWander = true, pose_id = 1, area_id = 14 },
	{ config_id = 240006, monster_id = 25100101, pos = { x = -4417.216, y = 159.971, z = -3807.483 }, rot = { x = 18.317, y = 35.508, z = 1.229 }, level = 30, drop_tag = "高阶武士", disableWander = true, pose_id = 1002, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 240002, gadget_id = 70211012, pos = { x = -4402.317, y = 160.714, z = -3802.210 }, rot = { x = 358.690, y = 262.450, z = 9.191 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 240004, gadget_id = 70220051, pos = { x = -4385.364, y = 160.548, z = -3797.088 }, rot = { x = 353.447, y = 26.270, z = 352.406 }, level = 30, area_id = 14 },
	{ config_id = 240007, gadget_id = 70310004, pos = { x = -4387.030, y = 160.529, z = -3794.833 }, rot = { x = 346.548, y = 104.633, z = 347.648 }, level = 30, area_id = 14 },
	{ config_id = 240008, gadget_id = 70220050, pos = { x = -4416.801, y = 159.591, z = -3811.102 }, rot = { x = 5.668, y = 140.014, z = 353.272 }, level = 30, area_id = 14 },
	{ config_id = 240011, gadget_id = 70220052, pos = { x = -4419.253, y = 160.178, z = -3806.282 }, rot = { x = 0.000, y = 20.105, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 240015, gadget_id = 70220051, pos = { x = -4388.959, y = 159.360, z = -3813.544 }, rot = { x = 325.808, y = 163.935, z = 278.019 }, level = 30, area_id = 14 },
	{ config_id = 240017, gadget_id = 70220052, pos = { x = -4392.961, y = 159.794, z = -3809.195 }, rot = { x = 12.786, y = 32.014, z = 354.558 }, level = 30, area_id = 14 },
	{ config_id = 240018, gadget_id = 70220051, pos = { x = -4393.047, y = 159.755, z = -3808.631 }, rot = { x = 3.171, y = 24.828, z = 13.196 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1240003, name = "ANY_MONSTER_DIE_240003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_240003", action = "action_EVENT_ANY_MONSTER_DIE_240003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 240009, gadget_id = 70220052, pos = { x = -4413.074, y = 159.528, z = -3809.184 }, rot = { x = 352.095, y = 333.835, z = 28.233 }, level = 30, area_id = 14 },
		{ config_id = 240010, gadget_id = 70220051, pos = { x = -4418.121, y = 159.640, z = -3809.748 }, rot = { x = 352.463, y = 46.798, z = 1.464 }, level = 30, area_id = 14 },
		{ config_id = 240012, gadget_id = 70220052, pos = { x = -4385.342, y = 161.147, z = -3797.784 }, rot = { x = 0.000, y = 209.301, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 240013, gadget_id = 70220052, pos = { x = -4417.595, y = 159.599, z = -3810.081 }, rot = { x = 0.000, y = 348.501, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 240014, gadget_id = 70220050, pos = { x = -4387.645, y = 159.148, z = -3815.818 }, rot = { x = 57.872, y = 107.087, z = 351.049 }, level = 30, area_id = 14 },
		{ config_id = 240016, gadget_id = 70220052, pos = { x = -4392.254, y = 159.679, z = -3809.440 }, rot = { x = 6.020, y = 292.718, z = 341.385 }, level = 30, area_id = 14 },
		{ config_id = 240019, gadget_id = 70310004, pos = { x = -4415.591, y = 160.033, z = -3804.115 }, rot = { x = 0.587, y = 102.650, z = 355.179 }, level = 30, area_id = 14 }
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
		monsters = { 240001, 240005, 240006 },
		gadgets = { 240002, 240004, 240007, 240008, 240011, 240015, 240017, 240018 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_240003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_240003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_240003(context, evt)
	-- 将configid为 240002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 240002, GadgetState.Default) then
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