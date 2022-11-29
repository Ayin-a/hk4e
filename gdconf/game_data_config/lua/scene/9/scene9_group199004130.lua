-- 基础信息
local base_info = {
	group_id = 199004130
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 130001, monster_id = 22010101, pos = { x = -320.645, y = 249.726, z = -680.688 }, rot = { x = 0.000, y = 341.909, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 400 },
	{ config_id = 130004, monster_id = 22010401, pos = { x = -325.395, y = 249.723, z = -682.544 }, rot = { x = 0.000, y = 349.731, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 400 },
	{ config_id = 130006, monster_id = 21020101, pos = { x = -315.608, y = 248.252, z = -671.012 }, rot = { x = 0.000, y = 240.811, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 400 },
	{ config_id = 130007, monster_id = 21020201, pos = { x = -321.056, y = 249.872, z = -687.535 }, rot = { x = 0.000, y = 337.899, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 400 },
	{ config_id = 130008, monster_id = 21020701, pos = { x = -334.691, y = 246.579, z = -675.860 }, rot = { x = 0.000, y = 125.164, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 400 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 130005, gadget_id = 70210122, pos = { x = -324.058, y = 248.822, z = -679.410 }, rot = { x = 0.000, y = 342.676, z = 0.000 }, level = 16, chest_drop_id = 1050209, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1130009, name = "ANY_MONSTER_DIE_130009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_130009", action = "action_EVENT_ANY_MONSTER_DIE_130009" }
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
		monsters = { 130001, 130004, 130006, 130007, 130008 },
		gadgets = { 130005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_130009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_130009(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 199004130) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_130009(context, evt)
	-- 将configid为 130005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end