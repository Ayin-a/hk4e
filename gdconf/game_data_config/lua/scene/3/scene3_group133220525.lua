-- 基础信息
local base_info = {
	group_id = 133220525
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 525001, monster_id = 25010501, pos = { x = -2835.273, y = 200.521, z = -4025.867 }, rot = { x = 0.000, y = 47.373, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, area_id = 11 },
	{ config_id = 525005, monster_id = 25010201, pos = { x = -2830.256, y = 200.927, z = -4026.485 }, rot = { x = 0.000, y = 14.127, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, pose_id = 9005, area_id = 11 },
	{ config_id = 525006, monster_id = 25010301, pos = { x = -2831.043, y = 200.392, z = -4023.268 }, rot = { x = 0.000, y = 224.569, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, pose_id = 9002, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 525002, gadget_id = 70211002, pos = { x = -2837.104, y = 200.553, z = -4018.927 }, rot = { x = 8.868, y = 125.895, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 525004, gadget_id = 70300105, pos = { x = -2830.018, y = 201.165, z = -4028.559 }, rot = { x = 0.000, y = 85.892, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 525007, gadget_id = 70310001, pos = { x = -2835.338, y = 200.519, z = -4017.623 }, rot = { x = 355.688, y = 4.733, z = 357.350 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 525008, gadget_id = 70310006, pos = { x = -2827.675, y = 200.767, z = -4025.860 }, rot = { x = 0.000, y = 337.640, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1525003, name = "ANY_MONSTER_DIE_525003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_525003", action = "action_EVENT_ANY_MONSTER_DIE_525003" }
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
		monsters = { 525001, 525005, 525006 },
		gadgets = { 525002, 525004, 525007, 525008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_525003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_525003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_525003(context, evt)
	-- 将configid为 525002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 525002, GadgetState.Default) then
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