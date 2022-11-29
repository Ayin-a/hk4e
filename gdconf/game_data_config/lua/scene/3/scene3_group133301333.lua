-- 基础信息
local base_info = {
	group_id = 133301333
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 333002, monster_id = 21010401, pos = { x = -479.052, y = 174.281, z = 3192.226 }, rot = { x = 0.000, y = 65.125, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 22 },
	{ config_id = 333004, monster_id = 21010901, pos = { x = -447.336, y = 172.494, z = 3173.412 }, rot = { x = 0.000, y = 268.119, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", pose_id = 9013, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 333001, gadget_id = 70211002, pos = { x = -481.819, y = 174.047, z = 3193.008 }, rot = { x = 0.000, y = 75.214, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 333003, gadget_id = 70310004, pos = { x = -476.906, y = 173.996, z = 3192.289 }, rot = { x = 6.796, y = 348.778, z = 346.393 }, level = 33, area_id = 22 },
	{ config_id = 333006, gadget_id = 70220103, pos = { x = -456.762, y = 181.381, z = 3172.922 }, rot = { x = 0.000, y = 354.846, z = 0.000 }, level = 33, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1333005, name = "ANY_MONSTER_DIE_333005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_333005", action = "action_EVENT_ANY_MONSTER_DIE_333005", trigger_count = 0 }
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
		monsters = { 333002, 333004 },
		gadgets = { 333001, 333003, 333006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_333005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_333005(context, evt)
	--判断死亡怪物的configid是否为 333002
	if evt.param1 ~= 333002 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_333005(context, evt)
	-- 将configid为 333001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 333001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end