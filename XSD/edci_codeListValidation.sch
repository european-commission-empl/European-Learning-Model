<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" queryBinding="xslt2">
    
    <ns prefix="edci" uri="http://data.europa.eu/europass/model/credentials#"/>
    <ns prefix="cred" uri="http://data.europa.eu/europass/model/credentials/w3c#"/>
    
    <pattern id="edci-codeListValidation">
        
        <rule context="edci:relatedEscoSkill/@type">
            <xsl:variable name="SkillAlignmentTypeEnumType" select="(
                'http://data.europa.eu/europass/skillAssociationType/closeMatch', 
                'http://data.europa.eu/europass/skillAssociationType/exactMatch', 
                'http://data.europa.eu/europass/skillAssociationType/broaderMatch', 
                'http://data.europa.eu/europass/skillAssociationType/narrowerMatch')"/>
            <assert test="( false() or $SkillAlignmentTypeEnumType=string(.))">
                type attribute of relatedEscoSkill element should contain uri from SkillAlignmentTypeEnumType codelist.
            </assert>
        </rule>
        
        <rule context="edci:nqfLevel/@targetFrameworkID">
            <xsl:variable name="QualificationFrameworkEnumType" select="(
                'http://data.europa.eu/snb/qdr/QF/AT',
                'http://data.europa.eu/snb/qdr/QF/BE2',
                'http://data.europa.eu/snb/qdr/QF/BE3',
                'http://data.europa.eu/snb/qdr/QF/BE4',
                'http://data.europa.eu/snb/qdr/QF/BG',
                'http://data.europa.eu/snb/qdr/QF/CH',
                'http://data.europa.eu/snb/qdr/QF/CY',
                'http://data.europa.eu/snb/qdr/QF/CZ',
                'http://data.europa.eu/snb/qdr/QF/DE',
                'http://data.europa.eu/snb/qdr/QF/DK',
                'http://data.europa.eu/snb/qdr/QF/EE',
                'http://data.europa.eu/snb/qdr/QF/EL',
                'http://data.europa.eu/snb/qdr/QF/ES',
                'http://data.europa.eu/snb/qdr/QF/FI',
                'http://data.europa.eu/snb/qdr/QF/FR',
                'http://data.europa.eu/snb/qdr/QF/HR',
                'http://data.europa.eu/snb/qdr/QF/HU',
                'http://data.europa.eu/snb/qdr/QF/IE',
                'http://data.europa.eu/snb/qdr/QF/IS',
                'http://data.europa.eu/snb/qdr/QF/IT',
                'http://data.europa.eu/snb/qdr/QF/LI',
                'http://data.europa.eu/snb/qdr/QF/LT',
                'http://data.europa.eu/snb/qdr/QF/LU',
                'http://data.europa.eu/snb/qdr/QF/LV',
                'http://data.europa.eu/snb/qdr/QF/ME',
                'http://data.europa.eu/snb/qdr/QF/MK',
                'http://data.europa.eu/snb/qdr/QF/MT',
                'http://data.europa.eu/snb/qdr/QF/NL',
                'http://data.europa.eu/snb/qdr/QF/NO',
                'http://data.europa.eu/snb/qdr/QF/PL',
                'http://data.europa.eu/snb/qdr/QF/PT',
                'http://data.europa.eu/snb/qdr/QF/RO',
                'http://data.europa.eu/snb/qdr/QF/SE',
                'http://data.europa.eu/snb/qdr/QF/SK',
                'http://data.europa.eu/snb/qdr/QF/SI',
                'http://data.europa.eu/snb/qdr/QF/TR',
                'http://data.europa.eu/snb/qdr/QF/UK',
                'http://data.europa.eu/snb/qdr/QF/UKM',
                'http://data.europa.eu/snb/qdr/QF/UKL',
                'http://data.europa.eu/snb/concept-scheme/eqf',
                'http://data.europa.eu/snb/qdr/QF/RS'
                )"/>
            <assert test="( false() or $QualificationFrameworkEnumType=string(.))">
                targetFrameworkID attribute of nqfLevel element should contain uri from QualificationFrameworkEnumType codelist.
            </assert>
        </rule> 
    </pattern>
</schema>