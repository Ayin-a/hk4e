-- 基础信息
local base_info = {
	group_id = 155008114
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 114001, monster_id = 21010101, pos = { x = -116.681, y = 239.590, z = 166.341 }, rot = { x = 0.000, y = 202.407, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 200 },
	{ config_id = 114004, monster_id = 21010301, pos = { x = -98.785, y = 236.999, z = 174.026 }, rot = { x = 0.000, y = 289.022, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 200 },
	{ config_id = 114006, monster_id = 21030101, pos = { x = -109.229, y = 240.463, z = 159.872 }, rot = { x = 0.000, y = 202.892, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 200 },
	{ config_id = 114007, monster_id = 21030101, pos = { x = -113.204, y = 240.378, z = 158.155 }, rot = { x = 0.000, y = 99.280, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 200 },
	{ config_id = 114008, monster_id = 22010401, pos = { x = -106.674, y = 240.829, z = 154.859 }, rot = { x = 3.311, y = 296.446, z = 352.433 }, level = 36, drop_tag = "深渊法师", pose_id = 9013, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 114002, gadget_id = 70211012, pos = { x = -110.377, y = 240.551, z = 156.466 }, rot = { x = 359.271, y = 355.359, z = 359.379 }, level = 16, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 114005, gadget_id = 70300085, pos = { x = -110.674, y = 240.094, z = 156.401 }, rot = { x = 0.650, y = 75.907, z = 358.914 }, level = 36, area_id = 200 },
	{ config_id = 114010, gadget_id = 70310001, pos = { x = -104.861, y = 241.295, z = 151.980 }, rot = { x = 6.142, y = 359.787, z = 356.035 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 114011, gadget_id = 70300089, pos = { x = -111.238, y = 240.548, z = 155.301 }, rot = { x = 1.552, y = 357.137, z = 358.587 }, level = 36, area_id = 200 },
	{ config_id = 114012, gadget_id = 70220026, pos = { x = -102.460, y = 241.149, z = 150.808 }, rot = { x = 5.840, y = 359.348, z = 353.418 }, level = 36, area_id = 200 },
	{ config_id = 114013, gadget_id = 70300086, pos = { x = -113.776, y = 238.759, z = 154.523 }, rot = { x = 351.888, y = 351.082, z = 27.121 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1114003, name = "ANY_MONSTER_DIE_114003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_114003", action = "action_EVENT_ANY_MONSTER_DIE_114003" }
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
		monsters = { 114001, 114004, 114006, 114007, 114008 },
		gadgets = { 114002, 114005, 114010, 114011, 114012, 114013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_114003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_114003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_114003(context, evt)
	-- 将configid为 114002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 114002, GadgetState.Default) then
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