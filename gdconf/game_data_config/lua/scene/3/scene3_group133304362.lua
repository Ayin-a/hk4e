-- 基础信息
local base_info = {
	group_id = 133304362
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 362002, monster_id = 26120101, pos = { x = -1301.813, y = 215.193, z = 3069.502 }, rot = { x = 0.000, y = 223.684, z = 0.000 }, level = 30, drop_tag = "大蕈兽", disableWander = true, pose_id = 102, area_id = 21 },
	{ config_id = 362003, monster_id = 26090201, pos = { x = -1309.865, y = 215.624, z = 3065.301 }, rot = { x = 0.000, y = 154.291, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 21 },
	{ config_id = 362005, monster_id = 26090201, pos = { x = -1305.877, y = 215.689, z = 3060.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 362001, gadget_id = 70211002, pos = { x = -1306.042, y = 215.563, z = 3065.075 }, rot = { x = 0.000, y = 316.805, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1362004, name = "ANY_MONSTER_DIE_362004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_362004", action = "action_EVENT_ANY_MONSTER_DIE_362004", trigger_count = 0 }
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
		monsters = { 362002, 362003, 362005 },
		gadgets = { 362001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_362004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_362004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_362004(context, evt)
	-- 将configid为 362001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 362001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end