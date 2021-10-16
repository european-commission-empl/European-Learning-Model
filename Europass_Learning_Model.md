# Europass Learning Model

## Content Classes

### <a name="verifiablecredential">Verifiable Credential</a> < abstract >
**Class description**: A set of one or more claims made by an issuer.
A credential is a set of one or more claims made by the same entity. A verifiable credential is a tamper-evident credential that has authorship that can be cryptographically verified. Verifiable credentials can be used to build verifiable presentations, which can also be cryptographically verified.

|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Credential UID|A unique portable identifier of the credential.|id|`ID/PK`<br>URI|1|||
|Issuance Date|The issuance date.|issuanceDate|`Property`<br>DateTime|1|||
|Issue Date|The date and time the credential was digitally signed.|issued|`Property`<br>DateTime|1|||
|Valid From|The earliest date when the information associated with the credentialSubject property became valid.|validFrom|`Property`<br>DateTime|1|||
|Expiry Date|The expiration date.|expirationDate|`Property`<br>DateTime|0. .1|||

### <a name="europasscredential">Europass Credential</a> < extends VerifiableCredential >
**Class description**: A set of claims made by an issuer in Europe, using the Europass Standards.
A Europass credential is a set of one or more claims which may be used to demonstrate that the owner has certain skills or has achieved certain learning outcomes through formal, non-formal or informal learning.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Credential Identifier|An alternative identifier of the credential typically assigned to the credential by the issuing organisation.|identifier|`Property`<br>Identifier|*|||
|Type|The type of credential.|type|`Property`<br>Code|1||[Europass Standard List of Credential Types](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://data.europa.eu/snb/credential/25831c2)|
|Title|The full official title of the issued credential (maximum 50 characters).|title|`Property`<br>Text|1|||
|Description|A summary of the claim or group of claims being made about a person (maximum 140 words).|description|`Property`<br>Note|0. .1|||
|Primary Language|The primary language of the credential (only one language can be applied).|primaryLanguage|`Property`<br/>String|1||bg, cs, da, de, el, en, es, et, fi, fr, ga, hr, hu, is, it, lt, lv, mk, mt, nl, no, pl, pt, ro, sk, sl, sr, sv, tr|
|Available Languages|The list of minimum 1 to maximum 29 languages the credential content is available in. This list must include the Primary language as well.|availableLanguages|`Property`<br/>String|1. .29||bg, cs, da, de, el, en, es, et, fi, fr, ga, hr, hu, is, it, lt, lv, mk, mt, nl, no, pl, pt, ro, sk, sl, sr, sv, tr|
|Issuer|The organisaton that issued the credential and sealed it with their digital e-seal.|issuer|`Association`<br><a href="#organisation">Organisation</a>|1|||
|Owner|The person about which claims are made and who owns the credential.|credentialSubject|`Association`<br><a href="#person">Person</a>|1|||
|Display Parameters|The display details of the credential.|display|`Association`<br><a href="#displayparameters">DisplayParameters</a>|0. .1|||
|Attachments|Any digital document (PDF, JPEG or PNG format) that an issuer has attached to the Europass document.|attachment|`Association`<br><a href="#mediaobject">MediaObject</a>|*|||
|Proof|The cryptographic proofs that can be used to detect tampering and verify the authorship of a credential or presentation.|proof|`Association`<br><a href="#proof">Proof</a>|1|||
|Sub-credentials|A credential embedded within the credential. Smaller sub-credentials (micro-credentials), that make up this larger credential when combined.|contains|`Association`<br><a href="#europasscredential">EuropassCredential</a>|*|||

### <a name="proof">Proof</a>
**Class description**: The cryptographic proof that can be used to detect tampering and verify the authorship of a credential or presentation.

### <a name="displayparameters">Display Parameters</a>
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Display Code|The code indicating how to display the summary view of the credential.|summaryDisplay|`Property`<br>xsd:string|0. .1|||
|Background Image|The background image of the credential.|background|`Association`<br><a href="#imageobject">ImageObject</a>|0. .1|||

### <a name="learningspecification">Learning Specification</a>
**Class description**: A description of what a person may learn using the opportunity, expressed as learning outcomes. A specification of learning.

|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Learning Specification UID|A portable and unique identifier of the learning specification.|id|`ID/PK`<br>URI|1|||
|Learning specification Identifier|An alternative identifier of the learning specification, as assigned to it by the organisation who designed the specification.|identifier|`Property`<br>Identifier|*|||
|Learning Opportunity Type|The type of learning opportunity.|learningOpportunityType|`Property`<br>Code|*||[Europass Standard List of Learning Opportunity Types](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://data.europa.eu/snb/learning-opportunity/25831c2)|
|Title|The title of the learning specification.|title|`Property`<br>Text|0. .1|||
|Alternative Label|An alternative name of the learning specification.|alternativeLabel|`Property`<br>Text|*|||
|Description|Short and abstract description about the learning specification.|definition|`Property`<br>Note|0. .1|||
|Learning Outcome Description|The full learning outcome description of the learning specification.|learningOutcomeDescription|`Property`<br>Note|0. .1|||
|More Information|An additional free text note about the learning specification.|additionalNote|`Property`<br>Note|*|||
|Homepage|The homepage (a public web document) of the learning specification.|homePage|`Association`<br><a href="#webdocument">WebDocument</a>|*|||
|Other Documents|A public web document containing additional documentation about the learning specification.|supplementaryDocument|`Association`<br><a href="#webdocument">WebDocument</a>|*|||
|Thematic Area|Thematic Area according to the ISCED-F 2013 Classification|ISCEDFCode|`Property`<br>Code|*||[ISCED-F](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://data.europa.eu/snb/isced-f/25831c2)|
|Education Subject|An associated field of education from another semantic framework than the ISCED classification.|educationSubject |`Property`<br>Code|*|||
|Volume of Learning|The estimated number of hours the learner is expected to spend engaged in learning to earn the award. This would include the notional number of hours in class, in group work, in practicals, as well as hours engaged in self-motivated study.|volumeOfLearning|`Property`<br>Duration|0. .1|||
|ECTS Credit Points|The credit points assigned to the learning specification, following the ECTS credit system.|ECTSCreditPoints|`Property`<br>NumericScore|0. .1||ECTS scoring scheme from Europass Standard List of Educational Credit Systems|
|Credit Points|The credit points assigned to the learning specification, following an alternative educational credit system.|creditPoints|`Property`<br>Code|*||[Europass Standard List of Educational Credit Systems](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://data.europa.eu/snb/education-credit/25831c2)|
|Education Level|An associated level of education within a semantic framework describing education levels.|educationLevel|`Property`<br>Code|*|||
|Language(s) of Instruction|The instruction and/or assessment language(s) used.|language|`Property`<br>Code|*||[Language Named Authority List](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://publications.europa.eu/resource/authority/language)|
|Mode of Learning|The mode of learning and or assessment.|mode|`Property`<br>Code|*||[Europass Standard List of Modes Of Learning and Assessment](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://data.europa.eu/snb/learning-assessment/25831c2)|
|Learning Setting|The type of learning setting (formal, non-formal).|learningSetting|`Property`<br>Code|0. .1||[Europass Standard List of Learning Setting Types](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://data.europa.eu/snb/learning-setting/25831c2)|
|Maximum Duration in Months|The maximum duration (in months) that a person may use to complete the learning opportunity.|maximumDuration|`Property`<br>Duration|0. .1|||
|Target Group|A specific target group or category for which this specification is designed.|targetGroup|`Property`<br>Code|*||[Europass Standard List of Target Groups](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://data.europa.eu/snb/target-group/25831c2)|
|Entry Requirements|Specific entry requirements or prerequisites of individuals for which this specification is designed to start this learning opportunity.|entryRequirementsNote|`Property`<br>Note|0. .1|||
|Learning Outcomes|An individual (expected) learning outcome of the learning specification.|learningOutcome|`Association`<br><a href="#learningoutcome">LearningOutcome</a>|*|||
|Activities|Activities which a person can perform to acquire the expected learning outcomes|learningActivitySpecification|`Association`<br><a href="#learningactivityspecification">LearningActivitySpecification</a>|*|||
|Assessments|Assessments a person can undergo to prove the acquisition of the learning outcomes|assessmentSpecification|`Association`<br><a href="#assessmentspecification">AssessmentSpecification</a>|0. .1|||
|Entitlements|Rights (such as  which the person may acquire as a result of acquiring the learning outcomes)|entitlementSpecification|`Association`<br><a href="#entitlementspecification">EntitlementSpecification</a>|*|||
|Awarding Information|Refers to an activity related to the awarding of the learning specification, such as the country or region where the qualification is awarded, the awarding body and optionally the awarding period now or in the past. |awardingOpportunity|`Association`<br><a href="#awardingopportunity">AwardingOpportunity</a>|*|||
|Learning Sub-Specifications|A learning specification can be composed of other "narrower" learning specifications which when combined make up this learning specification.|hasPart|`Association`<br><a href="#learningspecification">LearningSpecification</a>|*|||
|Specialisation of|A learning specification (e.g. a standard) of which this specification is a specialisation.<a href="#FN1">[1]</a>|specialisationOf|`Association`<br><a href="#learningspecification">LearningSpecification</a>|*|||

<a name="FN1">[1]: To be implemented at a later stage</a>

### <a name="qualification">Qualification</a> < extends LearningSpecification >
**Class description**: a specification of an assessment and validation process which is obtained when a competent authority determines that an individual has achieved learning outcomes to given standards.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Partial Qualification|Indicates whether a qualification is a full qualification or part of another qualification.|isPartialQualification|`Property`<br>xsd:boolean|0. .1| ||
|EQF Level|The qualification level as specified by the European Qualification Framework.|EQFLevel|`Property`<br>Code|0. .1||[EQF. QDR List of qualification frameworks](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://data.europa.eu/snb/eqf/25831c2)|
|NQF Level|The qualification level as specified by a National Qualification Framework.|NQFLevel|`Property`<br/>Code|*||[QDR List of qualification frameworks](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://data.europa.eu/snb/qdr/25831c2)|
|Accreditation|The accreditation of a qualification.|hasAccreditation|`Association`<br><a href="#accreditation">Accreditation</a>|*|||

### <a name="learningoutcome">Learning Outcome</a>
**Class description**: a statement regarding what a learner knows, understands and is able to do on completion of a learning process, which are defined in terms of knowledge, skills and responsibility and autonomy.

|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Learning Outcome UID|A portable and unique identifier of the learning outcome.|id|`PK/ID`<br>URI|1|||
|Identifier|An alternative identifier of the learning outcome.|identifier|`Property`<br>Identifier|*|||
|Title|A legible, descriptive name for the learning outcome.|name|`Property`<br>Text|1|||
|Description|A free text describing the learning outcome. A detailed learning outcome may include a description of what the student can do as a result of learning, with an indication of the level of achievement, and the conditions or context under which this can be performed (if applicable).|description|`Property`<br>Note|0. .1|||
|Learning Outcome Type|The learning outcome type.|learningOutcomeType|`Property`<br>Code|0. .1||[ESCO Skill Pillar concept types](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://data.europa.eu/snb/skill-type/25831c2)|
|Reusability Level|The reusability level.|reusabilityLevel|`Property`<br>Code|0. .1||[ESCO Skill Pillar concept reusability levels](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://data.europa.eu/snb/skill-reuse-level/25831c2)|
|Related Skill(s)|A link to a related skill or the level of a related skill on a skill framework (except ESCO).|relatedSkill|`Property`<br>Code|*|||
|Related ESCO Skill(s)|A link to an ESCO Skill.|relatedESCOSkill|`Property`<br>Code|*||[ESCO skills](https://ec.europa.eu/esco/portal/skill)|

### <a name="learningactivityspecification">Learning Activity Specification</a>
**Class description**: The specification of a process which leads to the acquisition of knowledge, skills or responsibility and autonomy.

|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Learning activity specification UID|A portable and unique identifier of the learning activity specification.|id|`ID/PK`<br>URI|1|||
|Learning Activity Specification Identifier|An alternative identifier of the Learning Activity, as assigned to it by the organisation who designed the specification.|identifier|`Property`<br>Identifier|*|||
|Title|The title of the learning activity specification.|title|`Property`<br>Text|0. .1|||
|Alternative Label|An alternative name of the activity specification.|alternativeLabel|`Property`<br>Text|*|||
|Description|A free text description of the learning activity specification.|description|`Property`<br>Note|0. .1|||
|More Information|An additional free text note about the learning activity specification.|additionalNote|`Property`<br>Note|*|||
|Homepage|Webpage describing the activity specification|homePage|`Association`<br><a href="#webdocument">WebDocument</a>|*|||
|Other Documents|A public web document containing additional documentation about the learning activity specification.|supplementaryDocument|`Association`<br><a href="#webdocument">WebDocument</a>|*|||
|Learning Activity Type|The type of activity.|learningActivityType|`Property`<br>Code|*||[Europass Standard List of Learning Activity Types](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://data.europa.eu/snb/learning-activity/25831c2)|
|Volume of Learning|The estimated number of hours the learner is expected to spend engaged in the activity. This would include the notional number of hours in class, in group work, in practicals, as well as hours engaged in self-motivated study.|volumeOfLearning|`Property`<br>Duration|0. .1|||
|Language(s) of Instruction|The instruction language(s) used.|language|`Property`<br>Code|*||[Language Named Authority List](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://publications.europa.eu/resource/authority/language)|
|Mode of Learning|The mode of learning and or assessment.|mode|`Property`<br>Code|*||[Europass Standard List of Modes Of Learning and Assessment](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://data.europa.eu/snb/learning-assessment/25831c2)|
|Teaches|What may be learned by undertaking the activity described by this learning activity specification.|teaches|`Association`<br><a href="#learningspecification">LearningSpecification</a>|*|||
|Learning Activity Sub-Specifications|A learning activity specification can be composed of smaller learning specifications, which when combined make up this learning specification.|hasPart|`Association`<br><a href="#learningactivityspecification">LearningActivitySpecification</a>|*|||
|Specialisation of|An activity specification (e.g. a standard) of which this specification is a specialisation.|specialisationOf|`Association`<br><a href="#learningactivityspecification">LearningActivitySpecification</a>|*|||

### <a name="learningactivity">Learning Activity</a>
**Class description**: Any process which leads to the acquisition of knowledge, skills or responsibility and autonomy.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Learning Activity UID|A portable and unique identifier of the learning activity.|id|`ID/PK`<br>URI|1| ||
|Learning Activity Identifier|An alternative identifier of the learning activity assigned to the assessment by the organisation directing the activity.|identifier|`Property`<br>Identifier|*|||
|Title|The title of the learning activity.|title|`Property`<br>Text|1|||
|Description|A free text description of the learning activity.|description|`Property`<br>Note|0. .1|||
|More Information|An additional free text note about the activity.|additionalNote|`Property`<br>Note|*|||
|Workload in Hours|The actual workload in number of hours the learner has spent engaged in the activity. This would include the number of hours in class, in group work, in practicals, as well as hours engaged in self-motivated study.|workload|`Property`<br>Duration|0. .1|||
|Start Date|The date the learner started the activity|startedAtTime|`Property`<br>DateTime|0. .1|||
|End Date|The date the learner ended the activity|endedAtTime|`Property`<br>DateTime|0. .1|||
|Directed by|The organisation, or part of an organisation such as department, faculty, which directed the learning activity.|directedBy|`Association`<br><a href="#agent">Agent</a>|*|||
|Location|The location where the activity took place.|hasLocation|`Association`<br><a href="#location">Location</a>|*|||
|Specified by|The specification of this learning activity.|specifiedBy|`Association`<br><a href="#learningactivityspecification">LearningActivitySpecification</a>|0. .1|||
|Linked to Learning Opportunity|The used or taken opportunity to do this learning activity.|usedLearningOpportunity|`Association`<br><a href="#learningopportunity">LearningOpportunity</a>|0. .1|||
|Achievements Influenced|Performing this activity contributed to the acquisition of these related learning achievements.|influenced|`Association`<br><a href="#learningachievement">LearningAchievement</a>|*|||
|Sub-Activities|Smaller units of activity, which when combined make up this activity.|hasPart|`Association`<br><a href="#learningactivity">LearningActivity</a>|*|||

### <a name="assessmentspecification">Assessment Specification</a>
**Class description**: An Assessment Specification is a specification of a process establishing the extent to which a learner has attained particular knowledge, skills and competences against criteria such as learning outcomes or standards of competence.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Assessment Specification UID|A portable and Unique Identifier of the Assessment Specification.|id|`ID/PK`<br>URI|1|||
|Assessment Specification Identifier|An alternative identifier of the assessment specification, as assigned to it by the organisation who designed the specification.|identifier|`Property`<br>Identifier|*|||
|Title|The title of the assessment specification.|title|`Property`<br>Text|0. .1|||
|Alternative Label|An alternative name of the assessment specification.|alternativeLabel|`Property`<br>Text|*|||
|Description|A free text description of the assessment specification.|description|`Property`<br>Note|0. .1|||
|More Information|An additional free text note about the assessment specification.|additionalNote|`Property`<br>Note|*|||
|Homepage|The homepage (a public web document) describing the details of the assessment specification.|homePage|`Association`<br><a href="#webdocument">WebDocument</a>|*|||
|Other Documents|A public web document containing additional documentation about the assessment specification.|supplementaryDocument|`Association`<br><a href="#webdocument">WebDocument</a>|*|||
|Assessment Type|The type of assessment.|assessmentType|`Property`<br>Code|*||[Europass Standard List of Assessment Types](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://data.europa.eu/snb/assessment/25831c2)|
|Language of Assessment|The language(s) of assessment used.|language|`Property`<br>Code|*||[Language Named Authority List](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://publications.europa.eu/resource/authority/language)|
|Mode of Assessment|The mode of learning and or assessment.|mode|`Property`<br>Code|*||[Europass Standard List of Modes Of Learning and Assessment](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://data.europa.eu/snb/learning-assessment/25831c2)|
|Grading Scheme|A description of the specification of which learning outcomes are or have been proven.|gradingscheme|`Association`<br><a href="#gradingscheme">GradingScheme</a>|0. .1|||
|Demonstrates|The learning achievement (and related learning outcomes) this assessment is designed to test.|proves|`Association`<br><a href="#learningspecification">LearningSpecification</a>|*|||
|Assessment Sub-Specifications|A assessment specification can be composed of other "narrower" assessment specifications which when combined make up this assessment specification.|hasPart|`Association`<br><a href="#assessmentspecification">AssessmentSpecification</a>|*|||
|Specialisation of|An assessment specification (e.g. a standard) of which this specification is a specialisation.|specialisationOf|`Association`<br><a href="#assessmentspecification">AssessmentSpecification</a>|*|||

### <a name="assessment">Assessment</a>
**Class description**: The result of a process establishing the extent to which a learner has attained particular knowledge, skills and competences against criteria such as learning outcomes or standards of competence.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Assessment UID|A portable identifier of the assessment.|id|`ID/PK`<br>URI|1|||
|Assessment Identifier|An alternative identifier assigned to the assessment by the organisation grading the assessment.|identifier|`Property`<br>Identifier|*|||
|Title|The title of the assessment.|title|`Property`<br>Text|1|||
|Description|A description of the assessment.|description|`Property`<br>Text|0. .1|||
|More Information|An additional free text note about the assessment.|additionalNote|`Property`<br>Note|*|||
|Grade|A resulting grade of the assessment.|grade|`Property`<br>Score|1|||
|Shortened Grading|Indicator of how well the student was graded when compared to other students|shortenedGrading|`Association`<br><a href="#shortenedgrading">ShortenedGrading</a>|0. .1|||
|Result Distribution|Describes a histogram of results achieved by all the students of a particular learning assessment.|resultDistribution|`Association`<br><a href="#resultdistribution">ResultDistribution</a>|0. .1|||
|Assessment Date|Date the grade was awarded.|issuedDate|`Property`<br>DateTime|0. .1|||
|Method of Assessment, Supervision and ID Verification|Method of assessment supervision and id verification.|idVerification|`Property`<br>Code|0. .1||[Europass Standard List of Methods Of Supervision And Verification](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://data.europa.eu/snb/supervision-verification/25831c2)|
|Assessment Conducted by|The competent body that awarded the grade.|assessedBy|`Association`<br><a href="#agent">Agent</a>|*|||
|Assesses|The learning achievement (and related learning outcomes) which were acquired by successfully passing the assessment.|assesses|`Association`<br><a href="#learningachievement">LearningAchievement</a>|0. .1|||
|Specified by|The specification of this assessment.|specifiedBy|`Association`<br><a href="#assessmentspecification">AssessmentSpecification</a>|0. .1|||
|Sub-Assessments|Smaller assessments, which when combined make up and can influence this assessment.|hasPart|`Association`<br><a href="#assessment">Assessment</a>|*|||

### <a name="shortenedgrading">Shortened Grading</a>
**Class description**: Indicator of *how well* the student was graded when compared to other students.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Percentage Lower|The percentage of students of the same course who got a lower grade.|percentageLower|`Property`<br>Numeric|1|||
|Percentage Equal|The percentage of students of the same course who got exactly the same grade.|percentageEqual|`Property`<br>Numeric|1|||
|Percentage Higher|The percentage of students of the same course who got a higher grade.|percentageHigher|`Property`<br>Numeric|1|||

### <a name="resultdistribution">Result Distribution</a>
**Class description**: Describes a histogram of results achieved by all the students of this course instance.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Category|Describes a single range within the histogram.|category|`Association`<br><a href="#resultcategory">ResultCategory</a>|*|||
|Description|Free text description of the histogram.|description|`Property`<br>Note|0. .1|||

### <a name="resultcategory">Result Category</a>
**Class description**: Description of a single score or score range within a histogram of results.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Label|The label of the histogram score or score range. Should correspond to the grading scheme which have been used. E.g. 'C', or '20-30'.|label|`Property`<br>Text|1|||
|Score|N/A|score|`Property`<br>Score|0. .1|||
|Minimum Score|N/A|minScore|`Property`<br>Score|0. .1|||
|Maximum Score|N/A|maxScore|`Property`<br>Score|0. .1|||
|Count|N/A|count|`Property`<br>PositiveInteger|1|||

### <a name="gradingscheme">Grading Scheme</a>
**Class description**: A set of criteria that measures varying levels of achievement.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Grading Scheme UID|A portable and unique identifier of the Grading Scheme.|id|`ID/PK`<br>URI|1|||
|Grading Scheme Identifier|An alternative identifier of the Grading Scheme assigned to it by the organisation administering the scheme.|identifier|`Property`<br>Identifier|*|||
|Title|The title of the grading scheme.|title|`Property`<br>Text|0. .1|||
|Description|A free text describing the grading scheme.|description|`Property`<br>Note|0. .1|||
|Other Documents|A public web document containing additional documentation about the grading system.|supplementaryDocument|`Association`<br><a href="#webdocument">WebDocument</a>|*|||

### <a name="learningachievement">Learning Achievement</a>
**Class description**: The acquisition of knowledge, skills or responsibility and autonomy. A recognised and/or awarded set of learning outcomes of an individual.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Learning Achievement UID|A portable and identifier of the learning achievement.|id|`ID/PK`<br>URI|1|||
|Learning Achievement Identifier|An alternative identifier assigned to the achievement by the organisation awarding the achievement.|identifier|`Property`<br>Identifier|*|||
|Title|The title of the achievement.|title|`Property`<br>Text|1|||
|Description|A description of the achievement.|description|`Property`<br>Note|0. .1|||
|More Information|An additional free text note about the achievement.|additionalNote|`Property`<br>Note|*|||
|Proven by|An assessment which proves the acquisition of the learning outcomes which make up the achievement.|wasDerivedFrom|`Association`<br><a href="#assessment">Assessment</a>|0. .1|||
|Influenced by|Activities which contributed to the acquisition of the learning outcomes which make up the achievement.|wasInfluencedBy|`Association`<br><a href="#learningactivity">LearningActivity</a>|*|||
|Awarding Details|The awarding details of this achievement.|wasAwardedBy|`Association`<br><a href="#awardingprocess">AwardingProcess</a>|0. .1|||
|Sub-Achievements|Smaller units of achievement, which when combined make up this achievement.|hasPart|`Association`<br><a href="#learningachievement">LearningAchievement</a>|*|||
|Entitles Owner to|Entitlements the owner has received as a result of this achievement.|entitlesTo|`Association`<br><a href="#entitlement">Entitlement</a>|*|||
|Specified by|What has been learned.|specifiedBy|`Association`<br><a href="#learningspecification">LearningSpecification</a>|*|||
|Linked to Learning Opportunity|The learning opportunity that was taken to obtain the awarded LearningSpecification.|associatedLearningOpportunity|`Association`<br><a href="#learningopportunity">LearningOpportunity</a>|0. .1|||

### <a name="qualificationawarded">Qualification Awarded</a> < extends LearningAchievement >
**Class description**: A formal outcome of an assessment and validation process which is obtained when a competent authority determines that an individual has achieved learning outcomes to given standards.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Qualification Awarded|The details of the awarded qualification.|specifiedBy|`Association`<br><a href="#qualification">Qualification</a>|1|||

### <a name="awardingprocess">Awarding Process</a>
**Class description**: The process of an organisation awarding Learning Achievement to person based on a Learning Specification (e.g. a qualification). It is used to specify the organisation that awarded the LearningSpecification to the individual, the country or region where the LearningSpecification was awarded, and optionally the date of awarding.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Awarding Process UID|A portable and Unique Identifier of the Awarding Process.|id|`ID/PK`<br>URI|1|||
|Identifier|An alternative identifier of the awarding process.|identifier|`Property`<br>Identifier|*|||
|Description|A description of the awarding process to the individual.|description|`Property`<br>Text|0. .1|||
|More Information|An additional free text note (e.g. a comment, a remark, etc.)|additionalNote|`Property`<br>Text|*|||
|Assessment Utilised|The assessment that provided the basis for this awarding.|used|`Association`<br><a href="#assessment">Assessment</a>|*|||
|Learning Achievement|The resulting learning achievement.|learningAchievement|`Association`<br><a href="#learningachievement">LearningAchievement</a>|1. .*|||
|Awarding Organisation|The awarding body that awarded the Achievement to the individual. Only in cases of co-awarding/co-graduation, where a qualification award is issued to an individual by two or more organisations the cardinality is greater than 1.|awardingBody|`Association`<br><a href="#organisation">Organisation</a>|1. .*|||
|Location|The location where the awarding activity took place (country/region where the qualification was awarded).|awardingLocation|`Association`<br><a href="#location">Location</a>|0. .1|||
|Awarding Date|The date when the LearningSpecification was awarded. If not specified it is undefined ("not known").|awardingDate|`Property`<br>DateTime|0. .1|||

### <a name="awardingopportunity">Awarding Opportunity</a>
**Class description**: An awarding activity represents an activity related to the awarding of a LearningSpecification. It is used to specify the country or region where the LearningSpecification is awarded, the awarding body and optionally the awarding period now or in the past.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Awarding Opportunity UID|A portable identifier of the awarding opportunity.|id|`ID/PK`<br>URI|1|||
|Identifier|An alternative identifier of the awarding opportunity.|identifier|`Property`<br>Identifier|*|||
|Awarding Body|The awarding body related to this awarding activity (i.e the organisation that issues the qualification) Only in cases of co-awarding/co-graduation, where a qualification is issued to an individual by two or more organisations the cardinality is greater than 1.|awardingBody |`Association`<br><a href="#organisation">Organisation</a>|*|||
|Location|Location where the awarding activity takes place (country/region where the qualification is awarded).|hasLocation|`Association`<br><a href="#location">Location</a>|0. .1|||
|Start Date|The date since when the awarding activities take place. If not specified it is undefined ("not known")|startedAtTime|`Property`<br>DateTime|0. .1|||
|End Date|The date until when the awarding activities take/took place|endedAtTime|`Property`<br>DateTime|0. .1|||

### <a name="entitlement">Entitlement</a>
**Class description**: A right, e.g. to practice a profession, take advantage of a learning opportunity or join an organisation, as a result of the acquisition of knowledge, skills, responsibility and/or autonomy.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Entitlement UID|A portable and identifier of the entitlement.|id|`ID/PK`<br/>URI|1|||
|Alternative Identifier|An alternative identifier of the entitlement.|identifier|`Property`<br>Identifier|*|||
|Title|The title of the entitlement.|title|`Property`<br>Text|1|||
|Description|A free text description of the specific rights the holder of the credential has acquired.|description|`Property`<br>Note|0. .1|||
|Date of Issue|The date from which the entitlement was conferred.|issuedDate|`Property`<br>Date|0. .1|||
|Expiry Date|The date until which the entitlement was conferred.|expiryDate|`Property`<br>Date|0. .1|||
|More Information|An additional free text note about the entitlement.|additionalNote|`Property`<br>Note|*|||
|Specified by|A learning achievement which gave rise to the entitlement.|specifiedBy|`Association`<br><a href="#entitlementspecification">EntitlementSpecification</a>|0. .1|||
|Derived from|The learning achievement (and related learning outcomes) which gave rise to this entitlement.|wasDerivedFrom|`Association`<br><a href="#learningachievement">LearningAchievement</a>|*|||
|Sub-Entitlements|Smaller entitlements, which when combined make up this entitlement.|hasPart|`Association`<br><a href="#entitlement">Entitlement</a>|*|||

### <a name="entitlementSpecification">Entitlement Specification</a>
**Class description**: The specification of a right a person has access to, typically as a result of a learning achievement. It may take the form of the right to be a member of an organisation, to follow a certain learning opportunity specification, or to follow a certain career.

|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Entitlement Specification UID|A portable and unique identifier of the entitlement specification.|id|`ID/PK`<br>URI|1|||
|Entitlement Specification Identifier|An alternative identifier of the entitlement specification.|identifier|`Property`<br>Identifier|*|||
|Title|The title of the entitlement specification.|title|`Property`<br>Text|0. .1|||
|Alternative Label|An alternative name of the entitlement specification.|alternativeLabel|`Property`<br>Text|*|||
|Description|A free text description of the entitlement specification.|description|`Property`<br>Note|0. .1|||
|More Information|An additional free text note about the entitlement specification.|additionalNote|`Property`<br>Note|*|||
|Homepage|The homepage (a public web document) of the entitlement specification.|homePage|`Association`<br><a href="#webdocument">WebDocument</a>|*|||
|Other Documents|A public web document containing additional documentation about the entitlement specification.|supplementaryDocument|`Association`<br><a href="#webdocument">WebDocument</a>|*|||
|Entitlement Type|A credential-holder may be entitled to membership of an organisation or professional association; to access a learning opportunity; or to perform a specific employment|entitlementType|`Property`<br>Code|1||[Europass Standard List of Entitlement Types](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://data.europa.eu/snb/entitlement/25831c2)|
|Status|The status of the entitlement: an entitlement may be prospective, i.e. awarding the right to apply for the entitlement; or actual, i.e. granting the entitlement.|status|`Property`<br>Code|1||[Europass Standard List of Entitlement Status](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://data.europa.eu/snb/entitlement-status/25831c2)|
|Valid With|The organisation which acknowledges the entitlement (i.e. the organisation offering the learning opportunity, membership or employment opportunity)|limitOrganisation|`Association`<br><a href="#organisation">Organisation</a>|*|||
|Valid Within|The jurisdiction for which the entitlement is valid (the region or country).|limitJurisidiction|`Property`<br>Code|*||[Country Named Authority List](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://publications.europa.eu/resource/authority/country)|
|Related Occupation(s)|The An ESCO Occupation or Occupational class which the individual may access through the entitlement.|limitOccupation|`Property`<br>EscoOccupationAssociation|*||[ESCO Occupations](https://ec.europa.eu/esco/portal/occupation)|
|Limit National Occupation|An Occupation or Occupational Category|limitNationalOccupation|`Property`<br>OccupationAssociation|*|||
|May Result From|N/A|mayResultFrom|`Association`<br><a href="#learningspecification">LearningSpecification</a>|*|||
|Entitlement Sub-Specification|Smaller entitlement specifications, which when combined make up this entitlement specification.|hasPart|`Association`<br><a href="#entitlementspecification">EntitlementSpecification</a>|*|||
|Specialisation of|An entitlement specification (e.g. a standard) of which this specification is a specialisation.|specialisationOf|`Association`<br><a href="#entitlementspecification">EntitlementSpecification</a>|*|||

### <a name="agent">Agent</a> < abstract >
**Class description**: An entity that is able to carry out actions.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Agent UID|A portable identifier of the agent.|id|`ID/PK`<br>URI|1|||
|Identifier|A formally-issued Identifier for the Agent.|identifier|`Property`<br>Identifier|*|||
|Type|The Type of an Agent as described in a controlled vocabulary.|type|`Property`<br>Code|*||QMS List Of Organisation Types|
|Preferred Name|The primary name of the agent.|preferredName|`Property`<br>Text|0. .1|||
|Alternative Name|An agent may have any number of alternative or informal names.|alternativeName|`Property`<br>Text|*|||
|More Information|An additional free text note about the agent.|note|`Property`<br>Note|*|||
|Contact Information|The contact information of an agent.|contactPoint|`Association`<br><a href="#contactpoint">ContactPoint</a>|*|||

### <a name="person">Person</a> < extends Agent >
**Class description**: A human being.

|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Person UID|The unique and portable identifier of the person.|id|`ID/PK`<br>URI|1|||
|National ID Number|The "primary" national identifier of the person.|nationalId|`Property`<br>LegalIdentifier|0. .1|||
|Other Identifier(s)|An (optional) alternative formally-issued identifier for the person, e.g. social security number, student ID card number, to club membership, etc.|identifier|`Property`<br>Identifier|*|||
|Full Name|The complete name of the person as one string.|fullName|`Property` (sub-Property of Agent preferredName property)<br>Text|0. .1|||
|Given Name|The given name(s) of the person.|givenNames|`Property`<br>Text |1|||
|Family Name|The family name of the person.|familyName|`Property`<br>Text|1|||
|Birth Name|The name of the person at birth. Birth names tend to be persistent and for this reason they are recorded by some public sector information systems. There is no granularity for birth name - the full name should be recorded in a single field.|birthName|`Property`<br>Text|0. .1|||
|Patronymic Name|Patronymic names are important in some countries. Iceland does not have a concept of 'family name' in the way that many other European countries do, for example, Erik Magnusson and Erika Magnusdottir are siblings, both offspring of Mangnus, irrespective of his patronymic name. In   Bulgaria and Russia, patronymic names are in every day usage, for example, the Sergeyevich in 'Mikhail Sergeyevich Gorbachev.'|patronymicName|`Property`<br>Text|0. .1|||
|Date of Birth|The birth date of the person.|dateOfBirth|`Property`<br>Date|0..1|||
|Place of Birth|The place of birth of the person.|placeOfBirth|`Association`<br><a href="#location">Location</a>|0. .1||[Country Named Authority List](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://publications.europa.eu/resource/authority/country)|
|Gender|The gender of the person.|gender|`Property`<br>Code|0. .1||[Human Sex Named Authority List](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://publications.europa.eu/resource/authority/human-sex)|
|Citizenship|The country (or countries) that conferred citizenship rights on the person.|citizenshipCountry|`Property`<br>Code|*||[Country Named Authority List](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://publications.europa.eu/resource/authority/country)|
|Location|A location related to a Person. (e.g. a person's home or residence location, a person's work place location, site location of an organisation, etc.)|hasLocation|`Association`<br><a href="#location">Location</a>|*||                                                              |
|Learning Activities|A learning activity that a person participated in or attended.|performed|`Association`<br><a href="#learningactivity">LearningActivity</a>|*|||
|Learning Achievements|An achievement of the person.|achieved|`Association`<br><a href="#learningachievement">LearningAchievement</a>|*|||
|Learning Entitlements|The entitlement of the person.|entitledTo|`Association`<br><a href="#entitlement">Entitlement</a>|*|||

### <a name="organisation">Organisation</a> < extends Agent >
**Class description**: A legal person / registered organisation.

|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Organisation UID|The unique and portable identifier of the organisation.|id|`ID/PK`<br>URI|1|||
|Other Identifier|Another formally-issued identifier for the organisation.|identifier|`Property`<br>Identifier|*|||
|eIDAS Identifier|The official identification number of the organisation, as awarded by the relevant national authority.authority.<a href="#FN2">[2]</a>|eidasLegalIdentifier|`Property`<br>Identifier|0..1|||
|Registration|The legal identifier of an organization. The identifier given to a registered organization by the authority with which it is registered. The legal status of a registered organization is conferred on it by an authority within a given jurisdiction. The Legal Identifier is therefore a fundamental relationship between an organization and the authority with which it is registered.|registration|`Property`<br>Identifier|0..1|||
|VAT Number|The Value-Added Tax ID.|vatIdentifier|`Property`<br>LegalIdentifier|*|||
|Tax / Fiscal Identifier|Fiscal ID of the organisation.|taxIdentifier|`Property`<br>LegalIdentifier|*| ||
|Legal Name|The primary name of the organisation.|preferredName|`Property`<br>Text|1|||
|Common Name|An (optional) alternative name of the organisation as typically used in documents, including credentials.|alternativeName|`Property`<br>Text|*|||
|Homepage|A homepage about the organisation.|homepage|`Association`<br><a href="#webdocument">WebDocument</a>|*|||
|Location|The legally registered site of the organisation.|hasLocation|`Association`<br><a href="#location">Location</a>|1. .*|||
|Accreditation|Accreditation Records associated with the organisation. More information about the accreditation database is available here.|hasAccreditation|`Association`<br><a href="#accreditation">Accreditation</a>|*|||
|Child Organisation|A smaller organisation of which forms part of this organisation, e.g. a Department within a larger Organisation.|hasUnit|`Association`<br><a href="#organisation">Organisation</a>|*|||
|Parent Organisation|Indicates a larger Organisation of which this Unit is a part of, e.g. the Organisation within which a Department operates. |unitOf|`Association`<br><a href="#organisation">Organisation</a>|0. .1|||
|Logo|The logo of the organisation.|logo|`Association`<br><a href="#imageobject">ImageObject</a>|0. .1|||

<a name="FN2">[2]: See chapter 5.1.4 in [Draft ETSI EN 319 412-1 V1.4.2](https://www.etsi.org/deliver/etsi_en/319400_319499/31941201/01.04.02_20/en_31941201v010402a.pdf)</a>

### <a name="contactinformation">Contact information</a>
**Class description**: Details to Contact an Agent. A contact point for an agent.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Context|A note about the contact point (e.g. availability or usage note).|note|`Property`<br>Note|*|||
|Contact Details|A free text describing the contact details.|description|`Property`<br>Note|0. .1|||
|Postal Address|A postal address used for contacting the agent.|postalAddress|`Association`<br><a href="#address">Address</a>|*|||
|Phone Number|A phone number used for contacting the agent.|phone|`Association`<br><a href="#phone">Phone</a>|*|||
|E-Mail Address|An e-mail address used for contacting the agent.|email|`Association`<br><a href="#mailbox">Mailbox</a>|*|||
|Wallet Address|The wallet address of the agent.|walletAddress|`Association`<br><a href="#mailbox">Mailbox</a>|*|||
|Contact Form|A contact form used for contacting the agent.|contactForm|`Association`<br><a href="#interactivewebresource">InteractiveWebResource</a>|*|||

### <a name="learningopportunity">Learning Opportunity</a>
**Class description**: An opportunity to realise a given set of learning outcomes via a learning activity and/or assessment.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Learning Opportunity UID|The unique and portable identifier of the Learning Opportunity.|id|`ID/PK`<br>URI|1|||
|Learning Opportunity Identifier|An alternative identifier assigned to the learning opportunity by the organisation offering the opportunity.|identifier|`Property`<br>Identifier|*|||
|Title|The title of the learning opportunity.|title|`Property`<br>Text|1|||
|Description|A free text description (summary) of the learning opportunity.|description|`Property`<br>Note|0. .1|||
|More Information|An additional free text note about the learning opportunity.|additionalNote|`Property`<br>Note|*|||
|Homepage|The homepage (a public web document) of the learning opportunity.|homePage|`Association`<br><a href="#webdocument">WebDocument</a>|*|||
|Other Documents|A public web document containing additional documentation about the learning opportunity.|supplementaryDocument|`Association`<br><a href="#webdocument">WebDocument</a>|*|||
|Start Date|The start date from which a person may follow the learning opportunity.|startedAtDate|`Property`<br>Date|0. .1|||
|End Date|The final date a person may start to follow the learning opportunity.|endedAtDate|`Property`<br>Date|0. .1|||
|Duration|The nominal duration for which the learning opportunity will continue to run. Note, this may be after the end-date, since admissions may be closed but the learning opportunity may still be ongoing.|duration|`Property`<br>Duration|0. .1|||
|Learning Schedule|The learning schedule.|learningSchedule|`Property`<br>Code|0. .1||[Europass Standard List of Learning Schedule Types](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://data.europa.eu/snb/learning-schedule/25831c2)|
|Schedule Information|Detailed information about the timetable or schedule. This may include weekly schedules (e.g. "Every Monday, 4pm", but may also include the overall schedule for the course, (e.g. October: lectures, November: group-work, December: break, January: assessment).|scheduleInformation|`Property`<br>Note|0. .1|||
|Admissions Procedure|Specific information on how to apply for the course |admissionProcedure|`Property`<br>Note|0. .1|||
|Fees|Information about the pricing of the course, including fees and scholarships/subsidies available|priceDetails|`Association`<br><a href="#pricedetails">PriceDetails</a>|*|||
|Provided by|The organisation providing or directing the learning opportunity. In the case of, e.g. joint qualifications, there may be several organisations directing the learning opportunity. |providedBy|`Association`<br><a href="#organisation">Organisation</a>|*|||
|Provided at|The location where the learning opportunity will take place. This may also include a virtual space.|providedAt|`Association`<br><a href="#location">Location</a>|*|||
|Learning Specification|The learning specification, including the curricula, of this learning opportunity.|specifiedBy|`Association`<br><a href="#learningspecification">LearningSpecification</a>|0. .1|||
|Sub-Opportunities|A learning opportunity can be composed of other "narrower" learning opportunities, which when combined make up this larger learning opportunity.|hasPart|`Association`<br><a href="#learningopportunity">LearningOpportunity</a>|*|||
|Banner Image|An image which is displayed alongside the learning opportunity|bannerImage|`Association`<br><a href="#imageobject">ImageObject</a>|0. .1|||

### <a name="pricedetails">Price Details</a>
**Class description**: The price details. The details about a price or price category.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Price Details UID|The portable and unique identifier of the Price Details.|id|`ID/PK`<br>URI|1|||
|Price Category Identifier|The identifier of the price category, allocated by the organisation charging the fee.|Identifier|`Property`<br>Identifier|*|||
|Fee|The full (sticker) price of the learning opportunity.|amount|`Property`<br>Amount|0. .1|||
|Price Category Name|The name of the price/price category.|name|`Property`<br>Text|0. .1|||
|Description|A free text describing the price.|description|`Property`<br>Note|0. .1|||
|Subsidies|An additional free text note about the price.|additional note|`Property`<br>Note|*|||

### <a name="accreditation">Accreditation</a>
**Class description**: The quality assurance or licensing of an organisation or a qualification. An accreditation instance can be used to specify information about:
- the quality assurance and/or licensing of an organisation.
- the quality assurance and/or licensing of an organisation with respect to a specific qualification.

|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Accreditation ID|The portable and unique identifier of the accreditation record.|id|`ID/PK`<br>URI|1|||
|Accreditation Identifier|An alternative Identifier of the Accreditation, as assigned to it by the accrediting agent.|identifier|`Property`<br>Identifier|*|||
|Accreditation Type|The type of accreditation.|accreditationType|`Property`<br>Code|1||[Europass Standard List of Accreditation Types](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://data.europa.eu/snb/accreditation/25831c2)|
|Title|A title of the accreditation.|title|`Property`<br>Text|0. .1|||
|Description|A free text description of the accreditation.|description|`Property`<br>Note|0. .1|||
|Decision|The Quality Decision issued by the Quality Assuring Authority.|decision|`Property`<br>TextScore|0. .1|||
|Report|A publicly accessible report of the quality assurance decision|report|`Association`<br><a href="#webdocument">WebDocument</a>|0. .1|||
|Organisation|The organisation whose activities are being accredited.|organisation|`Association`<br><a href="#organisation">Organisation</a>|1|||
|Qualification Accredited|The qualification that was accredited.|limitQualification|`Association`<br><a href="#qualification">Qualification</a>|0. .1|||
|Accredit for Thematic Area|The field of education for which the accreditation is valid.|limitField|`Properties`<br>Code|*||[ISCED-F](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://data.europa.eu/snb/isced-f/25831c2)|
|Accredited for EQF Level|The european qualification level for which the accreditation is valid.|limitEQFLevel|`Properties`<br>Code|*||[EQF](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://data.europa.eu/snb/eqf/25831c2)|
|Accredited in Jurisdiction|The jurisdiction for which the accreditation is valid.|limitJurisdiction|`Properties`<br>Code|*||[Country Named Authority List](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://publications.europa.eu/resource/authority/country)|
|Accrediting Agent|The Quality Assuring Authority. (i.e assurer)|accreditingAgent|`Association`<br><a href="#organisation">Organisation</a>|1|||
|Issue Date|The date when the accreditation was formally approved/issued.|issueDate|`Property`<br>DateTime|0. .1|||
|Review Date|The date when the accreditation has to be re-viewed.|reviewDate|`Property`<br>DateTime|0. .1|||
|Expiry Date|The date when the accreditation expires or was expired.|expiryDate|`Property`<br>DateTime|0. .1|||
|More Information|An additional free text note about the accreditation. |additionalNote|`Property`<br>Note|*|||
|Homepage|The homepage of the accreditation.|homePage|`Association`<br><a href="#webdocument">WebDocument</a>|*|||
|Landing Page|The landing page of the accreditation.| landingPage                                                  |`Association`<br><a href="#webdocument">WebDocument</a>|*|||
|Other Documents|A public web document containing additional documentation  describing the Accreditation Procedures and Standards.|supplementary document|`Association`<br><a href="#webdocument">WebDocument</a>|*|||

### <a name="verifiablepresentation">Verifiable Presentation</a>
**Class description**: A verifiable presentation of a set of credentials. A composition of a set of credentials that can be presented to and verified by a verifier.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Verifiable Presentation UID|A portable identifier of the presentation.|id|`ID/PK`<br>URI|0. .1|||

### <a name="europasspresentation">Europass Presentation</a>
**Class description**: A verifiable presentation of a set of Europass credentials.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Verifiable Credential|A verifiable EuropassCredential.|verifiableCredential|`Association`<br><a href="#europasscredential">EuropassCredential</a>|*|||
|Verification Check||verificationCheck|`Association`<br><a href="#verificationcheck">VerificationCheck</a>|*|||
|Proof|The cryptographic proof that can be used to detect tampering and verify the authorship of a presentation.|proof|`Association`<br><a href="#proof">Proof</a>|*|||

### <a name="verificationcheck">Verification Check</a>
**Class description**: A verification check.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Verification Check UID|The portable and unique identifier of the verification check.|id|`ID/PK`<br>URI|1|||
|Type|The type of verification check.|type|`Property`<br>Code|1||[Europass Standard List of Verification Types](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://data.europa.eu/snb/verification/25831c2)|
|Subject|The credential subject of this verification check.|subject|`Association`<br><a href="#europasscredential">EuropassCredential</a>|1|||
|Status|The result.|status|`Property`<br>Code|1||[Europass Standard List of Verification Statuses](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://data.europa.eu/snb/verification-status/25831c2)|
|Description|A free text description of the check and the result.|description|`Property`<br>Note|0. .1|||

## <a name="mediaclasses">Media Classes</a>

### <a name="interactivewebresource">Interactive Web Resource</a>
**Class description**: A web resource that can be used to communicate.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|URL|The URL to access the interactive web resource.|id|`ID/PK`<br>URL|0. .1|||

### <a name="phone">Phone</a>
**Class description**: A phone number.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Full Phone Number|The full phone number as a string.|phoneNumber|`Property`<br>String|0. .1|||
|Country Dialing code|The country dialing code for a contact number.|countryDialing|`Property`<br>String|0. .1|||
|Area Dialing Code|The area dialing code for a contact number.|areaDialing|`Property`<br>String|0. .1|||
|Phone Number|The contact number, not including country dialling or area dialling codes. (e.g. "3445654", "1234567", etc.).|dialNumber|`Property`<br>String|0. .1|||

### <a name="mailbox">Mailbox</a>
**Class description**: A mailbox.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|E-mail|The e-mail address.|id|`ID/PK`<br>URI|1|||

### <a name="address">Address</a>
**Class description**: An address.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Address UID|The protable and unique identifier of the address.|id|`ID/PK`<br>URI|1|||
|Identifier|An address identifier.|identifier|`Property`<br>Identifier|*|||
|Full Address|The complete address with or without formatting.|fullAddress|`Property`<br>Note|0. .1|||
|Country|The address’ country code.|countryCode|`Property`<br>Code|1||[Country Named Authority List](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://publications.europa.eu/resource/authority/country)|

### <a name="location">Location</a>
**Class description**: An identifiable geographic place.

|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Location UID|A portable identifier of the location.|id|`ID/PK`<br>URI|1|||
|Identifier|A location identifier.|identifier|`Property`<br>Identifier|*|||
|Name|A proper noun applied to a spatial object.|geographicName|`Property`<br>Text|0. .1|||
|Location|A code identifying a spatial scope in which this physical location is located.|spatialCode|`Property`<br>Code|*|| [Administrative territorial unit Authority Table](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://publications.europa.eu/resource/authority/atu) |
|Description|A free text describing the location.|description|`Property`<br>Note|0. .1|||
|Address|An address associated with the location.|hasAddress|`Association`<br><a href="#address">Address</a>|*|||

### <a name="webdocument">Web Document</a>
**Class description**: A public web document.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|URL|The URL of the web document.|id|`ID/PK`<br>URL|1|||
|Document Name|The name of the document.|title|`Property`<br>Text|0. .1|||
|Language|The language of the document.|language|`Property`<br>Code|0. .1||[Language Named Authority List](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://publications.europa.eu/resource/authority/language)|
|Subject|This property is used to point to the topic that is described in the document. The information topic specifies what kind of information is provided in the document.|subject|`Property`<br>Code|*|||

### <a name="mediaobject">Media Object</a>
**Class description**: A media object.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Media Object UID|A portable identifier of the media object.|id|`ID/PK`<br>URI|1|||
|Content Type|The media type of the media object.|contentType|`Property`<br>Code|1|| [Filetype](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://publications.europa.eu/resource/authority/file-type) |
|Content Encoding|The encoding used to encode the binary data.|contentEncoding|`Property`<br>Code|0. .1||[Europass Standard List of Content Encoding Types](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://data.europa.eu/snb/encoding/25831c2)|
|Content Size|The content size.|contentSize|`Property`<br>xsd:integer|0. .1|||
|Content|The binary data.|content|`Property`<br>xsd:string|0. .1| ||
|Content URL|The public access URL.|contentUrl|`Property`<br>xsd:anyURI|0. .1|||

### <a name="imageobject">Image Object</a> < extends MediaObject >
**Class description**: Still image.
|Label|Definition|Field|`Type`<br>Range (data type)|Card|Suggested Use|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Media Type|The media type of the image resource.|contentType|`Property`<br>Code|0. .1||[Filetype](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://publications.europa.eu/resource/authority/file-type)|

## <a name="structureddatatypes">Structured Data Types</a>

### <a name="identifier-compositetype">Identifier - Composite Type</a>
**Definition**: A character string used to identify a resource.  
An identifier is a character string used to uniquely identify one instance of an object within an identification scheme that is managed by an agency.  
The Identifier class is a critical aspect of the edci model. It is used to identify persons and organisations. In these cases and more, the identifier itself will be some sort of alpha-numeric string but that string only has meaning if it is contextualised.

|Data Type|Field|`Type`<br>Range (data type)|Card|Definition|Description|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Identifier|Content|`Attribute`<br>String|1|Content string which is the identifier.|Content string which is the identifier. A character string used to uniquely identify one instance of an object within an identification scheme that is managed by an agency.||
|Identifier|Identifier Scheme ID|`Attribute`<br>String|0. .1|Identification of the identifier scheme.|Identification of the identifier scheme. The identifier register (the managing/originating system of the identifier). This can be seen as the namespace in which the assigned identifier is unique.||
|Identifier|Identifier Scheme Version ID|`Attribute`<br>String|0. .1|Identification of the version of the identifier scheme.|Identification of the version of the identifier scheme.||
|Identifier|Identifier Scheme Agency ID|`Attribute`<br>String|0. .1|Identification of the agent that manages the identifier scheme.|Identification of the agent that manages the identifier scheme. The agent that issued the identifier. (e.g. a URI).||
|Identifier|Identifier Scheme Name|`Attribute`<br>String|0. .1|The name of the identifier scheme.|The name of the identifier scheme.||
|Identifier|Identifier Scheme Agency Name|`Attribute`<br>String|0. .1|The name of the agent that manages the identifier scheme.|The name of the agent that manages the identifier scheme. The agent that issued the identifier.||
|Identifier|Issued Date|`Attribute`<br>Date|0. .1|The date on which the identifier was issued|The date on which the identifier was issued||
|Identifier|Identifier Type|`Attribute`<br>String|*|A code used to classify the type of identifier|A code used to classify the type of identifier||

### <a name="leagalidentifier-compositetype">LegalIdentifier - Composite Type</a> < extends Identifier >
**Definition**: A legal identifier.
A legal identifier is a formally issued identifier by a given authorithy within a given jurisdiction. The identifier has a spatial context.
|Data Type|Field|`Type`<br>Range (data type)|Card|Definition|Description|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Identifier|Spatial ID|`Attribute`<br>String|1|The identifier of the country and/or jurisdiction.|The identifier of the country and/or jurisdiction.|[MDR Countries Named Authority List](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://publications.europa.eu/resource/authority/country) ([NUTS](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://data.europa.eu/nuts))|

### <a name="code-compositetype">Code - Composite Type</a>
**Definition**: A term from a controlled vocabulary. (a code from a code list)
Interoperability between data sets is increased dramatically when terms from controlled vocabularies are used in favour of free text. The conceptual Code data type is used wherever one or more controlled vocabularies are known to exist for a particular domain of interest. It is not the job of the JV/CV Vocabularies to mandate which controlled vocabularies are used but we offer some guidance on how to use them.
|Data Type|Field|`Type`<br>Range (data type)|Card|Definition|Description|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Code|Target Notation|`Attribute`<br>String|0. .1||The term.||
|Code|Target Framework URI|`Attribute`<br>String|1|The identification of the controlled vocabulary.|The identification of the controlled vocabulary (the code list). (e.g. a URI)||
|Code|Target Framework|`Text`<br>String|0. .1|The name of the controlled vocabulary.|The name of the controlled vocabulary (the code list).||
|Code|Target Name|`Text`<br>String|1|The text equivalent of the code content component.|The text equivalent of the code content component.||
|Code|Target Description|`Text`<br>String|0. .1||||
|Code|URI|`Attribute`<br>String|1|A portable identifier (i.e a URI) of the code.|A portable identifier (i.e a URI) of the code.||

### <a name="text-compositetype">Text - Composite Type</a>
**Definition**: A character string (i.e. a finite set of characters) generally in the form of words of a language.
|Data Type|Field|`Type`<br>Range (data type)|Card|Definition|Description|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Text|Content|`Attribute`<br>String|1|The character string.|The character string.||
|Text|ContentType|`Attribute`<br/>String|0. .1|The text format specified by the corresponding mimetype (or just type) (text/plain, text/html).|The text format specified by the corresponding mimetype (or just type) (text/plain, text/html).||
|Text|Language|`Attribute`<br>String|0. .1|The identifier of the language used in the Content attribute.|The identifier of the language used in the Content attribute.||

### <a name="note-compositetype">Note - Composite Type</a>
**Definition**: A formatted character string (i.e. a finite set of characters) generally in the form of words of a language. The character string is passed/included in, and can be represented as, a (formatted) document fragment (formatted) according a given mimetype (e.g. "text/plain", "text/html", etc.)
|Data Type|Field|`Type`<br>Range (data type)|Card|Definition|Description|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Note|Content|`Attribute`<br>String|1|The free text note.|The free text note.||
|Note|Language|`Attribute`<br>String|0. .1|The identifier of the language used in the Content attribute.|The identifier of the language used in the Content attribute.||
|Note|Format|`Attribute`<br>String|0. .1|The identifier of the mimetype used in the Content attribute.|The identifier of the mimetype used in the Content attribute.||
|Note|Topic|`Attribute`<br>String|*|The information topic this note is about.|The information topic this note is about.||

### <a name="notation-compositetype">Notation - Composite Type</a>
**Definition**: A notation (or code) is a character string according a given syntax encoding scheme.

|Data Type|Field|`Type`<br>Range (data type)|Card|Definition|Description|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Notation|Content|`Attribute`<br>String|1|A notation (or code).|A notation (or code).||
|Notation|Scheme ID|`Attribute`<br>String|0. .1|The syntax encoding scheme.|The syntax encoding scheme. A particular system of notations or classification codes.||

### <a name="score-compositetype">Score - Composite Type</a>
**Definition**: A score.

|Data Type|Field|`Type`<br>Range (data type)|Card|Definition|Description|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Score|Content|`Attribute`<br>Literal|1|The score.|The score.||
|Score|Scoring Scheme ID|`Attribute`<br>String|0. .1|The identifier of the scoring scheme used in the Content attribute.|The identifier of the scoring scheme used in the Content attribute. Refers to the type of scoring methodology or convention.||

### <a name="numericscore">NumericScore</a> < extends Score >
**Definition**: A numeric score.
|Data Type|Field|`Type`<br>Range (data type)|Card|Definition|Description|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|NumericScore|Content|`Attribute`<br>Numeric|1|The numeric score.|The numeric score.||

### <a name="textscore">TextScore</a> < extends Score >
**Definition**: A textual score.
|Data Type|Field|`Type`<br>Range (data type)|Card|Definition|Description|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|TextScore|Content|`Attribute`<br>String|1|The textual score.|The textual score.||

### <a name="amount-compositetype">Amount - Composite Type</a>
**Definition**: An amount.
|Data Type|Field|`Type`<br>Range (data type)|Card|Definition|Description|Recommended Controlled Vocabulary|
|--|--|--|--|--|--|--|
|Amount|Content|`Attribute`<br>Numeric|1|The numeric value (i.e. price, salary, etc.).|||
|Amount|Unit|`Attribute`<br>String|1|A code indicating the currency in which the amount is indicated/expressed.||[Currencies Named Authority List](https://op.europa.eu/en/web/eu-vocabularies/concept-scheme/-/resource?uri=http://publications.europa.eu/resource/authority/currency)|

### <a name="primitivetypestructureddatatypes">Primitive Type Structured Data Types</a>

|Data Type|Range (data type)|Definition|
|--|--|--|
|String|xsd:string|A character string, i.e., a finite set of characters.|
|DateTime|xsd:dateTime|A date designating a point in time. Specifies a date and a time.|
|Date|xsd:date|A date.|
|URI|xsd:anyURI|A Uniform Resource Identifier.|
|IndicatorType|xsd:boolean|A boolean indicating true or false.|
|PercentType|xsd:decimal|A rate, number or proportion per hundred.|
|PositiveInteger|xsd:positiveInteger|A positive integer.|
|Numeric|xsd:decimal|A numeric value.|
|Duration|xsd:duration||
