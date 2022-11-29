-- 基础信息
local base_info = {
	group_id = 133315222
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 222001, monster_id = 24020201, pos = { x = 179.063, y = 105.646, z = 2894.809 }, rot = { x = 0.000, y = 90.028, z = 0.000 }, level = 27, drop_tag = "拟生机关", disableWander = true, pose_id = 101, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1222002, name = "MONSTER_BATTLE_222002", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_222002", action = "action_EVENT_MONSTER_BATTLE_222002" }
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
		monsters = { 222001 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_222002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_222002(context, evt)
	if 222001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_222002(context, evt)
	-- 改变指定group组133315266中， configid为266001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133315266, 266001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end