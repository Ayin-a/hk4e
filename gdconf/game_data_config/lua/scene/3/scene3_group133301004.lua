-- 基础信息
local base_info = {
	group_id = 133301004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 23010601, pos = { x = -160.400, y = 224.464, z = 3961.067 }, rot = { x = 0.000, y = 249.920, z = 0.000 }, level = 27, drop_tag = "先遣队", disableWander = true, area_id = 22 },
	{ config_id = 4005, monster_id = 23010501, pos = { x = -163.776, y = 224.603, z = 3961.105 }, rot = { x = 0.000, y = 273.076, z = 0.000 }, level = 27, drop_tag = "先遣队", disableWander = true, pose_id = 9011, area_id = 22 },
	{ config_id = 4006, monster_id = 23020101, pos = { x = -167.238, y = 218.559, z = 3982.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "债务处理人", disableWander = true, area_id = 22 },
	{ config_id = 4008, monster_id = 23010301, pos = { x = -115.110, y = 230.161, z = 4037.238 }, rot = { x = 0.000, y = 187.838, z = 0.000 }, level = 27, drop_tag = "先遣队", area_id = 22 },
	{ config_id = 4009, monster_id = 23010101, pos = { x = -122.614, y = 231.435, z = 4019.142 }, rot = { x = 0.000, y = 305.632, z = 0.000 }, level = 27, drop_tag = "先遣队", area_id = 22 },
	{ config_id = 4010, monster_id = 23010601, pos = { x = -159.494, y = 229.368, z = 4022.636 }, rot = { x = 0.000, y = 121.871, z = 0.000 }, level = 27, drop_tag = "先遣队", disableWander = true, area_id = 22 },
	{ config_id = 4011, monster_id = 23010401, pos = { x = -139.974, y = 224.317, z = 4017.438 }, rot = { x = 0.000, y = 340.182, z = 0.000 }, level = 27, drop_tag = "先遣队", area_id = 22 },
	{ config_id = 4014, monster_id = 23040101, pos = { x = -125.649, y = 235.512, z = 3988.324 }, rot = { x = 0.000, y = 308.417, z = 0.000 }, level = 27, drop_tag = "召唤师", area_id = 22 },
	{ config_id = 4016, monster_id = 23010201, pos = { x = -139.849, y = 225.119, z = 4034.962 }, rot = { x = 0.000, y = 133.841, z = 0.000 }, level = 27, drop_tag = "先遣队", area_id = 22 },
	{ config_id = 4024, monster_id = 28061101, pos = { x = -167.940, y = 218.589, z = 3979.122 }, rot = { x = 0.000, y = 350.563, z = 0.000 }, level = 27, drop_tag = "驮兽先遣队", disableWander = true, pose_id = 4, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4002, gadget_id = 70211022, pos = { x = -110.982, y = 231.508, z = 4048.854 }, rot = { x = 0.000, y = 191.205, z = 0.000 }, level = 26, drop_tag = "战斗高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 4007, gadget_id = 70217020, pos = { x = -173.893, y = 225.454, z = 3950.106 }, rot = { x = 18.512, y = 82.496, z = 24.891 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 },
	{ config_id = 4012, gadget_id = 70220050, pos = { x = -141.341, y = 230.576, z = 3991.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 4013, gadget_id = 70220051, pos = { x = -141.545, y = 230.566, z = 3990.529 }, rot = { x = 27.674, y = 327.578, z = 78.522 }, level = 27, area_id = 22 },
	{ config_id = 4015, gadget_id = 70310006, pos = { x = -138.504, y = 226.454, z = 4040.107 }, rot = { x = 16.346, y = 190.721, z = 0.906 }, level = 27, area_id = 22 },
	{ config_id = 4018, gadget_id = 70220048, pos = { x = -141.302, y = 226.875, z = 4041.990 }, rot = { x = 352.338, y = 336.540, z = 3.785 }, level = 27, area_id = 22 },
	{ config_id = 4019, gadget_id = 70220048, pos = { x = -143.021, y = 226.366, z = 4040.193 }, rot = { x = 354.145, y = 20.371, z = 353.886 }, level = 27, area_id = 22 },
	{ config_id = 4020, gadget_id = 70310009, pos = { x = -129.327, y = 231.428, z = 4013.874 }, rot = { x = 0.000, y = 359.362, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 4021, gadget_id = 70220048, pos = { x = -148.538, y = 225.940, z = 3959.086 }, rot = { x = 359.815, y = 258.992, z = 359.827 }, level = 27, area_id = 22 },
	{ config_id = 4022, gadget_id = 70220048, pos = { x = -149.150, y = 225.952, z = 3956.931 }, rot = { x = 0.134, y = 71.700, z = 0.094 }, level = 27, area_id = 22 },
	{ config_id = 4023, gadget_id = 70310009, pos = { x = -163.005, y = 224.388, z = 3955.224 }, rot = { x = 17.964, y = 3.146, z = 4.374 }, level = 27, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004003, name = "ANY_MONSTER_DIE_4003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4003", action = "action_EVENT_ANY_MONSTER_DIE_4003" },
	{ config_id = 1004017, name = "MONSTER_BATTLE_4017", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_4017", action = "action_EVENT_MONSTER_BATTLE_4017", trigger_count = 0 }
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
		monsters = { 4005, 4006, 4008, 4009, 4011, 4024 },
		gadgets = { 4002, 4007, 4012, 4013, 4015, 4018, 4019, 4020, 4021, 4022, 4023 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4003(context, evt)
	-- 将configid为 4002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_4017(context, evt)
	if 4008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_4017(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 4016, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end