-- 基础信息
local base_info = {
	group_id = 133212495
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 495002, monster_id = 22010401, pos = { x = -3878.933, y = 200.339, z = -2503.138 }, rot = { x = 0.000, y = 140.355, z = 0.000 }, level = 27, drop_tag = "深渊法师", pose_id = 9013, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 495001, gadget_id = 70330064, pos = { x = -3877.837, y = 199.841, z = -2505.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, interact_id = 35, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1495003, name = "ANY_MONSTER_DIE_495003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_495003", action = "action_EVENT_ANY_MONSTER_DIE_495003" }
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
		monsters = { 495002 },
		gadgets = { 495001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_495003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_495003(context, evt)
	--判断死亡怪物的configid是否为 495002
	if evt.param1 ~= 495002 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_495003(context, evt)
	-- 将configid为 495001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 495001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end