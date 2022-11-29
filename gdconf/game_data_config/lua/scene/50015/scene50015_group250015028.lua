-- 基础信息
local base_info = {
	group_id = 250015028
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 28001, monster_id = 20011201, pos = { x = 1556.284, y = 288.568, z = 690.275 }, rot = { x = 4.710, y = 260.594, z = 345.062 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 28002, monster_id = 20011201, pos = { x = 1552.675, y = 287.186, z = 693.356 }, rot = { x = 350.807, y = 208.187, z = 347.284 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 28003, monster_id = 20011201, pos = { x = 1551.326, y = 288.715, z = 687.593 }, rot = { x = 13.744, y = 304.329, z = 352.449 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 28011, monster_id = 20011401, pos = { x = 1498.540, y = 252.230, z = 731.514 }, rot = { x = 353.663, y = 241.238, z = 7.691 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 28013, monster_id = 20011401, pos = { x = 1496.216, y = 252.432, z = 730.969 }, rot = { x = 350.059, y = 294.765, z = 359.518 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 28014, monster_id = 20011401, pos = { x = 1497.615, y = 252.625, z = 733.873 }, rot = { x = 1.092, y = 195.741, z = 9.893 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 28015, monster_id = 20011401, pos = { x = 1495.250, y = 252.637, z = 733.360 }, rot = { x = 1.092, y = 195.741, z = 9.893 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 28016, monster_id = 20010501, pos = { x = 1538.951, y = 272.469, z = 719.177 }, rot = { x = 0.000, y = 261.216, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 28017, monster_id = 20010501, pos = { x = 1536.671, y = 273.615, z = 713.400 }, rot = { x = 2.061, y = 240.765, z = 346.216 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 28018, monster_id = 20010501, pos = { x = 1535.138, y = 272.166, z = 718.795 }, rot = { x = 2.061, y = 240.765, z = 346.216 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 28019, monster_id = 20010501, pos = { x = 1540.605, y = 273.995, z = 714.248 }, rot = { x = 2.061, y = 240.765, z = 346.216 }, level = 1, drop_id = 1000100, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 28004, gadget_id = 70360005, pos = { x = 1556.811, y = 290.465, z = 684.395 }, rot = { x = 15.282, y = 0.628, z = 4.676 }, level = 1 },
	{ config_id = 28005, gadget_id = 70360025, pos = { x = 1471.378, y = 261.794, z = 756.719 }, rot = { x = 12.690, y = 0.118, z = 1.058 }, level = 1 },
	{ config_id = 28006, gadget_id = 70900201, pos = { x = 1471.420, y = 261.798, z = 756.704 }, rot = { x = 12.690, y = 0.118, z = 1.058 }, level = 1 },
	{ config_id = 28012, gadget_id = 70300057, pos = { x = 1496.832, y = 252.409, z = 732.157 }, rot = { x = 356.469, y = 1.390, z = 350.689 }, level = 1 },
	{ config_id = 28020, gadget_id = 70300057, pos = { x = 1537.599, y = 272.958, z = 716.744 }, rot = { x = 356.469, y = 1.390, z = 350.689 }, level = 1 },
	{ config_id = 28021, gadget_id = 70220005, pos = { x = 1496.832, y = 252.409, z = 732.157 }, rot = { x = 356.469, y = 1.390, z = 350.689 }, level = 1 },
	{ config_id = 28022, gadget_id = 70300057, pos = { x = 1552.782, y = 287.972, z = 690.522 }, rot = { x = 356.469, y = 1.390, z = 350.689 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 28007, shape = RegionShape.SPHERE, radius = 3, pos = { x = 1471.420, y = 261.798, z = 756.704 } }
}

-- 触发器
triggers = {
	{ config_id = 1028007, name = "ENTER_REGION_28007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_28007", action = "", tag = "666", forbid_guest = false },
	{ config_id = 1028008, name = "CHALLENGE_SUCCESS_28008", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_28008", trigger_count = 0 },
	{ config_id = 1028009, name = "CHALLENGE_FAIL_28009", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_28009", trigger_count = 0 },
	{ config_id = 1028010, name = "GADGET_STATE_CHANGE_28010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_28010", action = "action_EVENT_GADGET_STATE_CHANGE_28010", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 28004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_28010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 28001, 28002, 28003, 28011, 28013, 28014, 28015, 28016, 28017, 28018, 28019 },
		gadgets = { 28005, 28006, 28012, 28020, 28021, 28022 },
		regions = { 28007 },
		triggers = { "ENTER_REGION_28007", "CHALLENGE_SUCCESS_28008", "CHALLENGE_FAIL_28009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_28007(context, evt)
	if evt.param1 ~= 28007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_28008(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250015028, 2)
	
	-- 将configid为 28004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_28009(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250015028, 2)
	
	-- 将configid为 28004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_28010(context, evt)
	if 28004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_28010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015028, 2)
	
	-- 创建编号为888（该挑战的识别id),挑战内容为189的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 189, 15, 4, 666, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end