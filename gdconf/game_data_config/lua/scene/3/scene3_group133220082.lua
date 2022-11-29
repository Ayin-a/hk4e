-- 基础信息
local base_info = {
	group_id = 133220082
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 82005, monster_id = 23010301, pos = { x = -2446.583, y = 226.206, z = -4200.404 }, rot = { x = 0.000, y = 247.750, z = 0.000 }, level = 27, drop_tag = "先遣队", area_id = 11 },
	{ config_id = 82006, monster_id = 23010501, pos = { x = -2439.373, y = 226.715, z = -4202.852 }, rot = { x = 0.737, y = 280.176, z = 358.239 }, level = 27, drop_tag = "先遣队", pose_id = 9011, area_id = 11 },
	{ config_id = 82007, monster_id = 23010201, pos = { x = -2445.372, y = 225.778, z = -4190.547 }, rot = { x = 0.000, y = 19.547, z = 0.000 }, level = 27, drop_tag = "先遣队", pose_id = 9011, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 82002, gadget_id = 70211022, pos = { x = -2435.164, y = 227.156, z = -4204.786 }, rot = { x = 0.000, y = 291.181, z = 0.000 }, level = 26, drop_tag = "战斗高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 82016, gadget_id = 70220052, pos = { x = -2438.820, y = 229.144, z = -4210.510 }, rot = { x = 0.000, y = 288.347, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 82018, gadget_id = 70220051, pos = { x = -2441.805, y = 225.557, z = -4188.851 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 82020, gadget_id = 70220052, pos = { x = -2443.971, y = 226.571, z = -4188.330 }, rot = { x = 0.000, y = 144.860, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 82022, gadget_id = 70220051, pos = { x = -2450.314, y = 225.136, z = -4186.477 }, rot = { x = 290.447, y = 288.676, z = 290.571 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1082003, name = "ANY_MONSTER_DIE_82003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_82003", action = "action_EVENT_ANY_MONSTER_DIE_82003" },
	{ config_id = 1082026, name = "MONSTER_BATTLE_82026", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_82026", action = "action_EVENT_MONSTER_BATTLE_82026" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 82001, gadget_id = 70500000, pos = { x = -2452.992, y = 227.074, z = -4188.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 9104, area_id = 11 },
		{ config_id = 82004, gadget_id = 70220048, pos = { x = -2432.947, y = 225.560, z = -4207.867 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 82009, gadget_id = 70220048, pos = { x = -2431.930, y = 225.507, z = -4203.628 }, rot = { x = 0.000, y = 61.000, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 82010, gadget_id = 70220048, pos = { x = -2453.351, y = 224.083, z = -4191.862 }, rot = { x = 0.000, y = 73.122, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 82011, gadget_id = 70500000, pos = { x = -2453.145, y = 227.015, z = -4188.197 }, rot = { x = 0.000, y = 60.014, z = 0.000 }, level = 27, point_type = 9104, area_id = 11 },
		{ config_id = 82012, gadget_id = 70220048, pos = { x = -2457.115, y = 224.158, z = -4189.915 }, rot = { x = 358.612, y = 106.181, z = 1.379 }, level = 27, area_id = 11 },
		{ config_id = 82013, gadget_id = 70220048, pos = { x = -2440.158, y = 225.638, z = -4206.959 }, rot = { x = 359.648, y = 71.374, z = 1.924 }, level = 27, area_id = 11 },
		{ config_id = 82014, gadget_id = 70220052, pos = { x = -2439.716, y = 225.282, z = -4191.611 }, rot = { x = 0.000, y = 288.347, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 82015, gadget_id = 70220052, pos = { x = -2439.045, y = 225.173, z = -4190.685 }, rot = { x = 0.000, y = 129.222, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 82017, gadget_id = 70220050, pos = { x = -2434.527, y = 225.517, z = -4208.296 }, rot = { x = 359.206, y = 46.927, z = 359.151 }, level = 27, area_id = 11 },
		{ config_id = 82019, gadget_id = 70220052, pos = { x = -2455.338, y = 227.166, z = -4190.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 82021, gadget_id = 70220050, pos = { x = -2450.466, y = 225.092, z = -4185.399 }, rot = { x = 1.161, y = 176.831, z = 359.936 }, level = 27, area_id = 11 }
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
		monsters = { 82005, 82007 },
		gadgets = { 82002, 82016, 82018, 82020, 82022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_82003", "MONSTER_BATTLE_82026" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_82003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_82003(context, evt)
	-- 将configid为 82002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 82002, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_82026(context, evt)
	if 82005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_82026(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 82006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end