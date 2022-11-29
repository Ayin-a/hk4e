-- 基础信息
local base_info = {
	group_id = 133302332
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 332001, monster_id = 25210102, pos = { x = -808.174, y = 200.138, z = 2863.130 }, rot = { x = 0.000, y = 78.276, z = 0.000 }, level = 27, drop_tag = "镀金旅团", disableWander = true, pose_id = 9002, area_id = 24 },
	{ config_id = 332004, monster_id = 25210201, pos = { x = -809.395, y = 200.236, z = 2873.975 }, rot = { x = 0.000, y = 63.512, z = 0.000 }, level = 27, drop_tag = "镀金旅团", area_id = 24 },
	{ config_id = 332008, monster_id = 25210501, pos = { x = -800.582, y = 200.138, z = 2866.857 }, rot = { x = 0.000, y = 202.056, z = 0.000 }, level = 27, drop_tag = "镀金旅团", pose_id = 9504, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 332002, gadget_id = 70211002, pos = { x = -812.649, y = 200.185, z = 2869.036 }, rot = { x = 0.000, y = 332.685, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 332005, gadget_id = 70310009, pos = { x = -808.211, y = 200.294, z = 2875.268 }, rot = { x = 355.208, y = 351.337, z = 0.320 }, level = 27, state = GadgetState.GearStart, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1332003, name = "ANY_MONSTER_DIE_332003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_332003", action = "action_EVENT_ANY_MONSTER_DIE_332003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 332006, gadget_id = 70290027, pos = { x = -807.659, y = 200.771, z = 2878.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
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
		monsters = { 332001, 332004, 332008 },
		gadgets = { 332002, 332005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_332003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_332003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_332003(context, evt)
	-- 将configid为 332002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 332002, GadgetState.Default) then
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