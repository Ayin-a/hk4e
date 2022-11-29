-- 基础信息
local base_info = {
	group_id = 133310094
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 94004, monster_id = 25210201, pos = { x = -3104.496, y = 263.553, z = 4886.300 }, rot = { x = 0.000, y = 258.120, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9503, area_id = 28, vision_level = VisionLevelType.VISION_LEVEL_NEARBY },
	{ config_id = 94005, monster_id = 25210201, pos = { x = -3118.932, y = 263.430, z = 4886.425 }, rot = { x = 0.000, y = 139.929, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9504, area_id = 28, vision_level = VisionLevelType.VISION_LEVEL_NEARBY },
	{ config_id = 94006, monster_id = 25310101, pos = { x = -3115.692, y = 261.222, z = 4885.182 }, rot = { x = 0.000, y = 262.605, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", pose_id = 1, area_id = 28, vision_level = VisionLevelType.VISION_LEVEL_NEARBY }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 94002, gadget_id = 70211151, pos = { x = -3111.364, y = 262.178, z = 4891.087 }, rot = { x = 0.000, y = 202.970, z = 0.000 }, level = 26, chest_drop_id = 21910103, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1094003, name = "ANY_MONSTER_DIE_94003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_94003", action = "action_EVENT_ANY_MONSTER_DIE_94003" }
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
		monsters = { 94004, 94005, 94006 },
		gadgets = { 94002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_94003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_94003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_94003(context, evt)
	-- 将configid为 94002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94002, GadgetState.Default) then
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