-- 基础信息
local base_info = {
	group_id = 133220023
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 23001, monster_id = 25080101, pos = { x = -2516.602, y = 202.221, z = -4121.549 }, rot = { x = 6.938, y = 357.591, z = 0.217 }, level = 27, drop_tag = "浪人武士", pose_id = 1001, area_id = 11 },
	{ config_id = 23007, monster_id = 25080201, pos = { x = -2515.592, y = 200.590, z = -4112.822 }, rot = { x = 0.000, y = 288.508, z = 0.000 }, level = 27, drop_tag = "浪人武士", pose_id = 1004, area_id = 11 },
	{ config_id = 23009, monster_id = 25010501, pos = { x = -2507.472, y = 200.990, z = -4114.554 }, rot = { x = 0.000, y = 148.859, z = 0.000 }, level = 27, drop_tag = "盗宝团", pose_id = 9009, area_id = 11 },
	{ config_id = 23010, monster_id = 25010601, pos = { x = -2517.331, y = 200.960, z = -4115.013 }, rot = { x = 14.851, y = 4.234, z = 1.405 }, level = 27, drop_tag = "盗宝团", pose_id = 9004, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 23002, gadget_id = 70211022, pos = { x = -2507.415, y = 201.252, z = -4116.454 }, rot = { x = 5.423, y = 347.604, z = 359.723 }, level = 26, drop_tag = "战斗高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 23004, gadget_id = 70710408, pos = { x = -2520.803, y = 199.737, z = -4106.857 }, rot = { x = 0.000, y = 282.766, z = 350.871 }, level = 27, area_id = 11 },
	{ config_id = 23005, gadget_id = 70710409, pos = { x = -2523.959, y = 199.991, z = -4097.725 }, rot = { x = 0.000, y = 192.377, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 23006, gadget_id = 70710408, pos = { x = -2526.294, y = 200.285, z = -4110.985 }, rot = { x = 0.000, y = 334.232, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 23008, gadget_id = 70310009, pos = { x = -2517.246, y = 200.515, z = -4112.504 }, rot = { x = 359.634, y = 139.762, z = 4.737 }, level = 27, state = GadgetState.GearStart, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1023003, name = "ANY_MONSTER_DIE_23003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_23003", action = "action_EVENT_ANY_MONSTER_DIE_23003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 23011, monster_id = 25100101, pos = { x = -2517.793, y = 202.248, z = -4120.599 }, rot = { x = 0.000, y = 13.364, z = 0.000 }, level = 27, drop_tag = "高阶武士", pose_id = 1001, area_id = 11 }
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
		monsters = { 23001, 23007, 23009, 23010 },
		gadgets = { 23002, 23004, 23005, 23006, 23008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_23003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_23003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_23003(context, evt)
	-- 将configid为 23002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23002, GadgetState.Default) then
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