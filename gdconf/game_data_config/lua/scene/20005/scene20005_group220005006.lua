-- 基础信息
local base_info = {
	group_id = 220005006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6003, monster_id = 20010801, pos = { x = -196.153, y = 25.785, z = 126.692 }, rot = { x = 0.000, y = 218.682, z = 0.000 }, level = 1, pose_id = 901 },
	{ config_id = 6005, monster_id = 20010801, pos = { x = -191.355, y = 25.785, z = 126.603 }, rot = { x = 0.000, y = 218.682, z = 0.000 }, level = 1, pose_id = 901 },
	{ config_id = 6006, monster_id = 20010801, pos = { x = -186.581, y = 25.785, z = 128.288 }, rot = { x = 0.000, y = 218.682, z = 0.000 }, level = 1, pose_id = 901 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6002, gadget_id = 70900201, pos = { x = -230.566, y = 30.560, z = 171.378 }, rot = { x = 0.000, y = 89.383, z = 0.000 }, level = 1 },
	{ config_id = 6008, gadget_id = 70350005, pos = { x = -190.462, y = 25.143, z = 140.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006009, name = "ANY_MONSTER_DIE_6009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_6009", action = "action_EVENT_ANY_MONSTER_DIE_6009" }
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
		monsters = { 6003, 6005, 6006 },
		gadgets = { 6008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_6009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_6009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_6009(context, evt)
	-- 将configid为 6008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220005004, monsters = {}, gadgets = {4014} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建id为6002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 6002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end