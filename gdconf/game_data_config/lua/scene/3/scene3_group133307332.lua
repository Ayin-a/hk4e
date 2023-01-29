-- 基础信息
local base_info = {
	group_id = 133307332
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 332005, monster_id = 21010201, pos = { x = -1173.687, y = 57.961, z = 5404.603 }, rot = { x = 0.000, y = 239.209, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 32 },
	{ config_id = 332007, monster_id = 21010201, pos = { x = -1175.693, y = 57.591, z = 5405.614 }, rot = { x = 0.000, y = 195.798, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 32 },
	{ config_id = 332008, monster_id = 21010201, pos = { x = -1186.526, y = 58.140, z = 5411.950 }, rot = { x = 0.000, y = 47.043, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 332001, gadget_id = 70330332, pos = { x = -1175.828, y = 58.222, z = 5403.222 }, rot = { x = 12.171, y = 0.691, z = 5.471 }, level = 32, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 332002, gadget_id = 70330332, pos = { x = -1187.224, y = 58.562, z = 5411.237 }, rot = { x = 16.162, y = 1.342, z = 343.523 }, level = 32, isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 332003, gadget_id = 70330332, pos = { x = -1187.268, y = 55.107, z = 5390.323 }, rot = { x = 7.787, y = 0.487, z = 5.932 }, level = 32, isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 332004, gadget_id = 70330332, pos = { x = -1205.377, y = 53.545, z = 5390.035 }, rot = { x = 9.813, y = 0.487, z = 3.369 }, level = 32, isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 332006, gadget_id = 70211002, pos = { x = -1196.862, y = 53.755, z = 5392.289 }, rot = { x = 4.444, y = 20.825, z = 8.013 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 332009, gadget_id = 70330434, pos = { x = -1185.489, y = 54.628, z = 5397.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1332011, name = "ANY_MONSTER_DIE_332011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_332011", action = "action_EVENT_ANY_MONSTER_DIE_332011" },
	{ config_id = 1332012, name = "GADGET_STATE_CHANGE_332012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_332012", action = "action_EVENT_GADGET_STATE_CHANGE_332012" }
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
		monsters = { 332005, 332007, 332008 },
		gadgets = { 332001, 332002, 332003, 332004, 332006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_332011", "GADGET_STATE_CHANGE_332012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 332009 },
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
function condition_EVENT_ANY_MONSTER_DIE_332011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_332011(context, evt)
	-- 改变指定group组133307332中， configid为332001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133307332, 332001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_332012(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307332, 332001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307332, 332002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307332, 332004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133307332, 332003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_332012(context, evt)
	-- 将configid为 332006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 332006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307332, 2)
	
	return 0
end