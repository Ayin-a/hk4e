-- 基础信息
local base_info = {
	group_id = 133217031
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 31004, monster_id = 23010501, pos = { x = -4485.883, y = 200.594, z = -3768.041 }, rot = { x = 0.000, y = 172.362, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, pose_id = 9001, area_id = 14 },
	{ config_id = 31005, monster_id = 23050101, pos = { x = -4468.260, y = 200.725, z = -3759.463 }, rot = { x = 0.000, y = 4.916, z = 0.000 }, level = 30, drop_tag = "藏镜侍女", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 31002, gadget_id = 70211012, pos = { x = -4485.795, y = 200.724, z = -3770.852 }, rot = { x = 9.752, y = 0.076, z = 0.895 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 31009, gadget_id = 70310006, pos = { x = -4468.615, y = 200.756, z = -3763.423 }, rot = { x = 0.000, y = 17.659, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 31010, gadget_id = 70220051, pos = { x = -4461.784, y = 200.644, z = -3761.385 }, rot = { x = 5.490, y = 79.139, z = 346.431 }, level = 30, area_id = 14 },
	{ config_id = 31014, gadget_id = 70220052, pos = { x = -4462.720, y = 200.689, z = -3758.005 }, rot = { x = 0.000, y = 146.296, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1031003, name = "ANY_MONSTER_DIE_31003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_31003", action = "action_EVENT_ANY_MONSTER_DIE_31003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 31001, monster_id = 23010101, pos = { x = -4477.466, y = 200.257, z = -3766.428 }, rot = { x = 0.000, y = 280.028, z = 0.000 }, level = 30, drop_tag = "先遣队", pose_id = 9011, area_id = 14 },
		{ config_id = 31007, monster_id = 23010301, pos = { x = -4488.888, y = 200.193, z = -3767.186 }, rot = { x = 0.000, y = 55.831, z = 0.000 }, level = 30, drop_tag = "先遣队", area_id = 14 }
	},
	gadgets = {
		{ config_id = 31011, gadget_id = 70220050, pos = { x = -4464.194, y = 200.523, z = -3762.649 }, rot = { x = 0.000, y = 30.634, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 31012, gadget_id = 70220051, pos = { x = -4462.214, y = 200.607, z = -3761.784 }, rot = { x = 0.000, y = 22.124, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 31013, gadget_id = 70220052, pos = { x = -4462.747, y = 201.500, z = -3756.069 }, rot = { x = 0.000, y = 146.296, z = 0.000 }, level = 30, area_id = 14 }
	},
	triggers = {
		{ config_id = 1031006, name = "MONSTER_BATTLE_31006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_31006", trigger_count = 0 }
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
		monsters = { 31004, 31005 },
		gadgets = { 31002, 31009, 31010, 31014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_31003" },
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
function condition_EVENT_ANY_MONSTER_DIE_31003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_31003(context, evt)
	-- 将configid为 31002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31002, GadgetState.Default) then
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