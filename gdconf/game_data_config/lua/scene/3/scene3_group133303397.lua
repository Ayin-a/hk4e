-- 基础信息
local base_info = {
	group_id = 133303397
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 397001, monster_id = 26120101, pos = { x = -1124.983, y = 186.745, z = 3597.675 }, rot = { x = 0.000, y = 254.125, z = 0.000 }, level = 30, drop_tag = "大蕈兽", pose_id = 201, area_id = 23 },
	{ config_id = 397002, monster_id = 26090201, pos = { x = -1137.310, y = 184.175, z = 3592.776 }, rot = { x = 0.000, y = 67.086, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 397003, monster_id = 26090201, pos = { x = -1140.825, y = 185.267, z = 3589.828 }, rot = { x = 0.000, y = 121.813, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 397004, monster_id = 26090201, pos = { x = -1143.814, y = 185.525, z = 3591.045 }, rot = { x = 0.000, y = 206.920, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 397005, monster_id = 26090201, pos = { x = -1137.831, y = 183.635, z = 3596.531 }, rot = { x = 0.000, y = 67.086, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 397006, monster_id = 26090201, pos = { x = -1141.488, y = 184.228, z = 3597.493 }, rot = { x = 0.000, y = 16.361, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 397007, monster_id = 26090201, pos = { x = -1144.470, y = 185.266, z = 3594.177 }, rot = { x = 0.000, y = 67.086, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 397008, gadget_id = 70211002, pos = { x = -1122.947, y = 186.985, z = 3597.405 }, rot = { x = 0.000, y = 263.644, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1397009, name = "ANY_MONSTER_DIE_397009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_397009", action = "action_EVENT_ANY_MONSTER_DIE_397009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "finished", value = 0, no_refresh = true }
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
		monsters = { 397001, 397002, 397003, 397004, 397005, 397006, 397007 },
		gadgets = { 397008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_397009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_ANY_MONSTER_DIE_397009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_397009(context, evt)
	-- 将configid为 397008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 397008, GadgetState.Default) then
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