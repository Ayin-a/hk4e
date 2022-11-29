-- 基础信息
local base_info = {
	group_id = 166001364
}

-- Trigger变量
local defs = {
	gadget_node01 = 364002,
	gadget_node02 = 364003,
	gadget_node03 = 364004,
	gadget_node04 = 364005,
	gadget_node05 = 364010,
	gadget_node06 = 364011,
	gadget_node07 = 0,
	gadget_node08 = 0,
	gadget_hint01 = 364006,
	gadget_hint02 = 364007,
	gadget_hint03 = 364008,
	gadget_hint04 = 364009,
	gadget_hint05 = 364012,
	gadget_hint06 = 364013,
	gadget_hint07 = 0,
	gadget_hint08 = 0,
	gadget_startpoint = 364001
}

-- DEFS_MISCS
local nodeTable={
	[1]=defs.gadget_node01,
	[2]=defs.gadget_node02,
	[3]=defs.gadget_node03,
	[4]=defs.gadget_node04,
  [5]=defs.gadget_node05,
  [6]=defs.gadget_node06,
  [7]=defs.gadget_node07,
  [8]=defs.gadget_node08,
}

local guideEffTable={
	[1]=defs.gadget_hint01,
	[2]=defs.gadget_hint02,
	[3]=defs.gadget_hint03,
	[4]=defs.gadget_hint04,
  [5]=defs.gadget_hint05,
  [6]=defs.gadget_hint06,
  [7]=defs.gadget_hint07,
  [8]=defs.gadget_hint08,
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
	{ config_id = 364001, gadget_id = 70290318, pos = { x = 1066.995, y = 853.238, z = 576.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 364002, gadget_id = 70290319, pos = { x = 1060.576, y = 854.845, z = 568.336 }, rot = { x = 0.000, y = 280.877, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 364003, gadget_id = 70290319, pos = { x = 1051.933, y = 851.944, z = 566.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 364004, gadget_id = 70290319, pos = { x = 1048.291, y = 851.948, z = 569.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 364005, gadget_id = 70290319, pos = { x = 1047.511, y = 855.586, z = 572.027 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 364006, gadget_id = 70290320, pos = { x = 1066.856, y = 853.308, z = 574.127 }, rot = { x = 0.000, y = 222.104, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 364007, gadget_id = 70290320, pos = { x = 1060.016, y = 854.841, z = 568.078 }, rot = { x = 0.000, y = 262.033, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 364008, gadget_id = 70290320, pos = { x = 1051.257, y = 851.628, z = 566.734 }, rot = { x = 357.211, y = 309.560, z = 359.771 }, level = 1, area_id = 300 },
	{ config_id = 364009, gadget_id = 70290320, pos = { x = 1048.267, y = 851.912, z = 569.240 }, rot = { x = 322.233, y = 343.538, z = 75.767 }, level = 1, area_id = 300 },
	{ config_id = 364010, gadget_id = 70290319, pos = { x = 1051.098, y = 851.885, z = 574.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 364011, gadget_id = 70290319, pos = { x = 1051.287, y = 853.438, z = 578.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 364012, gadget_id = 70290320, pos = { x = 1047.868, y = 855.562, z = 572.141 }, rot = { x = 35.199, y = 53.327, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 364013, gadget_id = 70290320, pos = { x = 1051.090, y = 851.877, z = 574.519 }, rot = { x = 340.529, y = 359.261, z = 160.206 }, level = 1, area_id = 300 },
	{ config_id = 364014, gadget_id = 70211111, pos = { x = 1067.687, y = 853.365, z = 570.844 }, rot = { x = 0.000, y = 338.038, z = 0.000 }, level = 26, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
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
		gadgets = { 364001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 364001, 364002, 364003, 364004, 364005, 364010, 364011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 364014 },
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

require "V2_6/BW_LightRoadTrack"