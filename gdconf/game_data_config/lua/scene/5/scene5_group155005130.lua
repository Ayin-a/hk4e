-- 基础信息
local base_info = {
	group_id = 155005130
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 130001, monster_id = 21010201, pos = { x = 592.691, y = 223.169, z = 729.109 }, rot = { x = 6.290, y = 270.388, z = 352.959 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 200 },
	{ config_id = 130008, monster_id = 21020701, pos = { x = 589.543, y = 223.014, z = 726.417 }, rot = { x = 0.000, y = 28.259, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 200 },
	{ config_id = 130013, monster_id = 21010501, pos = { x = 583.025, y = 226.055, z = 728.919 }, rot = { x = 0.000, y = 88.762, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", pose_id = 32, area_id = 200 },
	{ config_id = 130014, monster_id = 21010201, pos = { x = 589.982, y = 222.631, z = 730.700 }, rot = { x = 348.810, y = 151.772, z = 356.007 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 130002, gadget_id = 70211002, pos = { x = 587.142, y = 222.090, z = 731.320 }, rot = { x = 348.505, y = 127.681, z = 0.000 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 130006, gadget_id = 70300089, pos = { x = 590.991, y = 222.912, z = 728.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 130012, gadget_id = 70300090, pos = { x = 582.763, y = 220.628, z = 728.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1130003, name = "ANY_MONSTER_DIE_130003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_130003", action = "action_EVENT_ANY_MONSTER_DIE_130003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 130009, monster_id = 21030601, pos = { x = 592.221, y = 222.962, z = 730.238 }, rot = { x = 0.000, y = 207.573, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 200 },
		{ config_id = 130010, monster_id = 21010701, pos = { x = 599.756, y = 222.828, z = 696.790 }, rot = { x = 0.000, y = 11.830, z = 0.000 }, level = 36, drop_tag = "丘丘人", area_id = 200 },
		{ config_id = 130011, monster_id = 21030201, pos = { x = 592.962, y = 223.170, z = 729.092 }, rot = { x = 0.000, y = 290.471, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", area_id = 200 }
	},
	gadgets = {
		{ config_id = 130004, gadget_id = 70220013, pos = { x = 592.331, y = 223.683, z = 723.046 }, rot = { x = 0.000, y = 281.988, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 130005, gadget_id = 70220013, pos = { x = 588.791, y = 223.083, z = 723.259 }, rot = { x = 0.000, y = 298.898, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 130007, gadget_id = 70220026, pos = { x = 587.341, y = 222.711, z = 724.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
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
		monsters = { 130001, 130008, 130013, 130014 },
		gadgets = { 130002, 130006, 130012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_130003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_130003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_130003(context, evt)
	-- 将configid为 130002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 130002, GadgetState.Default) then
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