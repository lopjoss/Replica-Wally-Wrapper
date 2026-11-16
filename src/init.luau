local signal = require(script.ReplicaShared.Signal)

local function serverReplicaType()
    local replicaServer = require(script.ReplicaServer)

    return nil :: replicaServer.Replica
end

local function clientReplicaType()
    local replicaClient = require(script.ReplicaClient)

    return nil :: replicaClient.Replica
end

export type replicaServer = typeof(serverReplicaType())
export type replicaClient = typeof(clientReplicaType())
export type replicaConnection = signal.Connection

return {
    server = function()
        local server = require(script.ReplicaServer)

        return server
    end,
    client = function()
        local client = require(script.ReplicaClient)

        return client
    end,
}