-- 基础信息
local base_info = {
	group_id = 155005203
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 203004, monster_id = 21010401, pos = { x = 251.992, y = 341.152, z = 164.369 }, rot = { x = 0.000, y = 240.814, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 200 },
	{ config_id = 203012, monster_id = 21020201, pos = { x = 244.116, y = 341.622, z = 145.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", area_id = 200 },
	{ config_id = 203017, monster_id = 21010401, pos = { x = 237.447, y = 341.965, z = 146.224 }, rot = { x = 0.000, y = 100.448, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 203002, gadget_id = 70211002, pos = { x = 245.352, y = 341.197, z = 151.456 }, rot = { x = 4.918, y = 283.449, z = 357.823 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 203006, gadget_id = 70300086, pos = { x = 241.551, y = 340.075, z = 166.149 }, rot = { x = 12.661, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 203007, gadget_id = 70300086, pos = { x = 228.313, y = 341.567, z = 153.558 }, rot = { x = 350.515, y = 14.836, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 203008, gadget_id = 70220013, pos = { x = 241.982, y = 340.962, z = 164.336 }, rot = { x = 0.000, y = 0.000, z = 4.028 }, level = 36, area_id = 200 },
	{ config_id = 203010, gadget_id = 70220013, pos = { x = 237.241, y = 341.958, z = 143.964 }, rot = { x = 358.936, y = 336.166, z = 357.592 }, level = 36, area_id = 200 },
	{ config_id = 203013, gadget_id = 70310006, pos = { x = 246.627, y = 341.366, z = 149.611 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 203014, gadget_id = 70310001, pos = { x = 238.762, y = 340.801, z = 166.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 203015, gadget_id = 70310001, pos = { x = 227.834, y = 342.089, z = 155.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 203016, gadget_id = 70310001, pos = { x = 254.466, y = 341.082, z = 164.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1203003, name = "ANY_MONSTER_DIE_203003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_203003", action = "action_EVENT_ANY_MONSTER_DIE_203003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 203001, monster_id = 21010701, pos = { x = 238.187, y = 340.864, z = 163.483 }, rot = { x = 0.000, y = 38.816, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 200 }
	},
	gadgets = {
		{ config_id = 203005, gadget_id = 70300086, pos = { x = 252.251, y = 340.348, z = 154.241 }, rot = { x = 0.000, y = 0.000, z = 349.145 }, level = 36, area_id = 200 },
		{ config_id = 203009, gadget_id = 70220013, pos = { x = 249.348, y = 340.614, z = 151.971 }, rot = { x = 17.152, y = 310.243, z = 334.715 }, level = 36, area_id = 200 },
		{ config_id = 203011, gadget_id = 70220014, pos = { x = 240.305, y = 340.844, z = 165.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
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
		monsters = { 203004, 203012, 203017 },
		gadgets = { 203002, 203006, 203007, 203008, 203010, 203013, 203014, 203015, 203016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_203003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_203003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_203003(context, evt)
	-- 将configid为 203002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 203002, GadgetState.Default) then
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