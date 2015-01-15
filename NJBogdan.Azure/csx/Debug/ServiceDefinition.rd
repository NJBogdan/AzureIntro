<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="NJBogdan.Azure" generation="1" functional="0" release="0" Id="c3f8cd6d-dd06-4d34-8c20-14eda2b6e597" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="NJBogdan.AzureGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="NJBogdan:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/NJBogdan.Azure/NJBogdan.AzureGroup/LB:NJBogdan:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="NJBogdanInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/NJBogdan.Azure/NJBogdan.AzureGroup/MapNJBogdanInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:NJBogdan:Endpoint1">
          <toPorts>
            <inPortMoniker name="/NJBogdan.Azure/NJBogdan.AzureGroup/NJBogdan/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapNJBogdanInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/NJBogdan.Azure/NJBogdan.AzureGroup/NJBogdanInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="NJBogdan" generation="1" functional="0" release="0" software="c:\Users\njbogdan\documents\visual studio 2012\Projects\NJBogdan\NJBogdan.Azure\csx\Debug\roles\NJBogdan" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;NJBogdan&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;NJBogdan&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/NJBogdan.Azure/NJBogdan.AzureGroup/NJBogdanInstances" />
            <sCSPolicyUpdateDomainMoniker name="/NJBogdan.Azure/NJBogdan.AzureGroup/NJBogdanUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/NJBogdan.Azure/NJBogdan.AzureGroup/NJBogdanFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="NJBogdanUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="NJBogdanFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="NJBogdanInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="a2a80cfc-9026-4a17-be13-3dfb9a1ddc86" ref="Microsoft.RedDog.Contract\ServiceContract\NJBogdan.AzureContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="b1303952-df6f-443c-83e9-b09dbdf87ddd" ref="Microsoft.RedDog.Contract\Interface\NJBogdan:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/NJBogdan.Azure/NJBogdan.AzureGroup/NJBogdan:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>