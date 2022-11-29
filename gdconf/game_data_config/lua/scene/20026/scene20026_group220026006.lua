-- 基础信息
local base_info = {
	group_id = 220026006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10, monster_id = 21020101, pos = { x = -56.438, y = -67.524, z = -128.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 401 },
	{ config_id = 11, monster_id = 21011001, pos = { x = -77.103, y = -67.470, z = -123.164 }, rot = { x = 0.000, y = 68.738, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 12, monster_id = 21010901, pos = { x = -34.928, y = -67.458, z = -119.442 }, rot = { x = 0.000, y = 279.254, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 44, monster_id = 21011001, pos = { x = -78.710, y = -67.648, z = -117.188 }, rot = { x = 0.000, y = 92.600, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 45, monster_id = 21010901, pos = { x = -34.901, y = -67.648, z = -126.159 }, rot = { x = 0.000, y = 279.254, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 57, gadget_id = 70220014, pos = { x = -21.028, y = -67.470, z = -123.141 }, rot = { x = 0.000, y = 314.918, z = 0.000 }, level = 1 },
	{ config_id = 58, gadget_id = 70220014, pos = { x = -19.875, y = -67.470, z = -118.337 }, rot = { x = 0.000, y = 303.861, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000008, name = "ANY_MONSTER_DIE_8", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8", action = "action_EVENT_ANY_MONSTER_DIE_8" }
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
		monsters = { 10, 11, 12, 44, 45 },
		gadgets = { 57, 58 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_8" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 220026006) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8(context, evt)
	-- 改变指定group组220026003中， configid为3010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220026003, 3010, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end