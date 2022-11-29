-- 基础信息
local base_info = {
	group_id = 220134062
}

-- DEFS_MISCS
local        defs = {

is_movable = 1,
reset_onload=1,
			--连线形态
			patterns = 
			{
				
					--形态1
					[1] = 
					{
						[62001] = {connect =62002 , point_array = 89, point_id = {1}} ,
					[62002] = {connect =62003 , point_array = 90, point_id = {1}} ,
					[62003] = {connect =62004 , point_array = 91, point_id = {1}} ,
					[62004] = {connect =62005 , point_array = 92, point_id = {1}} ,
					[62005] = {connect =62006 , point_array = 93, point_id = {1}} ,
					[62006] = {connect =62008 , point_array = 94, point_id = {1}} ,
					[62008] = {connect =62009 , point_array = 95, point_id = {1}} ,
					[62009] = {connect =62010 , point_array = 96, point_id = {1}} ,
					[62010] = {connect =62011 , point_array = 97, point_id = {1}} ,
					[62011] = {connect =62012 , point_array = 98, point_id = {1}} ,
					[62012] = {connect =62013 , point_array = 99, point_id = {1}} ,
					[62013] = {connect =62014 , point_array = 100, point_id = {1}} ,
					[62014] = {connect =62015, point_array = 101, point_id = {1}} ,
					[62015] = {connect =0 , point_array = 102, point_id = {1}} ,
					},
					--parta1
					[2] = 
					{
					[62001] = {connect =62002 , point_array = 89, point_id = {4,5,6,7,8,9,10,11,12,2}} ,
					[62002] = {connect =62003 , point_array = 90, point_id = {4,5,6,7,8,9,10,11,12,2}} ,
					[62003] = {connect =62004 , point_array = 0, point_id = {0}} ,
					[62004] = {connect =62001 , point_array = 0, point_id = {0}} ,
					[62005] = {connect =62006 , point_array = 0, point_id = {0}} ,
					[62006] = {connect =62004 , point_array = 0, point_id = {0}} ,
					[62008] = {connect =62006 , point_array = 0, point_id = {0}} ,
					[62009] = {connect =62008 , point_array = 0, point_id = {0}} ,
					[62010] = {connect =62009 , point_array = 0, point_id = {0}} ,
					[62011] = {connect =62008 , point_array = 0, point_id = {0}} ,
					[62012] = {connect =62010 , point_array = 0, point_id = {0}} ,
					[62013] = {connect =62005 , point_array = 0, point_id = {0}} ,
					[62014] = {connect =62013, point_array = 0, point_id = {0}} ,
					[62015] = {connect =62010 , point_array = 102, point_id = {4,5,6,7,8,9,10,11,12,2}} ,
					},

										--parta2
					[3] = 
					{
						[62001] = {connect =62002 , point_array = 89, point_id = {4,5,6,7,8,9,10,11,12,3}} ,
						[62002] = {connect =62003 , point_array = 90, point_id = {4,5,6,7,8,9,10,11,12,3}} ,
						[62003] = {connect =62004 , point_array = 0, point_id = {0}} ,
						[62004] = {connect =62001 , point_array = 0, point_id = {0}} ,
						[62005] = {connect =62006 , point_array = 0, point_id = {0}} ,
						[62006] = {connect =62004 , point_array = 0, point_id = {0}} ,
						[62008] = {connect =62006 , point_array = 0, point_id = {0}} ,
						[62009] = {connect =62008 , point_array = 0, point_id = {0}} ,
						[62010] = {connect =62009 , point_array = 0, point_id = {0}} ,
						[62011] = {connect =62008 , point_array = 0, point_id = {0}} ,
						[62012] = {connect =62010 , point_array = 0, point_id = {0}} ,
						[62013] = {connect =62005 , point_array = 0, point_id = {0}} ,
						[62014] = {connect =62013, point_array = 0, point_id = {0}} ,
						[62015] = {connect =62010 , point_array = 102, point_id = {4,5,6,7,8,9,10,11,12,3}} ,
					},
							--parta3

					[4] = 
					{
						[62001] = {connect =62002 , point_array = 89, point_id = {4,5,6,7,8,9,10,11,12,1}} ,
						[62002] = {connect =62003 , point_array = 90, point_id = {4,5,6,7,8,9,10,11,12,1}} ,
						[62003] = {connect =62004 , point_array = 0, point_id = {0}} ,
						[62004] = {connect =62001 , point_array =0, point_id = {0}} ,
						[62005] = {connect =62006 , point_array = 0, point_id = {0}} ,
						[62006] = {connect =62004 , point_array = 0, point_id = {0}} ,
						[62008] = {connect =62006 , point_array = 0, point_id = {0}} ,
						[62009] = {connect =62008 , point_array = 0, point_id = {0}} ,
						[62010] = {connect =62009 , point_array = 0, point_id = {0}} ,
						[62011] = {connect =62008 , point_array = 0, point_id = {0}} ,
						[62012] = {connect =62010 , point_array = 0, point_id = {0}} ,
						[62013] = {connect =62005 , point_array = 0, point_id = {0}} ,
						[62014] = {connect =62013, point_array = 0, point_id = {0}} ,
						[62015] = {connect =62010 , point_array = 102, point_id = {4,5,6,7,8,9,10,11,12,1}} ,
					},


					--partb1

					[5] = 
					{
						[62001] = {connect =62002 , point_array = 0, point_id = {0}} ,
						[62002] = {connect =62003 , point_array = 0, point_id = {0}} ,
						[62003] = {connect =62004 , point_array = 0, point_id = {0}} ,
						[62004] = {connect =62001 , point_array = 0, point_id = {0}} ,
						[62005] = {connect =62006 , point_array = 0, point_id = {0}} ,
						[62006] = {connect =62004 , point_array = 94, point_id = {4,5,6,7,8,9,10,11,12,1}} ,
						[62008] = {connect =62006 , point_array = 95, point_id = {4,5,6,7,8,9,10,11,12,1}} ,
						[62009] = {connect =62008 , point_array = 96, point_id = {4,5,6,7,8,9,10,11,12,1}} ,
						[62010] = {connect =62009 , point_array = 97, point_id = {4,5,6,7,8,9,10,11,12,1}} ,
						[62011] = {connect =62008 , point_array = 0, point_id = {0}} ,
						[62012] = {connect =62010 , point_array = 0, point_id = {0}} ,
						[62013] = {connect =62005 , point_array = 0, point_id = {0}} ,
						[62014] = {connect =62013, point_array = 0, point_id = {0}} ,
						[62015] = {connect =62010 , point_array = 0, point_id = {0}} ,
					},
					--partb2
					[6] = 
					{
						[62001] = {connect =62002 , point_array = 0, point_id = {0}} ,
						[62002] = {connect =62003 , point_array = 0, point_id = {0}} ,
						[62003] = {connect =62004 , point_array = 0, point_id = {0}} ,
						[62004] = {connect =62001 , point_array = 0, point_id = {0}} ,
						[62005] = {connect =62006 , point_array = 0, point_id = {0}} ,
						[62006] = {connect =62004 , point_array = 94, point_id = {4,5,6,7,8,9,10,11,12,2}} ,
						[62008] = {connect =62006 , point_array = 95, point_id = {4,5,6,7,8,9,10,11,12,2}} ,
						[62009] = {connect =62008 , point_array = 96, point_id = {4,5,6,7,8,9,10,11,12,2}} ,
						[62010] = {connect =62009 , point_array = 97, point_id = {4,5,6,7,8,9,10,11,12,2}} ,
						[62011] = {connect =62008 , point_array = 0, point_id = {0}} ,
						[62012] = {connect =62010 , point_array = 0, point_id = {0}} ,
						[62013] = {connect =62005 , point_array = 0, point_id = {0}} ,
						[62014] = {connect =62013, point_array = 0, point_id = {0}} ,
						[62015] = {connect =62010 , point_array = 0, point_id = {0}} ,
					},
					--partb3
					[7] = 
					{
						[62001] = {connect =62002 , point_array = 0, point_id = {0}} ,
						[62002] = {connect =62003 , point_array = 0, point_id = {0}} ,
						[62003] = {connect =62004 , point_array = 0, point_id = {0}} ,
						[62004] = {connect =62001 , point_array = 0, point_id = {0}} ,
						[62005] = {connect =62006 , point_array = 0, point_id = {0}} ,
						[62006] = {connect =62004 , point_array = 94, point_id = {4,5,6,7,8,9,10,11,12,3}} ,
						[62008] = {connect =62006 , point_array = 95, point_id = {4,5,6,7,8,9,10,11,12,3}} ,
						[62009] = {connect =62008 , point_array = 96, point_id = {4,5,6,7,8,9,10,11,12,3}} ,
						[62010] = {connect =62009 , point_array = 97, point_id = {4,5,6,7,8,9,10,11,12,3}} ,
						[62011] = {connect =62008 , point_array = 0, point_id = {0}} ,
						[62012] = {connect =62010 , point_array = 0, point_id = {0}} ,
						[62013] = {connect =62005 , point_array = 0, point_id = {0}} ,
						[62014] = {connect =62013, point_array = 0, point_id = {0}} ,
						[62015] = {connect =62010 , point_array = 0, point_id = {0}} ,
					},
										--partc1
					[8] = 
					{
						[62001] = {connect =62002 , point_array = 0, point_id = {0}} ,
						[62002] = {connect =62003 , point_array = 0, point_id = {0}} ,
						[62003] = {connect =62004 , point_array = 91, point_id = {4,5,6,7,8,9,10,11,12,3}} ,
						[62004] = {connect =62001 , point_array = 92, point_id = {4,5,6,7,8,9,10,11,12,3}} ,
						[62005] = {connect =62006 , point_array = 0, point_id = {0}} ,
						[62006] = {connect =62004 , point_array = 0, point_id = {0}} ,
						[62008] = {connect =62006 , point_array = 0, point_id = {0}} ,
						[62009] = {connect =62008 , point_array = 0, point_id = {0}} ,
						[62010] = {connect =62009 , point_array = 0, point_id = {0}} ,
						[62011] = {connect =62008 , point_array = 98, point_id = {4,5,6,7,8,9,10,11,12,3}} ,
						[62012] = {connect =62010 , point_array = 99, point_id = {4,5,6,7,8,9,10,11,12,3}} ,
						[62013] = {connect =62005 , point_array = 0, point_id = {0}} ,
						[62014] = {connect =62013, point_array = 0, point_id = {0}} ,
						[62015] = {connect =62010 , point_array = 0, point_id = {0}} ,
					},
						--partc2
					[9] = 
					{
						[62001] = {connect =62002 , point_array = 0, point_id = {0}} ,
						[62002] = {connect =62003 , point_array = 0, point_id = {0}} ,
						[62003] = {connect =62004 , point_array = 91, point_id = {4,5,6,7,8,9,10,11,12,1}} ,
						[62004] = {connect =62001 , point_array = 92, point_id = {4,5,6,7,8,9,10,11,12,1}} ,
						[62005] = {connect =62006 , point_array = 0, point_id = {0}} ,
						[62006] = {connect =62004 , point_array = 0, point_id = {0}} ,
						[62008] = {connect =62006 , point_array = 0, point_id = {0}} ,
						[62009] = {connect =62008 , point_array = 0, point_id = {0}} ,
						[62010] = {connect =62009 , point_array = 0, point_id = {0}} ,
						[62011] = {connect =62008 , point_array = 98, point_id = {4,5,6,7,8,9,10,11,12,1}} ,
						[62012] = {connect =62010 , point_array = 99, point_id = {4,5,6,7,8,9,10,11,12,1}} ,
						[62013] = {connect =62005 , point_array = 0, point_id = {0}} ,
						[62014] = {connect =62013, point_array = 0, point_id = {0}} ,
						[62015] = {connect =62010 , point_array = 0, point_id = {0}} ,
					},
						--partc3
					[10] = 
					{
						[62001] = {connect =62002 , point_array = 0, point_id = {0}} ,
						[62002] = {connect =62003 , point_array = 0, point_id = {0}} ,
						[62003] = {connect =62004 , point_array = 91, point_id = {4,5,6,7,8,9,10,11,12,2}} ,
						[62004] = {connect =62001 , point_array = 92, point_id = {4,5,6,7,8,9,10,11,12,2}} ,
						[62005] = {connect =62006 , point_array = 0, point_id = {0}} ,
						[62006] = {connect =62004 , point_array = 0, point_id = {0}} ,
						[62008] = {connect =62006 , point_array = 0, point_id = {0}} ,
						[62009] = {connect =62008 , point_array = 0, point_id = {0}} ,
						[62010] = {connect =62009 , point_array = 0, point_id = {0}} ,
						[62011] = {connect =62008 , point_array = 98, point_id = {4,5,6,7,8,9,10,11,12,2}} ,
						[62012] = {connect =62010 , point_array = 99, point_id = {4,5,6,7,8,9,10,11,12,2}} ,
						[62013] = {connect =62005 , point_array = 0, point_id = {0}} ,
						[62014] = {connect =62013, point_array = 0, point_id = {0}} ,
						[62015] = {connect =62010 , point_array = 0, point_id = {0}} ,
					},
						--partd1
					[11] = 
					{
						[62001] = {connect =62002 , point_array = 0, point_id = {0}} ,
						[62002] = {connect =62003 , point_array = 0, point_id = {0}} ,
						[62003] = {connect =62004 , point_array = 0, point_id = {0}} ,
						[62004] = {connect =62001 , point_array = 0, point_id = {0}} ,
						[62005] = {connect =62006 , point_array = 93, point_id = {4,5,6,7,8,9,10,11,12,2}} ,
						[62006] = {connect =62004 , point_array = 0, point_id = {0}} ,
						[62008] = {connect =62006 , point_array = 0, point_id = {0}} ,
						[62009] = {connect =62008 , point_array = 0, point_id = {0}} ,
						[62010] = {connect =62009 , point_array = 0, point_id = {0}} ,
						[62011] = {connect =62008 , point_array = 0, point_id = {0}} ,
						[62012] = {connect =62010 , point_array = 0, point_id = {0}} ,
						[62013] = {connect =62005 , point_array = 100, point_id = {4,5,6,7,8,9,10,11,12,2}} ,
						[62014] = {connect =62013, point_array = 101, point_id = {4,5,6,7,8,9,10,11,12,2}} ,
						[62015] = {connect =62010 , point_array = 0, point_id = {0}} ,
					},

					--partd2
					[12] = 
					{
						[62001] = {connect =62002 , point_array = 0, point_id = {0}} ,
						[62002] = {connect =62003 , point_array = 0, point_id = {0}} ,
						[62003] = {connect =62004 , point_array = 0, point_id = {0}} ,
						[62004] = {connect =62001 , point_array = 0, point_id = {0}} ,
						[62005] = {connect =62006 , point_array = 93, point_id = {4,5,6,7,8,9,10,11,12,3}} ,
						[62006] = {connect =62004 , point_array = 0, point_id = {0}} ,
						[62008] = {connect =62006 , point_array = 0, point_id = {0}} ,
						[62009] = {connect =62008 , point_array = 0, point_id = {0}} ,
						[62010] = {connect =62009 , point_array = 0, point_id = {0}} ,
						[62011] = {connect =62008 , point_array = 0, point_id = {0}} ,
						[62012] = {connect =62010 , point_array = 0, point_id = {0}} ,
						[62013] = {connect =62005 , point_array = 100, point_id = {4,5,6,7,8,9,10,11,12,3}} ,
						[62014] = {connect =62013, point_array = 101, point_id = {4,5,6,7,8,9,10,11,12,3}} ,
						[62015] = {connect =62010 , point_array = 0, point_id = {0}} ,
					},
--partd3
					[13] = 
					{
						[62001] = {connect =62002 , point_array = 0, point_id = {0}} ,
						[62002] = {connect =62003 , point_array = 0, point_id = {0}} ,
						[62003] = {connect =62004 , point_array = 0, point_id = {0}} ,
						[62004] = {connect =62001 , point_array = 0, point_id = {0}} ,
						[62005] = {connect =62006 , point_array = 93, point_id = {4,5,6,7,8,9,10,11,12,1}} ,
						[62006] = {connect =62004 , point_array = 0, point_id = {0}} ,
						[62008] = {connect =62006 , point_array = 0, point_id = {0}} ,
						[62009] = {connect =62008 , point_array = 0, point_id = {0}} ,
						[62010] = {connect =62009 , point_array = 0, point_id = {0}} ,
						[62011] = {connect =62008 , point_array = 0, point_id = {0}} ,
						[62012] = {connect =62010 , point_array = 0, point_id = {0}} ,
						[62013] = {connect =62005 , point_array = 100, point_id = {4,5,6,7,8,9,10,11,12,1}} ,
						[62014] = {connect =62013, point_array = 101, point_id = {4,5,6,7,8,9,10,11,12,1}} ,
						[62015] = {connect =62010 , point_array = 0, point_id = {0}} ,
					},
				}}

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
	-- 上
	[62016] = { config_id = 62016, gadget_id = 70310436, pos = { x = 140.805, y = 649.367, z = -1844.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	-- 下
	[62017] = { config_id = 62017, gadget_id = 70310436, pos = { x = 146.246, y = 649.367, z = -1840.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	-- 右
	[62018] = { config_id = 62018, gadget_id = 70310436, pos = { x = 141.316, y = 649.367, z = -1839.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	-- 左
	[62019] = { config_id = 62019, gadget_id = 70310436, pos = { x = 145.450, y = 649.367, z = -1845.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[62036] = { config_id = 62036, gadget_id = 70211122, pos = { x = 162.357, y = 649.365, z = -1831.816 }, rot = { x = 0.000, y = 237.728, z = 0.000 }, level = 16, drop_tag = "解谜高级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- a1
	{ config_id = 1062007, name = "GADGET_STATE_CHANGE_62007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_62007", action = "action_EVENT_GADGET_STATE_CHANGE_62007", trigger_count = 0 },
	-- a2
	{ config_id = 1062020, name = "GADGET_STATE_CHANGE_62020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_62020", action = "action_EVENT_GADGET_STATE_CHANGE_62020", trigger_count = 0 },
	-- a3
	{ config_id = 1062021, name = "GADGET_STATE_CHANGE_62021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_62021", action = "action_EVENT_GADGET_STATE_CHANGE_62021", trigger_count = 0 },
	-- b1
	{ config_id = 1062022, name = "GADGET_STATE_CHANGE_62022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_62022", action = "action_EVENT_GADGET_STATE_CHANGE_62022", trigger_count = 0 },
	-- b2
	{ config_id = 1062023, name = "GADGET_STATE_CHANGE_62023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_62023", action = "action_EVENT_GADGET_STATE_CHANGE_62023", trigger_count = 0 },
	-- b3
	{ config_id = 1062024, name = "GADGET_STATE_CHANGE_62024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_62024", action = "action_EVENT_GADGET_STATE_CHANGE_62024", trigger_count = 0 },
	-- c1
	{ config_id = 1062025, name = "GADGET_STATE_CHANGE_62025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_62025", action = "action_EVENT_GADGET_STATE_CHANGE_62025", trigger_count = 0 },
	-- c2
	{ config_id = 1062026, name = "GADGET_STATE_CHANGE_62026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_62026", action = "action_EVENT_GADGET_STATE_CHANGE_62026", trigger_count = 0 },
	-- c3
	{ config_id = 1062027, name = "GADGET_STATE_CHANGE_62027", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_62027", action = "action_EVENT_GADGET_STATE_CHANGE_62027", trigger_count = 0 },
	-- d1
	{ config_id = 1062028, name = "GADGET_STATE_CHANGE_62028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_62028", action = "action_EVENT_GADGET_STATE_CHANGE_62028", trigger_count = 0 },
	-- d2
	{ config_id = 1062029, name = "GADGET_STATE_CHANGE_62029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_62029", action = "action_EVENT_GADGET_STATE_CHANGE_62029", trigger_count = 0 },
	-- d3
	{ config_id = 1062030, name = "GADGET_STATE_CHANGE_62030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_62030", action = "action_EVENT_GADGET_STATE_CHANGE_62030", trigger_count = 0 },
	{ config_id = 1062031, name = "VARIABLE_CHANGE_62031", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_62031", action = "action_EVENT_VARIABLE_CHANGE_62031", trigger_count = 0 },
	{ config_id = 1062032, name = "VARIABLE_CHANGE_62032", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_62032", action = "action_EVENT_VARIABLE_CHANGE_62032", trigger_count = 0 },
	{ config_id = 1062033, name = "VARIABLE_CHANGE_62033", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_62033", action = "action_EVENT_VARIABLE_CHANGE_62033", trigger_count = 0 },
	{ config_id = 1062034, name = "VARIABLE_CHANGE_62034", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_62034", action = "action_EVENT_VARIABLE_CHANGE_62034", trigger_count = 0 },
	{ config_id = 1062035, name = "VARIABLE_CHANGE_62035", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_62035", action = "action_EVENT_VARIABLE_CHANGE_62035", trigger_count = 0 },
	{ config_id = 1062037, name = "GADGET_STATE_CHANGE_62037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_62037", action = "action_EVENT_GADGET_STATE_CHANGE_62037", trigger_count = 0 },
	{ config_id = 1062038, name = "GADGET_STATE_CHANGE_62038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_62038", action = "action_EVENT_GADGET_STATE_CHANGE_62038", trigger_count = 0 },
	{ config_id = 1062039, name = "GADGET_STATE_CHANGE_62039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_62039", action = "action_EVENT_GADGET_STATE_CHANGE_62039", trigger_count = 0 },
	{ config_id = 1062040, name = "GADGET_STATE_CHANGE_62040", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_62040", action = "action_EVENT_GADGET_STATE_CHANGE_62040", trigger_count = 0 },
	-- 打开宝箱看星星
	{ config_id = 1062041, name = "GADGET_STATE_CHANGE_62041", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_62041", action = "action_EVENT_GADGET_STATE_CHANGE_62041", trigger_count = 0 },
	-- 一次镜头
	{ config_id = 1062042, name = "VARIABLE_CHANGE_62042", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_62042", action = "action_EVENT_VARIABLE_CHANGE_62042" }
}

-- 变量
variables = {
	{ config_id = 1, name = "a", value = 1, no_refresh = true },
	{ config_id = 2, name = "b", value = 1, no_refresh = true },
	{ config_id = 3, name = "c", value = 1, no_refresh = true },
	{ config_id = 4, name = "d", value = 1, no_refresh = true },
	{ config_id = 5, name = "camera", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 62001, gadget_id = 70310231, pos = { x = 134.283, y = 681.489, z = -1866.900 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
		{ config_id = 62002, gadget_id = 70310231, pos = { x = 130.535, y = 674.975, z = -1865.613 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
		{ config_id = 62003, gadget_id = 70310231, pos = { x = 117.053, y = 660.557, z = -1854.165 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
		{ config_id = 62004, gadget_id = 70310231, pos = { x = 115.332, y = 663.360, z = -1849.191 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
		{ config_id = 62005, gadget_id = 70310231, pos = { x = 111.928, y = 661.908, z = -1844.647 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
		{ config_id = 62006, gadget_id = 70310231, pos = { x = 120.152, y = 675.648, z = -1847.889 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
		{ config_id = 62008, gadget_id = 70310231, pos = { x = 120.151, y = 672.955, z = -1849.925 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
		{ config_id = 62009, gadget_id = 70310231, pos = { x = 123.075, y = 676.412, z = -1852.157 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
		{ config_id = 62010, gadget_id = 70310231, pos = { x = 122.465, y = 673.681, z = -1853.212 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
		{ config_id = 62011, gadget_id = 70310231, pos = { x = 117.970, y = 665.931, z = -1851.622 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
		{ config_id = 62012, gadget_id = 70310231, pos = { x = 120.803, y = 668.438, z = -1854.422 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
		{ config_id = 62013, gadget_id = 70310231, pos = { x = 110.534, y = 664.926, z = -1840.054 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
		{ config_id = 62014, gadget_id = 70310231, pos = { x = 113.730, y = 669.675, z = -1841.760 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER },
		{ config_id = 62015, gadget_id = 70310231, pos = { x = 134.283, y = 681.489, z = -1866.900 }, rot = { x = 1.165, y = 328.447, z = 68.659 }, level = 1, is_use_point_array = true, vision_level = VisionLevelType.VISION_LEVEL_SUPER }
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
		gadgets = { 62016, 62017, 62018, 62019, 62036 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_62007", "GADGET_STATE_CHANGE_62020", "GADGET_STATE_CHANGE_62021", "GADGET_STATE_CHANGE_62022", "GADGET_STATE_CHANGE_62023", "GADGET_STATE_CHANGE_62024", "GADGET_STATE_CHANGE_62025", "GADGET_STATE_CHANGE_62026", "GADGET_STATE_CHANGE_62027", "GADGET_STATE_CHANGE_62028", "GADGET_STATE_CHANGE_62029", "GADGET_STATE_CHANGE_62030", "VARIABLE_CHANGE_62031", "VARIABLE_CHANGE_62032", "VARIABLE_CHANGE_62033", "VARIABLE_CHANGE_62034", "VARIABLE_CHANGE_62035", "GADGET_STATE_CHANGE_62037", "GADGET_STATE_CHANGE_62038", "GADGET_STATE_CHANGE_62039", "GADGET_STATE_CHANGE_62040", "GADGET_STATE_CHANGE_62041", "VARIABLE_CHANGE_62042" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_62007(context, evt)
	if 62019 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"a"为1
	if ScriptLib.GetGroupVariableValue(context, "a") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_62007(context, evt)
	-- 将本组内变量名为 "pattern" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "pattern", 3, 220134079) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "a" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "a", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_62020(context, evt)
	if 62019 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"a"为2
	if ScriptLib.GetGroupVariableValue(context, "a") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_62020(context, evt)
	-- 将本组内变量名为 "pattern" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "pattern", 4, 220134079) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "a" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "a", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_62021(context, evt)
	if 62019 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"a"为3
	if ScriptLib.GetGroupVariableValue(context, "a") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_62021(context, evt)
	-- 将本组内变量名为 "pattern" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "pattern", 2, 220134079) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "a" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "a", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_62022(context, evt)
	if 62016 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"b"为1
	if ScriptLib.GetGroupVariableValue(context, "b") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_62022(context, evt)
	-- 将本组内变量名为 "pattern" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "pattern", 3, 220134080) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "b" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "b", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_62023(context, evt)
	if 62016 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"b"为2
	if ScriptLib.GetGroupVariableValue(context, "b") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_62023(context, evt)
	-- 将本组内变量名为 "pattern" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "pattern", 4, 220134080) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "b" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "b", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_62024(context, evt)
	if 62016 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"b"为3
	if ScriptLib.GetGroupVariableValue(context, "b") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_62024(context, evt)
	-- 将本组内变量名为 "pattern" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "pattern", 2, 220134080) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "b" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "b", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_62025(context, evt)
	if 62017 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"c"为1
	if ScriptLib.GetGroupVariableValue(context, "c") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_62025(context, evt)
	-- 将本组内变量名为 "pattern" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "pattern", 3, 220134081) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "c" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "c", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_62026(context, evt)
	if 62017 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"c"为2
	if ScriptLib.GetGroupVariableValue(context, "c") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_62026(context, evt)
	-- 将本组内变量名为 "pattern" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "pattern", 4, 220134081) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "c" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "c", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_62027(context, evt)
	if 62017 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"c"为3
	if ScriptLib.GetGroupVariableValue(context, "c") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_62027(context, evt)
	-- 将本组内变量名为 "pattern" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "pattern", 2, 220134081) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "c" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "c", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_62028(context, evt)
	if 62018 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"d"为1
	if ScriptLib.GetGroupVariableValue(context, "d") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_62028(context, evt)
	-- 将本组内变量名为 "pattern" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "pattern", 3, 220134082) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "d" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "d", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_62029(context, evt)
	if 62018 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"d"为2
	if ScriptLib.GetGroupVariableValue(context, "d") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_62029(context, evt)
	-- 将本组内变量名为 "pattern" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "pattern", 4, 220134082) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "d" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "d", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_62030(context, evt)
	if 62018 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"d"为3
	if ScriptLib.GetGroupVariableValue(context, "d") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_62030(context, evt)
	-- 将本组内变量名为 "pattern" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "pattern", 2, 220134082) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "d" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "d", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_62031(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"a"为4
	if ScriptLib.GetGroupVariableValue(context, "a") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_62031(context, evt)
	-- 将本组内变量名为 "a" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "a", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_62032(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"b"为4
	if ScriptLib.GetGroupVariableValue(context, "b") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_62032(context, evt)
	-- 将本组内变量名为 "b" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "b", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_62033(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"c"为4
	if ScriptLib.GetGroupVariableValue(context, "c") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_62033(context, evt)
	-- 将本组内变量名为 "c" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "c", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_62034(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"d"为4
	if ScriptLib.GetGroupVariableValue(context, "d") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_62034(context, evt)
	-- 将本组内变量名为 "d" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "d", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_62035(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"a"为3
	if ScriptLib.GetGroupVariableValue(context, "a") ~= 3 then
			return false
	end
	
	-- 判断变量"b"为1
	if ScriptLib.GetGroupVariableValue(context, "b") ~= 1 then
			return false
	end
	
	-- 判断变量"c"为2
	if ScriptLib.GetGroupVariableValue(context, "c") ~= 2 then
			return false
	end
	
	-- 判断变量"d"为3
	if ScriptLib.GetGroupVariableValue(context, "d") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_62035(context, evt)
	-- 将configid为 62036 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 62036, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_62037(context, evt)
	if 62016 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_62037(context, evt)
	-- 将configid为 62016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 62016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "camera" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "camera", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_62038(context, evt)
	if 62017 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_62038(context, evt)
	-- 将configid为 62017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 62017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "camera" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "camera", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_62039(context, evt)
	if 62018 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_62039(context, evt)
	-- 将configid为 62018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 62018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "camera" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "camera", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_62040(context, evt)
	if 62019 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_62040(context, evt)
	-- 将configid为 62019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 62019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "camera" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "camera", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_62041(context, evt)
	if 62036 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_62041(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220134072, 2)
	
	-- 触发镜头注目，注目位置为坐标（106，674，-1854），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=106, y=674, z=-1854}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_62042(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"camera"为1
	if ScriptLib.GetGroupVariableValue(context, "camera") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_62042(context, evt)
	-- 触发镜头注目，注目位置为坐标（120，668，-1854），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=120, y=668, z=-1854}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

require "V2_8/ConstellationPattern"