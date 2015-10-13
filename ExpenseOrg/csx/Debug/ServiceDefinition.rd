<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="ExpenseOrg" generation="1" functional="0" release="0" Id="ac522016-751d-4a22-a623-e6f7cf92e1b7" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="ExpenseOrgGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="ExpenseOrg.Service:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/ExpenseOrg/ExpenseOrgGroup/LB:ExpenseOrg.Service:Endpoint1" />
          </inToChannel>
        </inPort>
        <inPort name="ExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp">
          <inToChannel>
            <lBChannelMoniker name="/ExpenseOrg/ExpenseOrgGroup/LB:ExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="Certificate|ExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" defaultValue="">
          <maps>
            <mapMoniker name="/ExpenseOrg/ExpenseOrgGroup/MapCertificate|ExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </maps>
        </aCS>
        <aCS name="ExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/ExpenseOrg/ExpenseOrgGroup/MapExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="ExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="">
          <maps>
            <mapMoniker name="/ExpenseOrg/ExpenseOrgGroup/MapExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </maps>
        </aCS>
        <aCS name="ExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="">
          <maps>
            <mapMoniker name="/ExpenseOrg/ExpenseOrgGroup/MapExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </maps>
        </aCS>
        <aCS name="ExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="">
          <maps>
            <mapMoniker name="/ExpenseOrg/ExpenseOrgGroup/MapExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </maps>
        </aCS>
        <aCS name="ExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/ExpenseOrg/ExpenseOrgGroup/MapExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </maps>
        </aCS>
        <aCS name="ExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/ExpenseOrg/ExpenseOrgGroup/MapExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" />
          </maps>
        </aCS>
        <aCS name="ExpenseOrg.ServiceInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/ExpenseOrg/ExpenseOrgGroup/MapExpenseOrg.ServiceInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:ExpenseOrg.Service:Endpoint1">
          <toPorts>
            <inPortMoniker name="/ExpenseOrg/ExpenseOrgGroup/ExpenseOrg.Service/Endpoint1" />
          </toPorts>
        </lBChannel>
        <lBChannel name="LB:ExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput">
          <toPorts>
            <inPortMoniker name="/ExpenseOrg/ExpenseOrgGroup/ExpenseOrg.Service/Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </toPorts>
        </lBChannel>
        <sFSwitchChannel name="SW:ExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp">
          <toPorts>
            <inPortMoniker name="/ExpenseOrg/ExpenseOrgGroup/ExpenseOrg.Service/Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
          </toPorts>
        </sFSwitchChannel>
      </channels>
      <maps>
        <map name="MapCertificate|ExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" kind="Identity">
          <certificate>
            <certificateMoniker name="/ExpenseOrg/ExpenseOrgGroup/ExpenseOrg.Service/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </certificate>
        </map>
        <map name="MapExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/ExpenseOrg/ExpenseOrgGroup/ExpenseOrg.Service/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" kind="Identity">
          <setting>
            <aCSMoniker name="/ExpenseOrg/ExpenseOrgGroup/ExpenseOrg.Service/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </setting>
        </map>
        <map name="MapExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" kind="Identity">
          <setting>
            <aCSMoniker name="/ExpenseOrg/ExpenseOrgGroup/ExpenseOrg.Service/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </setting>
        </map>
        <map name="MapExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" kind="Identity">
          <setting>
            <aCSMoniker name="/ExpenseOrg/ExpenseOrgGroup/ExpenseOrg.Service/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </setting>
        </map>
        <map name="MapExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/ExpenseOrg/ExpenseOrgGroup/ExpenseOrg.Service/Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </setting>
        </map>
        <map name="MapExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/ExpenseOrg/ExpenseOrgGroup/ExpenseOrg.Service/Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" />
          </setting>
        </map>
        <map name="MapExpenseOrg.ServiceInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/ExpenseOrg/ExpenseOrgGroup/ExpenseOrg.ServiceInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="ExpenseOrg.Service" generation="1" functional="0" release="0" software="c:\users\aalazzawi\documents\visual studio 2015\Projects\ExpenseOrg\ExpenseOrg\csx\Debug\roles\ExpenseOrg.Service" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp" portRanges="3389" />
              <outPort name="ExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/ExpenseOrg/ExpenseOrgGroup/SW:ExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;ExpenseOrg.Service&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;ExpenseOrg.Service&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
            <storedcertificates>
              <storedCertificate name="Stored0Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" certificateStore="My" certificateLocation="System">
                <certificate>
                  <certificateMoniker name="/ExpenseOrg/ExpenseOrgGroup/ExpenseOrg.Service/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
                </certificate>
              </storedCertificate>
            </storedcertificates>
            <certificates>
              <certificate name="Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
            </certificates>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/ExpenseOrg/ExpenseOrgGroup/ExpenseOrg.ServiceInstances" />
            <sCSPolicyUpdateDomainMoniker name="/ExpenseOrg/ExpenseOrgGroup/ExpenseOrg.ServiceUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/ExpenseOrg/ExpenseOrgGroup/ExpenseOrg.ServiceFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="ExpenseOrg.ServiceUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="ExpenseOrg.ServiceFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="ExpenseOrg.ServiceInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="aa978040-a60e-449e-b687-350d4df6f81a" ref="Microsoft.RedDog.Contract\ServiceContract\ExpenseOrgContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="771cfb5a-78aa-4fa8-847b-ade1080115d2" ref="Microsoft.RedDog.Contract\Interface\ExpenseOrg.Service:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/ExpenseOrg/ExpenseOrgGroup/ExpenseOrg.Service:Endpoint1" />
          </inPort>
        </interfaceReference>
        <interfaceReference Id="3f6c83b5-a27b-4617-85fa-e586e0cac59a" ref="Microsoft.RedDog.Contract\Interface\ExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/ExpenseOrg/ExpenseOrgGroup/ExpenseOrg.Service:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>