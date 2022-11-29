--ServerUploadTool Save to [/root/env/data/lua/common/V2_2]
--电桩解密玩法Require
--[[
endLinkMap = 
{
	{inPort = {25013},outPort = {25012}},
	{inPort = {25011},outPort = {25004}},
	{inPort = {25019},outPort = {25018}},
	{inPort = {25016},outPort = {25012}},
	{inPort = {25017},outPort = {25012}},
}


]]

function SLC_SyncState(context, param1)
	ScriptLib.PrintContextLog(context, "@@ Circuit : Receive_SLC")

	local call_config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })
	ScriptLib.SetGroupTempValue(context, "InPortState"..call_config_id, param1, {})
	ScriptLib.PrintContextLog(context, "@@ Circuit : CONFIG_ID_"..call_config_id)
	ScriptLib.PrintContextLog(context, "@@ Circuit : CONFIG_STATE_"..param1)
	local index = 0
	for _index, map in pairs(endLinkMap) do
		for k,cfg_id in pairs(map.inPort) do
			if call_config_id == cfg_id then
				index = _index
			end
		end
	end
	if index == 0 then
		return -1
	end
	local connectCount = 0
	for k,port_cfg in pairs(endLinkMap[index].inPort) do
		local portState = ScriptLib.GetGroupTempValue(context, "InPortState"..port_cfg, {})
		connectCount = connectCount+portState
	end
	ScriptLib.PrintContextLog(context, "@@ Circuit : INDEX_"..index)
	if connectCount == 0 then
		sync_state = 0
	end
	if connectCount == 1 then
		sync_state = 201
	end
	if connectCount == 2 then
		sync_state = 202
	end
	if connectCount == 3 then
		sync_state = 203
	end
	local out_port = endLinkMap[index].outPort[1]
	ScriptLib.PrintContextLog(context, "@@ Circuit : OUT_PORT_"..out_port)
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, out_port, sync_state)
	return 0
end
