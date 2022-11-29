-- 基础信息
local base_info = {
	group_id = 144002096
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 96001, monster_id = 21010201, pos = { x = 223.657, y = 202.258, z = -501.000 }, rot = { x = 0.000, y = 20.730, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 101 },
	{ config_id = 96004, monster_id = 21010201, pos = { x = 227.902, y = 202.232, z = -498.764 }, rot = { x = 0.000, y = 273.970, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 101 },
	{ config_id = 96005, monster_id = 21030101, pos = { x = 223.594, y = 202.263, z = -496.669 }, rot = { x = 0.000, y = 152.958, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 101 },
	{ config_id = 96016, monster_id = 21010901, pos = { x = 240.051, y = 203.815, z = -495.196 }, rot = { x = 0.000, y = 10.440, z = 0.000 }, level = 21, drop_tag = "远程丘丘人", pose_id = 32, area_id = 101 },
	{ config_id = 96017, monster_id = 21010401, pos = { x = 207.382, y = 203.867, z = -500.949 }, rot = { x = 0.000, y = 313.042, z = 0.000 }, level = 25, drop_tag = "远程丘丘人", pose_id = 402, area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 96002, gadget_id = 70211002, pos = { x = 225.250, y = 202.263, z = -498.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1002000, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 96011, gadget_id = 70220013, pos = { x = 235.181, y = 200.995, z = -506.435 }, rot = { x = 0.000, y = 53.140, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 96012, gadget_id = 70220026, pos = { x = 231.358, y = 200.943, z = -506.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 96013, gadget_id = 70310006, pos = { x = 233.636, y = 200.943, z = -504.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 96014, gadget_id = 70950092, pos = { x = 240.695, y = 200.000, z = -495.530 }, rot = { x = 0.000, y = 328.107, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 96015, gadget_id = 70950092, pos = { x = 207.537, y = 200.000, z = -500.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 96018, gadget_id = 70290061, pos = { x = 216.844, y = 200.000, z = -513.031 }, rot = { x = 0.000, y = 25.319, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 96019, gadget_id = 70290061, pos = { x = 243.514, y = 200.000, z = -502.061 }, rot = { x = 0.000, y = 93.070, z = 0.000 }, level = 1, area_id = 101 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1096003, name = "ANY_MONSTER_DIE_96003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_96003", action = "action_EVENT_ANY_MONSTER_DIE_96003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 96006, monster_id = 21020201, pos = { x = 221.973, y = 202.263, z = -497.665 }, rot = { x = 0.000, y = 90.760, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 101 },
		{ config_id = 96007, monster_id = 21010901, pos = { x = 225.780, y = 205.524, z = -506.277 }, rot = { x = 0.000, y = 344.579, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 101 },
		{ config_id = 96008, monster_id = 21010201, pos = { x = 228.957, y = 202.244, z = -494.481 }, rot = { x = 0.000, y = 218.270, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 101 },
		{ config_id = 96009, monster_id = 21010201, pos = { x = 229.657, y = 202.142, z = -498.378 }, rot = { x = 0.000, y = 249.130, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 101 }
	},
	triggers = {
		{ config_id = 1096010, name = "ANY_MONSTER_DIE_96010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_96010", action = "action_EVENT_ANY_MONSTER_DIE_96010" }
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
		monsters = { 96001, 96004, 96005, 96016, 96017 },
		gadgets = { 96002, 96011, 96012, 96013, 96014, 96015, 96018, 96019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_96003" },
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
function condition_EVENT_ANY_MONSTER_DIE_96003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_96003(context, evt)
	-- 将configid为 96002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 96002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end