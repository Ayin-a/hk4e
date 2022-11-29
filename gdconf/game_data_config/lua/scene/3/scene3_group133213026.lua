-- 基础信息
local base_info = {
	group_id = 133213026
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1026003, name = "ANY_MONSTER_DIE_26003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_26003", action = "action_EVENT_ANY_MONSTER_DIE_26003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 26001, monster_id = 22010401, pos = { x = -3688.566, y = 201.162, z = -3326.517 }, rot = { x = 0.000, y = 162.527, z = 0.000 }, level = 27, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 12 },
		{ config_id = 26004, monster_id = 21020201, pos = { x = -3693.411, y = 201.576, z = -3322.178 }, rot = { x = 0.000, y = 132.702, z = 0.000 }, level = 27, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 12 },
		{ config_id = 26005, monster_id = 21030101, pos = { x = -3688.596, y = 202.600, z = -3323.844 }, rot = { x = 0.000, y = 189.777, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 12 }
	},
	gadgets = {
		{ config_id = 26002, gadget_id = 70220013, pos = { x = -3684.486, y = 202.256, z = -3322.114 }, rot = { x = 0.000, y = 337.369, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 26006, gadget_id = 70310006, pos = { x = -3691.055, y = 201.399, z = -3324.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 26007, gadget_id = 70220013, pos = { x = -3682.446, y = 201.926, z = -3323.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 26008, gadget_id = 70220013, pos = { x = -3697.274, y = 201.180, z = -3324.052 }, rot = { x = 0.000, y = 322.037, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 26009, gadget_id = 70220014, pos = { x = -3684.017, y = 201.879, z = -3323.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 26010, gadget_id = 70220014, pos = { x = -3695.381, y = 201.252, z = -3324.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 26011, gadget_id = 70300099, pos = { x = -3688.483, y = 201.102, z = -3328.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 12 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_26003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_26003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_26003(context, evt)
	-- 将configid为 26002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 26002, GadgetState.Default) then
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