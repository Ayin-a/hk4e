-- 基础信息
local base_info = {
	group_id = 133303548
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 548017, monster_id = 26120301, pos = { x = -1917.318, y = 312.290, z = 3754.047 }, rot = { x = 0.000, y = 8.796, z = 0.000 }, level = 30, drop_tag = "大蕈兽", pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 548001, gadget_id = 70211002, pos = { x = -1917.756, y = 312.528, z = 3758.613 }, rot = { x = 357.867, y = 170.428, z = 359.443 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 548003, gadget_id = 70217020, pos = { x = -1877.020, y = 313.415, z = 3733.675 }, rot = { x = 4.485, y = 312.354, z = 15.518 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 },
	{ config_id = 548010, gadget_id = 70330197, pos = { x = -1877.976, y = 313.289, z = 3737.083 }, rot = { x = 0.000, y = 148.895, z = 355.851 }, level = 30, area_id = 23 },
	{ config_id = 548015, gadget_id = 70330197, pos = { x = -1875.026, y = 314.756, z = 3739.707 }, rot = { x = 357.625, y = 92.780, z = 350.944 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1548018, name = "ANY_MONSTER_DIE_548018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_548018", action = "action_EVENT_ANY_MONSTER_DIE_548018" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 548004, monster_id = 26090201, pos = { x = -1890.654, y = 324.813, z = 3765.575 }, rot = { x = 0.000, y = 131.894, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
		{ config_id = 548011, monster_id = 26090201, pos = { x = -1907.103, y = 318.810, z = 3724.424 }, rot = { x = 0.000, y = 27.020, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
		{ config_id = 548012, monster_id = 26090201, pos = { x = -1908.370, y = 313.849, z = 3762.921 }, rot = { x = 0.000, y = 140.472, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 }
	},
	gadgets = {
		{ config_id = 548002, gadget_id = 70330199, pos = { x = -1890.684, y = 324.160, z = 3766.453 }, rot = { x = 7.427, y = 176.652, z = 3.346 }, level = 30, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 23 },
		{ config_id = 548006, gadget_id = 70330199, pos = { x = -1869.459, y = 323.521, z = 3738.292 }, rot = { x = 3.314, y = 222.893, z = 327.883 }, level = 30, isOneoff = true, persistent = true, area_id = 23 },
		{ config_id = 548007, gadget_id = 70330199, pos = { x = -1894.029, y = 312.865, z = 3725.787 }, rot = { x = 349.927, y = 207.086, z = 0.072 }, level = 30, isOneoff = true, persistent = true, area_id = 23 },
		{ config_id = 548008, gadget_id = 70330199, pos = { x = -1908.958, y = 312.978, z = 3763.346 }, rot = { x = 5.358, y = 85.629, z = 352.171 }, level = 30, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 23 },
		{ config_id = 548009, gadget_id = 70330199, pos = { x = -1907.188, y = 317.744, z = 3723.707 }, rot = { x = 359.573, y = 270.191, z = 352.214 }, level = 30, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 23 }
	},
	triggers = {
		{ config_id = 1548005, name = "GADGET_STATE_CHANGE_548005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_548005", action = "action_EVENT_GADGET_STATE_CHANGE_548005" },
		{ config_id = 1548013, name = "GADGET_STATE_CHANGE_548013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_548013", action = "action_EVENT_GADGET_STATE_CHANGE_548013" },
		{ config_id = 1548014, name = "GADGET_STATE_CHANGE_548014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_548014", action = "action_EVENT_GADGET_STATE_CHANGE_548014" },
		{ config_id = 1548019, name = "GADGET_STATE_CHANGE_548019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_548019", action = "action_EVENT_GADGET_STATE_CHANGE_548019" }
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
	end_suite = 2,
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
		monsters = { 548017 },
		gadgets = { 548001, 548003, 548010, 548015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_548018" },
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
function condition_EVENT_ANY_MONSTER_DIE_548018(context, evt)
	if 548017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_548018(context, evt)
	-- 将configid为 548001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 548001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end