-- 基础信息
local base_info = {
	group_id = 133301037
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 37001, monster_id = 24030201, pos = { x = -1095.863, y = 222.972, z = 2306.833 }, rot = { x = 0.000, y = 111.716, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 102, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 37003, gadget_id = 70360001, pos = { x = -1087.948, y = 216.206, z = 2307.953 }, rot = { x = 0.000, y = 54.109, z = 0.000 }, level = 27, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1037002, name = "ANY_MONSTER_DIE_37002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_37002", action = "action_EVENT_ANY_MONSTER_DIE_37002", trigger_count = 0 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 37001 },
		gadgets = { 37003 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_37002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_37002(context, evt)
	--判断死亡怪物的configid是否为 37001
	if evt.param1 ~= 37001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_37002(context, evt)
	-- 将configid为 37003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end