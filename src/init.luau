local function serverReplicaType()
    local ReplicaServer = require(script.ReplicaServer)

    return nil :: ReplicaServer.Replica
end

local function clientReplicaType()
    local ReplicaClient = require(script.ReplicaClient)

    return nil :: ReplicaClient.Replica
end

export type replicaServer = typeof(serverReplicaType())
export type replicaClient = typeof(clientReplicaType())

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