-- 基础信息
local base_info = {
	group_id = 133213018
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 18001, monster_id = 21011301, pos = { x = -3625.873, y = 200.915, z = -2990.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, area_id = 12 },
	{ config_id = 18004, monster_id = 21010401, pos = { x = -3626.744, y = 200.152, z = -2981.648 }, rot = { x = 0.000, y = 147.072, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, area_id = 12 },
	{ config_id = 18005, monster_id = 21030301, pos = { x = -3622.042, y = 200.000, z = -2984.847 }, rot = { x = 0.000, y = 88.898, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", area_id = 12 },
	{ config_id = 18013, monster_id = 21020201, pos = { x = -3632.774, y = 200.000, z = -2985.765 }, rot = { x = 0.000, y = 88.898, z = 0.000 }, level = 27, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 18002, gadget_id = 70211002, pos = { x = -3624.900, y = 200.419, z = -2989.709 }, rot = { x = 14.127, y = 2.275, z = 357.950 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 18006, gadget_id = 70220013, pos = { x = -3628.980, y = 201.370, z = -2991.796 }, rot = { x = 25.114, y = 0.199, z = 0.895 }, level = 27, area_id = 12 },
	{ config_id = 18012, gadget_id = 70220043, pos = { x = -3632.415, y = 200.425, z = -2989.978 }, rot = { x = 20.552, y = 358.611, z = 359.512 }, level = 27, area_id = 12 },
	{ config_id = 18017, gadget_id = 70310006, pos = { x = -3622.839, y = 200.415, z = -2979.288 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1018003, name = "ANY_MONSTER_DIE_18003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_18003", action = "action_EVENT_ANY_MONSTER_DIE_18003" },
	{ config_id = 1018018, name = "MONSTER_BATTLE_18018", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_18018" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 18014, monster_id = 28040101, pos = { x = -3620.518, y = 200.000, z = -2985.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 12 },
		{ config_id = 18015, monster_id = 28040101, pos = { x = -3619.490, y = 200.000, z = -2984.058 }, rot = { x = 0.000, y = 232.293, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 12 },
		{ config_id = 18016, monster_id = 28040101, pos = { x = -3621.083, y = 200.000, z = -2983.437 }, rot = { x = 0.000, y = 101.951, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 12 }
	},
	gadgets = {
		{ config_id = 18007, gadget_id = 70220013, pos = { x = -3628.311, y = 200.715, z = -2979.391 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 18008, gadget_id = 70220013, pos = { x = -3625.337, y = 202.301, z = -2993.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 18009, gadget_id = 70220013, pos = { x = -3620.758, y = 201.582, z = -2974.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 18010, gadget_id = 70220014, pos = { x = -3626.976, y = 201.511, z = -2992.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 18011, gadget_id = 70220014, pos = { x = -3626.601, y = 201.055, z = -2977.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
	}
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
		monsters = { 18013 },
		gadgets = { 18002, 18006, 18012, 18017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_18003", "MONSTER_BATTLE_18018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 18001, 18004, 18005 },
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
function condition_EVENT_ANY_MONSTER_DIE_18003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_18003(context, evt)
	-- 将configid为 18002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18002, GadgetState.Default) then
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

-- 触发操作
function action_EVENT_MONSTER_BATTLE_18018(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213018, 2)
	
	return 0
end