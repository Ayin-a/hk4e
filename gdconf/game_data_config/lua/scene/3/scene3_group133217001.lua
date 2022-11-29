-- 基础信息
local base_info = {
	group_id = 133217001
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
	{ config_id = 1003, gadget_id = 70211132, pos = { x = -4680.954, y = 556.303, z = -4163.870 }, rot = { x = 11.853, y = 161.900, z = 8.913 }, level = 26, drop_tag = "解谜超级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 1005, gadget_id = 70211122, pos = { x = -4676.356, y = 554.531, z = -4167.488 }, rot = { x = 347.542, y = 253.477, z = 10.852 }, level = 26, chest_drop_id = 2003100, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001006, name = "QUEST_START_1006", event = EventType.EVENT_QUEST_START, source = "7215804", condition = "", action = "action_EVENT_QUEST_START_1006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 1001, gadget_id = 70211101, pos = { x = -4585.578, y = 405.550, z = -4154.842 }, rot = { x = 3.897, y = 149.694, z = 0.840 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
		{ config_id = 1002, gadget_id = 70211112, pos = { x = -4795.341, y = 512.663, z = -4262.148 }, rot = { x = 0.000, y = 62.408, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
	},
	regions = {
		{ config_id = 1004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -4790.516, y = 512.392, z = -4260.983 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1001004, name = "ENTER_REGION_1004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1004", action = "action_EVENT_ENTER_REGION_1004", trigger_count = 0 }
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
		gadgets = { 1003, 1005 },
		regions = { },
		triggers = { "QUEST_START_1006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_1006(context, evt)
	-- 将configid为 1003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 1005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end