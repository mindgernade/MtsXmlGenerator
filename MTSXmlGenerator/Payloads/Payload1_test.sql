declare
l_payload xmltype;
begin
  l_payload := xmltype('<?xml version="1.0" encoding="UTF-8"?>
  
  <iee:ConfigurationBatch xmlns:iee="http://www.itron.com/mdm/configuration/2008/04" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esi="http://esi.glueltd.com.au/2008/dvm" xmlns:com="http://www.itron.com/mdm/common/2008/04" xmlns:mts="http://www.itron.com/mts/2008/08" xmlns:ched_MarketDetail="urn:ched_MarketDetail/1.1" xmlns:ched_NMIReferenceDetail="urn:ched_NMIReferenceDetail/1.1" xsi:schemaLocation="http://www.itron.com/mdm/configuration/2008/04 C:\dev.etverdolov\SOA-SC~1\aso\mts\v1.0\Configuration.xsd">
  <iee:ConfigurationTransfers>
    <iee:ConfigurationTransfer>
      <com:CorrelationID>XLS_XML_Generation_Program_78648976452_001</com:CorrelationID>
      <iee:ConfigurationUpdate xsi:type="iee:ServicePoint">
        <iee:ServicePointID>78945612308</iee:ServicePointID>
        <iee:ServicePointVersions>
          <iee:ServicePointVersion>
            <iee:ServicePointProgramID>SPP_I_0_B_1_TEST_DIC</iee:ServicePointProgramID>
            <iee:EffectiveDates>
              <iee:EffectiveStartDate>2018-01-01T00:00:00+10:00</iee:EffectiveStartDate>
            </iee:EffectiveDates>
          </iee:ServicePointVersion>
        </iee:ServicePointVersions>
        <iee:ChannelInfos>
          <iee:ChannelInfo>
            <iee:ChannelNumber>101</iee:ChannelNumber>
            <iee:FormulaConstants>
              <iee:FormulaConstant>
                <iee:FormulaConstantID>ADL</iee:FormulaConstantID>
                <iee:Description>The average daily load of this channel</iee:Description>
                <iee:FormulaConstantVersions>
                  <iee:FormulaConstantVersion>
                    <iee:Value>10.9</iee:Value>
                    <iee:EffectiveDates>
                      <iee:EffectiveStartDate>2018-01-01T00:00:00+10:00</iee:EffectiveStartDate>
                    </iee:EffectiveDates>
                  </iee:FormulaConstantVersion>
                </iee:FormulaConstantVersions>
              </iee:FormulaConstant>
            </iee:FormulaConstants>
            <iee:ChannelLinkages>
              <iee:ChannelLinkage>
                <iee:ChannelLink>8789515:1</iee:ChannelLink>
                <iee:EffectiveDates>
                  <iee:EffectiveStartDate>2018-01-01T00:00:00+10:00</iee:EffectiveStartDate>
                </iee:EffectiveDates>
              </iee:ChannelLinkage>
            </iee:ChannelLinkages>
            <iee:UserDefinedAttributes>
              <iee:UserDefinedAttribute>
                <iee:Name>PROFILE</iee:Name>
                <iee:Value>NSLP</iee:Value>
              </iee:UserDefinedAttribute>
              <iee:UserDefinedAttribute>
                <iee:Name>NMI_SUFFIX</iee:Name>
                <iee:Value>11</iee:Value>
              </iee:UserDefinedAttribute>
              <iee:UserDefinedAttribute>
                <iee:Name>CONTROLLED_LOAD</iee:Name>
                <iee:Value>N</iee:Value>
              </iee:UserDefinedAttribute>
              <iee:UserDefinedAttribute>
                <iee:Name>TOD</iee:Name>
                <iee:Value>ALLDAY</iee:Value>
              </iee:UserDefinedAttribute>
              <iee:UserDefinedAttribute>
                <iee:Name>ENERGY_FLOW_IND</iee:Name>
                <iee:Value>+</iee:Value>
              </iee:UserDefinedAttribute>
              <iee:UserDefinedAttribute>
                <iee:Name>NTC</iee:Name>
                <iee:Value>MBSRI</iee:Value>
              </iee:UserDefinedAttribute>
              <iee:UserDefinedAttribute>
                <iee:Name>REGISTER_ID</iee:Name>
                <iee:Value>1</iee:Value>
              </iee:UserDefinedAttribute>
              <iee:UserDefinedAttribute>
                <iee:Name>DAA_INTERVAL_TYPE</iee:Name>
                <iee:Value>M</iee:Value>
              </iee:UserDefinedAttribute>
            </iee:UserDefinedAttributes>
          </iee:ChannelInfo>
        </iee:ChannelInfos>
        <iee:LinkedMeters>
          <iee:LinkedMeter>
            <iee:Meter>
              <iee:MeterID>8789515</iee:MeterID>
              <iee:MeterNumber>EQP878951</iee:MeterNumber>
              <iee:InstallDate>2018-01-01T00:00:00+10:00</iee:InstallDate>
              <iee:MeterVersions>
                <iee:MeterVersion>
                  <iee:MeterProgramID>MP_B_1_TEST_DIC</iee:MeterProgramID>
                  <iee:EndpointID>78648976452</iee:EndpointID>
                  <iee:EffectiveDates>
                    <iee:EffectiveStartDate>2018-01-01T00:00:00+10:00</iee:EffectiveStartDate>
                  </iee:EffectiveDates>
                </iee:MeterVersion>
              </iee:MeterVersions>
              <iee:UserDefinedAttributes>
                <iee:UserDefinedAttribute>
                  <iee:Name>LOCATION</iee:Name>
                  <iee:Value>Here</iee:Value>
                </iee:UserDefinedAttribute>
                <iee:UserDefinedAttribute>
                  <iee:Name>ADDITIONAL_SITE_INFO</iee:Name>
                  <iee:Value>Nope</iee:Value>
                </iee:UserDefinedAttribute>
                <iee:UserDefinedAttribute>
                  <iee:Name>PREPAID_METER</iee:Name>
                  <iee:Value>y</iee:Value>
                </iee:UserDefinedAttribute>
              </iee:UserDefinedAttributes>
            </iee:Meter>
            <iee:EffectiveDates>
              <iee:EffectiveStartDate>2018-01-01T00:00:00+10:00</iee:EffectiveStartDate>
            </iee:EffectiveDates>
          </iee:LinkedMeter>
        </iee:LinkedMeters>
        <iee:RouteID>BK0001</iee:RouteID>
        <iee:UserDefinedAttributes>
          <iee:UserDefinedAttribute>
            <iee:Name>REVENUE_CLASS</iee:Name>
            <iee:Value>R</iee:Value>
          </iee:UserDefinedAttribute>
        </iee:UserDefinedAttributes>
        <mts:StartDate>2018-01-01T00:00:00+10:00</mts:StartDate>
        <mts:State>
          <mts:StatusCode>De-energised</mts:StatusCode>
          <mts:DeenergisationMethod>Incomplete</mts:DeenergisationMethod>
          <mts:StartDate>2018-01-01</mts:StartDate>
        </mts:State>
        <mts:NMIAttributes>
          <mts:MeterInstallationTypes>
            <mts:MeterInstallationType>
              <mts:Code>BASIC</mts:Code>
              <mts:StartDate>2018-01-01</mts:StartDate>
            </mts:MeterInstallationType>
          </mts:MeterInstallationTypes>
          <mts:DLFs>
            <mts:DLF>
              <mts:Code>NLV1</mts:Code>
              <mts:StartDate>2018-01-01</mts:StartDate>
            </mts:DLF>
          </mts:DLFs>
          <mts:TNIs>
            <mts:TNI>
              <mts:Code>SJP1</mts:Code>
              <mts:StartDate>2018-01-01</mts:StartDate>
            </mts:TNI>
          </mts:TNIs>
          <mts:NMIClasses>
            <mts:NMIClass>
              <mts:Class>SMALL</mts:Class>
              <mts:StartDate>2018-01-01</mts:StartDate>
            </mts:NMIClass>
          </mts:NMIClasses>
          <mts:JurisdictionCodes>
            <mts:JurisdictionCode>
              <mts:Code>SA</mts:Code>
              <mts:StartDate>2018-01-01</mts:StartDate>
            </mts:JurisdictionCode>
          </mts:JurisdictionCodes>
        </mts:NMIAttributes>
        <mts:ReferenceData>
          <mts:CustomerInformation>
            <mts:CustomerInformationRecord>
              <mts:StartDate>2018-01-01</mts:StartDate>
              <mts:CustomerIdentifier>1610208281</mts:CustomerIdentifier>
              <mts:Business>
                <mts:Name>Good Company</mts:Name>
                <mts:ContactPerson>
                  <mts:Title>Mr</mts:Title>
                  <mts:FirstName>Good</mts:FirstName>
                  <mts:FamilyName>Tester</mts:FamilyName>
                </mts:ContactPerson>
              </mts:Business>
              <mts:Phones>
                <mts:Phone PhoneIdentifier="1610208281" location="Home" type="Voice">
                  <mts:Number>99998888</mts:Number>
                </mts:Phone>
              </mts:Phones>
            </mts:CustomerInformationRecord>
          </mts:CustomerInformation>
          <mts:AddressInformation>
            <mts:AddressInformationRecord>
              <mts:Address category="Site">
                <mts:StructuredAddress>
                  <mts:House>
                    <mts:Number>22</mts:Number>
                  </mts:House>
                  <mts:Street>
                    <mts:StreetName>Collins</mts:StreetName>
                    <mts:Type>ST</mts:Type>
                  </mts:Street>
                  <mts:Suburb>Adelaide</mts:Suburb>
                </mts:StructuredAddress>
                <mts:PostCode>5000</mts:PostCode>
                <mts:State>SA</mts:State>
                <mts:Country>Australia</mts:Country>
              </mts:Address>
              <mts:AccessDetails>Access Details: Big dog</mts:AccessDetails>
              <mts:StartDate>2018-01-01</mts:StartDate>
              <mts:ModifiedDate>2018-01-01T00:00:00+10:00</mts:ModifiedDate>
              <mts:AddressIdentifier>1610208282</mts:AddressIdentifier>
              <mts:CustomerIdentifier>1610208281</mts:CustomerIdentifier>
            </mts:AddressInformationRecord>
            <mts:AddressInformationRecord>
              <mts:Address category="Postal">
                <mts:StructuredAddress>
                  <mts:House>
                    <mts:Number>22</mts:Number>
                  </mts:House>
                  <mts:Street>
                    <mts:StreetName>Collins</mts:StreetName>
                    <mts:Type>ST</mts:Type>
                  </mts:Street>
                  <mts:Suburb>Adelaide</mts:Suburb>
                </mts:StructuredAddress>
                <mts:PostCode>5000</mts:PostCode>
                <mts:State>SA</mts:State>
                <mts:Country>Australia</mts:Country>
              </mts:Address>
              <mts:AccessDetails>Access Details: Big dog</mts:AccessDetails>
              <mts:StartDate>2018-01-01</mts:StartDate>
              <mts:ModifiedDate>2018-01-01T00:00:00+10:00</mts:ModifiedDate>
              <mts:AddressIdentifier>1610208283</mts:AddressIdentifier>
              <mts:CustomerIdentifier>1610208281</mts:CustomerIdentifier>
            </mts:AddressInformationRecord>
          </mts:AddressInformation>
          <mts:SpecialCondition>
            <mts:CISSpecialConditionRecord>
              <mts:SpecialConditionIdentifier>1610208281</mts:SpecialConditionIdentifier>
              <mts:SpecialConditionCode>160E</mts:SpecialConditionCode>
              <mts:StartDate>2018-01-01</mts:StartDate>
            </mts:CISSpecialConditionRecord>
          </mts:SpecialCondition>
          <mts:MarketParticipantReference>
            <mts:MarketParticipantReferenceRecord>
              <mts:RoleAssignment>
                <mts:Participant>POWERCOR</mts:Participant>
                <mts:Role>LEGAL_ENTITY</mts:Role>
                <mts:StartDate>2018-01-01</mts:StartDate>
              </mts:RoleAssignment>
            </mts:MarketParticipantReferenceRecord>
            <mts:MarketParticipantReferenceRecord>
              <mts:RoleAssignment>
                <mts:Participant>POWERCOR</mts:Participant>
                <mts:Role>FRMP</mts:Role>
                <mts:StartDate>2018-01-01</mts:StartDate>
              </mts:RoleAssignment>
            </mts:MarketParticipantReferenceRecord>
            <mts:MarketParticipantReferenceRecord>
              <mts:RoleAssignment>
                <mts:Participant>POWCP</mts:Participant>
                <mts:Role>LNSP</mts:Role>
                <mts:StartDate>2018-01-01</mts:StartDate>
              </mts:RoleAssignment>
            </mts:MarketParticipantReferenceRecord>
            <mts:MarketParticipantReferenceRecord>
              <mts:RoleAssignment>
                <mts:Participant>AES</mts:Participant>
                <mts:Role>LR</mts:Role>
                <mts:StartDate>2018-01-01</mts:StartDate>
              </mts:RoleAssignment>
            </mts:MarketParticipantReferenceRecord>
            <mts:MarketParticipantReferenceRecord>
              <mts:RoleAssignment>
                <mts:Participant>POWERMDP</mts:Participant>
                <mts:Role>MDP</mts:Role>
                <mts:StartDate>2018-01-01</mts:StartDate>
              </mts:RoleAssignment>
            </mts:MarketParticipantReferenceRecord>
            <mts:MarketParticipantReferenceRecord>
              <mts:RoleAssignment>
                <mts:Participant>POWERMDP</mts:Participant>
                <mts:Role>MPC</mts:Role>
                <mts:StartDate>2018-01-01</mts:StartDate>
              </mts:RoleAssignment>
            </mts:MarketParticipantReferenceRecord>
            <mts:MarketParticipantReferenceRecord>
              <mts:RoleAssignment>
                <mts:Participant>POWERCMP</mts:Participant>
                <mts:Role>MPB</mts:Role>
                <mts:StartDate>2018-01-01</mts:StartDate>
              </mts:RoleAssignment>
            </mts:MarketParticipantReferenceRecord>
            <mts:MarketParticipantReferenceRecord>
              <mts:RoleAssignment>
                <mts:Participant>POWCP</mts:Participant>
                <mts:Role>RP</mts:Role>
                <mts:StartDate>2018-01-01</mts:StartDate>
              </mts:RoleAssignment>
            </mts:MarketParticipantReferenceRecord>
            <mts:MarketParticipantReferenceRecord>
              <mts:RoleAssignment>
                <mts:Participant>SOLARIS</mts:Participant>
                <mts:Role>ROLR</mts:Role>
                <mts:StartDate>2018-01-01</mts:StartDate>
              </mts:RoleAssignment>
            </mts:MarketParticipantReferenceRecord>
          </mts:MarketParticipantReference>
        </mts:ReferenceData>
      </iee:ConfigurationUpdate>
		</iee:ConfigurationTransfer>
	</iee:ConfigurationTransfers>
</iee:ConfigurationBatch>
  
  ');

pkg_mts_xml_queue.pro_EnQueue(p_queue_name => 'SQ_INTERFACE_IN', p_xml_payload => l_payload, p_corrid => null);

commit;
end;
