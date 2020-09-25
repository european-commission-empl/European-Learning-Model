# Europass Learning Model

## Content Classes

### Verifiable Credential < abstract >
**Class description**: A set of one or more claims made by an issuer.
A credential is a set of one or more claims made by the same entity. A verifiable credential is a tamper-evident credential that has authorship that can be cryptographically verified. Verifiable credentials can be used to build verifiable presentations, which can also be cryptographically verified.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Credential UID|The unique identifier of the credential.|id|`ID/PK`<br>URI|1|A portable identifier of the credential.||
|Issuance Date|N/A|issuanceDate|`Property`<br>DateTime|1|The issuance date.||
|Issue Date|N/A|issued|`Property`<br>DateTime|1|The date and time the credential was digitally signed.||
|Valid From|The earliest date when the information associated with the credential owner became valid.|validFrom|`Property`<br>DateTime|1|The earliest date when the information associated with the credentialSubject property became valid.||
|Expiry Date|N/A|expirationDate|`Property`<br>DateTime|0. .1|The expiration date.||

### Europass Credential < extends VerifiableCredential >
**Class description**: A set of claims made by an issuer in Europe, using the Europass Standards.
A Europass credential is a set of one or more claims which may be used to demonstrate that the owner has certain skills or has achieved certain learning outcomes through formal, non-formal or informal learning.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Credential Identifier|An identifier assigned to the credential by the issuing organisation.|identifier|`Property`<br>Identifier|*|An alternative identifier of the credential.||
|Type||type|`Property`<br>Code|1|The type of credential.|Europass Standard List of Credential Types|
|Title|The full official title of the issued credential (maximum 50 characters).|title|`Property`<br>Text|1|The credential title.||
|Description|A summary of the claim or group of claims being made about a person (maximum 140 words).|description|`Property`<br>Note|0. .1|A summary of the credential.||
|Issuer|The organisaton that issued the credential and sealed it with their digital e-seal.|issuer|`Association`<br>Organisation|1|The issuer of the credential.||
|Owner|The person about which claims are made and who owns the credential.|credentialSubject|`Association`<br>Person|1|The person about which claims are made and who owns the credential.||
|Sub-credentials|Smaller sub-credentials (micro-credentials), which when combined make up this  learning opportunity.|contains|`Association`<br>EuropassCredential|*|A credential embedded within the credential.||
|Proof|The cryptographic proof that can be used to detect tampering and verify the authorship of a credential.|proof|`Association`<br>Proof|1|The cryptographic proofs that can be used to detect tampering and verify the authorship of a credential or presentation.||
|Display Parameters|N/A|display|`Association`<br>DisplayParameters|0. .1|The display details of the credential.||
|Attachments|N/A|attachment|`Association`<br>MediaObject|*|Any digital document (PDF, JPEG or PNG format) that an issuer has attached to the Europass document.||

### Proof
**Class description**: The cryptographic proof that can be used to detect tampering and verify the authorship of a credential or presentation.

### Display Parameters
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Display Code|The code indicating how to display the summary view of the credential.|summaryDisplay|`Property`<br>xsd:string|0. .1|The code indicating how to display the summary view of the credential.||
|Background Image|N/A|background|`Association`<br>ImageObject|0. .1|The background image of the credential.||

### Learning Specification
**Class description**: A description of what a person may learn using the opportunity, expressed as learning outcomes. A specification of learning.

|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Learning Specification UID|The unique identifier of the learning specification.|id|`ID/PK`<br>URI|1|A portable identifier of the learning specification.||
|Learning specification Identifier|The Identifier of the Learning Specification, as assigned to it by the organisation who designed the specification.|identifier|`Property`<br>Identifier|*|An alternative identifier of the learning specification.||
|Learning Opportunity Type|N/A|learningOpportunityType|`Property`<br>Code|*|The type of learning opportunity.|Europass Standard List of Learning Opportunity Types.|
|Title|N/A|title|`Property`<br>Text|0. .1|The title of the learning specification.||
|N/A|N/A|alternativeLabel|`Property`<br>Text|*|An alternative name of the learning specification.||
|Description|N/A|definition|`Property`<br>Note|0. .1|Short and abstract description about the learning specification.||
|N/A|N/A|learningOutcomeDescription|`Property`<br>Note|0. .1|The full learning outcome description of the learning specification.||
|More information|N/A|additionalNote|`Property`<br>Note|*|An additional free text note about the learning specification.||
|Homepage|Webpage describing the learning specification|homePage|`Association`<br>WebDocument|*|The homepage (a public web document) of the learning specification.||
|Other Documents|Other Web Documents describing the learning specification|supplementaryDocument|`Association`<br>WebDocument|*|A public web document containing additional documentation about the learning specification.||
|Thematic Area|Thematic Area according to the ISCED-F Classification|ISCEDFCode|`Property`<br>Code|*|The ISCED FoET 2013 classification code.|ISCED-F.|
|N/A|N/A|educationSubject |`Association`<br>EducationSubjectAssociation|*|An associated field of education from another semantic framework than the ISCED classification.||
|Volume of Learning|The estimated number of hours the learner is expected to spend engaged in learning to earn the award. This would include the notional number of hours in class, in group work, in practicals, as well as hours engaged in self-motivated study.|volumeOfLearning|`Property`<br>Duration|0. .1|The volume of learning.||
|ECTS Credit Points|The credit points assigned to the learning specification, following the ECTS credit system.|ECTSCreditPoints|`Property`<br>NumericScore|0. .1|The credit points assigned to the learning specification, following the ECTS credit system.|ECTS scoring scheme from Europass Standard List of Educational Credit Systems.|
|N/A|The credit points assigned to the learning specification, following an alternative educational credit system.|creditPoints|`Property`<br>NumericScore|*|The credit points assigned to the learning specification, following an alternative educational credit system.|Europass Standard List of Educational Credit Systems.|
|N/A|An associated level of education within a semantic framework describing education levels.|educationLevel|`Association`<br>EducationLevelAssociation|*|An associated level of education within a semantic framework describing education levels.||
|Language(s) of Instruction|N/A|language|`Property`<br>Code|*|The instruction and/or assessment language(s) used.|MDR Languages Named Authority List|
|Mode of Learning|N/A|mode|`Property`<br>Code|*|The mode of learning and or assessment.|Europass Standard List of Modes Of Learning and Assessment.|
|Learning Setting|N/A|learningSetting|`Property`<br>Code|0. .1|The type of learning setting.|formal, non-formal.|
|Maximum Duration in Months|The maximum duration (in months) that a person may use to complete the learning opportunity.|maximumDuration|`Property`<br>Duration|0. .1|The maximum duration of a learning opportunity for which this specification is designed.||
|Target Group|N/A|targetGroup|`Property`<br>Code|*|A specific target group or category for which this specification is designed.|Europass Standard List of Target Groups.|
|Entry Requirements|The criteria the person should meet to start this learning opportunity.|entryRequirementsNote|`Property`<br>Note|0. .1|Specific entry requirements or prerequisites of individuals for which this specification is designed.||
|Learning Outcomes|N/A|learningOutcome|`Association`<br>LearningOutcome|*|An individual (expected) learning outcome of the learning specification.||
|Activities|Activities which a person can perform to acquire the expected learning outcomes|learningActivitySpecification|`Association`<br>LearningActivitySpecification|0. .1|What will or can an individual do to learn.||
|Assessments|Assessments a person can undergo to prove the acquisition of the learning outcomes|assessmentSpecification|`Association`<br>AssessmentSpecification|0. .1|How will a learner be assessed.||
|Entitlements|Rights (such as  which the person may acquire as a result of acquiring the learning outcomes)|entitlementSpecification|`Association`<br>EntitlementSpecification|*|A specification of an entitlement to which this LearningSpecification may give rise to.||
|Awarding Information|Information about the award of a qualification or other achievement on completing this opportunity.|awardingOpportunity|`Association`<br>AwardingOpportunity|*|Refers to an activity related to the awarding of the learning specification, such as the country or region where the qualifi-cation is awarded, the awarding body and optionally the awarding period now or in the past.||
|Learning Sub-Specifications|Smaller learning specifications, which when combined make up this  learning specification.|hasPart|`Association`<br>LearningSpecification|*|A learning specification can be composed of other "narrower" learning specifications.||
|N/A|N/A|specialisationOf|`Association`<br>LearningSpecification|*|A learning specification (e.g. a standard) of which this specification is a specialisation.||

### Qualification < extends LearningSpecification >
**Class description**: a specification of an assessment and validation process which is obtained when a competent authority determines that an individual has achieved learning outcomes to given standards.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|EQF Level|N/A|EQFLevel|`Association (sub-property of education level)`<br>QFLevelAssociation|0. .1|The qualification level as specified by the European Qualification Framework.|EQF. QDR List of qualification frameworks.|
|NQF Level|Level on the Awarding Body's National Qualification Framework|NQFLevel|`Association (sub-property of education level)`<br>QFLevelAssociation|*|The qualification level as specified by a National Qualification Framework.|QDR List of qualification frameworks|
|Partial Qualification|Is the opportunity a partial qualification?|isPartialQualification|`Property`<br>xsd:boolean|0. .1|Indicates whether a qualification is a full qualification or part of another qualification. ||
|Accreditation|N/A|hasAccreditation|`Association`<br>Accreditation|*|The accreditation of a qualification.||
|Link to Europass Qualification Record|N/A|qualificationCode|`Association`<br>QualificationAssociationType|*|An identifying code from a qualification based reference semantic asset.|NQF qualifications from QDR.||

### Learning Outcome
**Class description**: a statement regarding what a learner knows, understands and is able to do on completion of a learning process, which are defined in terms of knowledge, skills and responsibility and autonomy.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Learning Outcome UID|The unique identifier of the learning outcome.|id|`PK/ID`<br>URI|1|A portable identifier of the learning outcome.||
|N/A|N/A|identifier|`Property`<br>Identifier|*|An alternative identifier of the learning outcome.||
|Title|N/A|name|`Property`<br>Text|1|A legible, descriptive name for the learning outcome.||
|Description|A detailed learning outcome may include a description of what the student can do as a result of learning, with an indication of the level of achievement, and the conditions or context under which this can be performed (if applicable).|description|`Property`<br>Note|0. .1|A free text describing the learning outcome.||
|Learning Outcome Type|N/A|learningOutcomeType|`Property`<br>Code|0. .1|The learning outcome type.|ESCO Skill Pilllar concept types.|
|Reusability Level|N/A|reusabilityLevel|`Property`<br>Code|0. .1|The reusability level.|ESCO Skill Pilllar concept reusability levels.|
|Related ESCO Skill(s)|N/A|relatedESCOSkill|`Association`<br>EscoSkillAssociation|*|A link to an ESCO Skill.|ESCO skills.|

### Learning Activity Specification
**Class description**: The specification of a process which leads to the acquisition of knowledge, skills or responsibility and autonomy.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Learning activity specification UID|The unique identifier of the learning activity specification.|id|`ID/PK`<br>URI|1|A portable identifier of the learning activity specification.||
|Learning Activity Specification Identifier|The Identifier of the Learning Activity, as assigned to it by the organisation who designed the specification.|identifier|`Property`<br>Identifier|*|An alternative identifier of the learning activity specification.||
|Learning activity type|N/A|learningActivityType|`Property`<br>Code|*|The type of activity.|Europass Standard List of Learning Activity Types.|
|Title|N/A|title|`Property`<br>Text|0. .1|The title of the learning activity specification.||
|N/A|N/A|alternativeLabel|`Property`<br>Text|*|An alternative name of the activity specification.||
|Description|N/A|description|`Property`<br>Note|0. .1|A free text description of the learning activity specification.||
|More information|N/A|additionalNote|`Property`<br>Note|*|An additional free text note about the learning activity specification.||
|Homepage|Webpage describing the activity specification|homePage|`Association`<br>WebDocument|*|The homepage (a public web document) of the learning activity specification.||
|Other Documents|Any other web documents describing the activity specification|supplementaryDocument|`Association`<br>WebDocument|*|A public web document containing additional documentation about the learning activity specification.||
|Volume of Learning|The estimated number of hours the learner is expected to spend engaged in the activity. This would include the notional number of hours in class, in group work, in practicals, as well as hours engaged in self-motivated study.|workload|`Property`<br>Duration|0..1|The expected workload.||
|Language(s) of Instruction|N/A|language|`Property`<br>Code|*|The instruction language(s) used.|http://data.europa.eu/esco/skill/58095196-d766-4a5c-b16c-d941489f8e66|
|Mode of learning|N/A|mode|`Property`<br>Code|0. .1|The mode of learning and or assessment.|Europass Standard List of Modes Of Learning and Assessment.|
|Expected Learning Outcomes|N/A|teaches|`Association`<br>LearningSpecification|*|The expected learning outcomes this learning activity specification can lead or contribute to.|NEED TO CORRECT ALL TEXT HERE! Relation is correct, but all labels are not.|
|Learning Activity Sub-Specifications|Smaller learning specifications, which when combined make up this learning specification.|hasPart|`Association`<br>LearningActivitySpecification|*|A learning activity specification can be composed of other "narrower" learning activity specifications.||
|N/A|N/A|specialisationOf|`Association`<br>LearningActivitySpecification|*|An activity specification (e.g. a standard) of which this specification is a specialisation. ||

#### Learning Activity
**Class description**: Any process which leads to the acquisition of knowledge, skills or responsibility and autonomy.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Learning Activity UID|The unique identifier of the learning activity.|id|`ID/PK`<br>URI|1|A portable identifier of the learning activity. ||
|Learning Activity Identifier|An identifier assigned to the assessment by the organisation directing the activity.|identifier|`Property`<br>Identifier|*|An alternative identifier of the learning activity.||
|Title|N/A|title|`Property`<br>Text|1|The title of the learning activity.||
|Description|N/A|description|`Property`<br>Note|0. .1|A free text description of the learning activity.||
|More information|N/A|additionalNote|`Property`<br>Note|*|An additional free text note about the activity.||
|Workload in Hours|The actual number of hours the learner has spent engaged in the activity. This would include the number of hours in class, in group work, in practicals, as well as hours engaged in self-motivated study.|workload|`Property`<br>Duration|0. .1|The actual workload.||
|Start-Date|The date the learner started the activity|startedAtTime|`Property`<br>DateTime|0. .1|The date at which the activity started.||
|End-Date|The date the learner ended the activity|endedAtTime|`Property`<br>DateTime|0. .1|The date at which the activity ended.||
|Directed by|The organisation, or part of an organisation such as department, faculty, which directed the learning activity.|directedBy|`Association`<br>Agent|*|The directing agent.||
|Location|The location the activity took place|location|`Association`<br>Location|*|The location where the activity took place.||
|Linked to Learning Opportunity|N/A|usedLearningOpportunity|`Association`<br>LearningOpportunity|0. .1|The used or taken opportunity to do this learning activity.||
|N/A|N/A|specifiedBy|`Association`<br>LearningActivitySpecification|0. .1|The specification of this learning activity.||
|Sub-Activities|Smaller units of activity, which when combined make up this activity.|hasPart|`Association`<br>LearningActivity|*|A sub-activity.||
|Achievements Influenced|Performing this activity contributed to the acquisition of these learning achievements.|influenced|`Association`<br>Achievement|*|A related achievement.||

### Assessment Specification
**Class description**: An Assessment Specification is a specification of a process establishing the extent to which a learner has attained particular knowledge, skills and competences against criteria such as learning outcomes or standards of competence.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Assessment Specification UID|The Unique Identifier of the Assessment Specification|id|`ID/PK`<br>URI|1|A portable identifier of the assessment specification.||
|Assessment Specification Identifier|The Identifier of the Assessment Specification, as assigned to it by the organisation who designed the specification.|identifier|`Property`<br>Identifier|*|An alternative identifier of the assessment specification.||
|Assessment Type|N/A|assessmentType|`Property`<br>Code|*|The type of assessment.|Europass Standard List of Assessment Types.|
|Title|N/A|title|`Property`<br>Text|0. .1|The title of the assessment specification.||
|N/A|N/A|alternativeLabel|`Property`<br>Text|*|An alternative name of the assessment specification.||
|Description|N/A|description|`Property`<br>Note|0. .1|A free text description of the assessment specification.||
|More information|N/A|additionalNote|`Property`<br>Note|*|An additional free text note about the assessment specification.||
|Homepage|Webpage describing the details of the assessment specification|homePage|`Association`<br>WebDocument|*|The homepage (a public web document) of the assessment specification.||
|Other Documents|Other Web Documents describing the assessment specification|supplementaryDocument|`Association`<br>WebDocument|*|A public web document containing additional documentation about the assessment specification.||
|Language of Assessment|N/A|language|`Property`<br>Code|*|The language(s) of assessment used.|MDR Languages Named Authority List.|
|Mode of Assessment|N/A|mode|`Property`<br>Code|0. .1|The mode of learning and or assessment|Europass Standard List of Modes Of Learning and Assessment.|
|Grading Scheme|N/A|gradingscheme|`Association`<br>ScoringScheme|0. .1|A description of the Grading Scheme.||
|Demonstrates|The learning achievement (and related learning outcomes) this assessment is designed to test.|proves|`Association`<br>LearningSpecification|*|A specification of which learning outcomes are or have been proven.||
|Assessment Sub-Specifications|Smaller assessment specifications, which when combined make up this assessment specification.|hasPart|`Association`<br>AssessmentSpecification|*|A assessment specification can be composed of other "narrower" assessment specifications.||
|N/A|N/A|specialisationOf|`Association`<br>AssessmentSpecification|*|An assessment specification (e.g. a standard) of which this specification is a specialisation. ||

### Assessment
**Class description**: The result of a process establishing the extent to which a learner has attained particular knowledge, skills and competences against criteria such as learning outcomes or standards of competence.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Assessment UID|N/A|id|`ID/PK`<br>URI|1|A portable identifier of the assessment.||
|Assessment Identifier|An identifier assigned to the assessment by the organisation grading the assessment|identifier|`Property`<br>Identifier|*|An alternative identifier of the assessment.||
|Title|N/A|title|`Property`<br>Text|1|The title of the assessment.||
|Description|N/A|description|`Property`<br>Text|0. .1|A description of the assessment.||
|More information|N/A|additionalNote|`Property`<br>Note|*|An additional free text note about the assessment.||
|Grade|N/A|grade|`Property`<br>Score|1|A resulting grade of the assessment.||
|N/A|N/A|shortenedGrading|`Association`<br>ShortenedGrading|0. .1|Indicator of how well the student was graded when compared to other students.||
|N/A|N/A|resultDistribution|`Association`<br>ResultDistribution|0. .1|Describes a histogram of results achieved by all the students of a particular learning assessment.||
|Assessment Date|Date the grade was awarded.|issuedDate|`Property`<br>DateTime|0. .1|||
|Method of assessment, supervision and id verification|N/A|idVerification|`Property`<br>Code|0. .1|Method of assessment supervision and id verification.|Europass Standard List of Methods Of Supervision And Verification.|
|N/A|N/A|specifiedBy|`Association`<br>AssessmentSpecification|0. .1|The specification of this assessment.||
|Sub-Assessments|Smaller assessments, which when combined make up this assessment.|hasPArt|`Association`<br>Assessment|*|A related assessment that influenced the result of this assessment.||
|Assessment conducted by|N/A|assessedBy|`Association`<br>Agent|*|The competent body that awarded the grade.||

### Shortened Grading
**Class description**: Indicator of *how well* the student was graded when compared to other students.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|N/A|N/A|percentageLower|`Property`<br>Numeric|1|The percentage of students of the same course who got a lower grade.||
|N/A|N/A|percentageEqual|`Property`<br>Numeric|1|The percentage of students of the same course who got exactly the same grade.||
|N/A|N/A|percentageHigher|`Property`<br>Numeric|1|The percentage of students of the same course who got a higher grade.||

### Result Distribution
**Class description**: Describes a histogram of results achieved by all the students of this course instance.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|N/A|N/A|category|`Property`<br>ResultCategory|*|Describes a single range within the histogram.||
|N/A|N/A|description|`Property`<br>Note|0. .1|Free text description of the histogram.||

### Result Category
**Class description**: Description of a single score or score range within a histogram of results.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|N/A|N/A|label|`Property`<br>Text|1|The label of the histogram score or score range. Should correspond to the grading scheme which have been used. E.g. 'C', or '20-30'.||
|N/A|N/A|score|`Property`<br>Score|0. .1|||
|N/A|N/A|minScore|`Property`<br>Score|0. .1|||
|N/A|N/A|maxScore|`Property`<br>Score|0. .1|||
|N/A|N/A|count|`Property`<br>PositiveInteger|1|||

### Grading Scheme
**Class description**: A set of criteria that measures varying levels of achievement.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Grading Scheme UID|The unique identifier of the Grading Scheme.|id|`ID/PK`<br>URI|1|A portable identifier of the scoring scheme.||
|Grading Scheme Identifier|The Identifier of the Grading Scheme assigned to it by the organisation administering the scheme.|identifier|`Property`<br>Identifier|*|An alternative identifier of the scoring scheme.||
|Title|N/A|title|`Property`<br>Text|0. .1|The title of the scoring scheme.||
|Description|N/A|description|`Property`<br>Note|0. .1|A free tex describing the scoring scheme.||
|Other Documents|Other Web Documents describing the grading scheme|supplementaryDocument|`Association`<br>WebDocument|*|A public web document containing additional documentation about the scoring system.||

### Learning Achievement
**Class description**: The acquisition of knowledge, skills or responsibility and autonomy. A recognised and/or awarded set of learning outcomes of an individual.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Learning Achievement UID|The unique identifier of the learning achievement.|id|`ID/PK`<br>URI|1|A portable identifier of the achievement.||
|Learning Achievement Identifier|An identifier assigned to the achievement by the organisation awarding the achievement.|identifier|`Property`<br>Identifier|*|An alternative identifier of the achievement.||
|Title|N/A|title|`Property`<br>Text|1|The title of the achievement.||
|Description|N/A|description|`Property`<br>Note|0. .1|A description of the achievement.||
|More information|N/A|additionalNote|`Property`<br>Note|*|An additional free text note about the achievement.||
|Proven by|Assessment which proves the acquisition of the learning outcomes which make up the achievement.|wasDerivedFrom|`Association`<br>Assessment|*|An assessment on which the awarding of this achievement was based.||
|Influenced by|Activities which contributed to the acquisition of the learning outcomes which make up the achievement.|wasInfluencedBy|`Association`<br>LearningActivity|*|A learning activity associated with this achievement.||
|Entitles Owner to|Entitlements the owner has received as a result of this achievement.|entitlesTo|`Association`<br>Entitlement|*|An etitlement associated with this achievement.||
|Awarding Details|N/A|wasAwardedBy|`Association`<br>AwardingProcess|0. .1|The awarding details of this achievement.||
|Sub-achievements|Smaller units of achievement, which when combined make up this achievement.|hasPart|`Associatio`<br>LearningAchievement|*|A sub-achievement.||
|N/A|N/A|specifiedby|`Association`<br>LearningSpecification|1|What has been learned.||
|Linked to Learning Opportunity|N/A|associatedLearningOpportunity|`Association`<br>LearningOpportunity|0. .1|The learning opportunity that was taken to obtain the awarded LearningSpecification.||

### Qualification Awarded < extends LearningAchievement >
**Class description**: A formal outcome of an assessment and validation process which is obtained when a competent authority determines that an individual has achieved learning outcomes to given standards.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Qualification Awarded|N/A|specifiedBy|`Association`<br>Qualification|1|The details of the awarded qualification.||

### Awarding Process
**Class description**: The process of an organisation awarding Learning Achievement to person based on a Learning Specification (e.g. a qualification). It is used to specify the organisation that awarded the LearningSpecification to the individual, the country or region where the LearningSpecification was awarded, and optionally the date of awarding.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Awarding Process UID|The Unique Identifier of the Awarding Process.|id|`ID/PK`<br>URI|1|A portable identifier of the awarding process.||
|N/A|N/A|identifier|`Property`<br>Identifier|*|An alternative identifier of the awarding process.||
|Description|N/A|description|`Property`<br>Text|0. .1|A description of the awarding process to the individual.||
|More information|N/A|additionalNote|`Property`<br>Text|*|An additional free text note (e.g. a comment, a remark, etc.)||
|Assessment utilised|The assessment that provided the basis for this awarding.|used|`Association`<br>Assessment|*|The assessment that provided the basis for this awarding.||
|Learning achievement|N/A|learningAchievement|`Association`<br>LearningAchievement|1. .*|The resulting learning achievement.||
|Awarding organisation|The awarding body that awarded the achievement to the individual.|awardingBody|`Association`<br>Organisation|1. .*|The awarding body that awarded the Achievement to the individual. Only in cases of co-awarding/co-graduation, where a qualification award is issued to an individual by two or more organisations the cardinality is greater than 1.||
|Location|N/A|awardingLocation|`Association`<br>Location|0. .1|The location where the awarding activity took place (country/region where the qualification was awarded).|MDR Countries Named Authority List. NUTS (skossified and published version by ESCO).|
|Awarding Date|The date when the Learning Specification was awarded.|awardingDate|`Property`<br>DateTime|0. .1|The date when the LearningSpecification was awarded. If not specified it is undefined (“not known”).||

### Awarding Activity
**Class description**: An awarding activity represents an activity related to the awarding of a LearningSpecification. It is used to specify the country or region where the LearningSpecification is awarded, the awarding body and optionally the awarding period now or in the past.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|||id|`ID/PK`<br>URI|1|A portable identifier of the awarding opportunity.||
|||identifier|`Property`<br>Identifier|*|An alternative identifier of the awarding opportunity.||
|||awardedLearningSpecification|`Association`<br>LearningSpecification|1|The learning specification this awarding activity applies to.||
|||awardingBody |`Association`<br>Organisation|*|The awarding body related to this awarding activity (i.e the organisation that issues the qualification) Only in cases of co-awarding/co-graduation, where a qualification is issued to an individual by two or more organisations the cardinality is greater than 1||
|||location|`Property`<br>Code|0. .1|Location where the awarding activity takes place (country/region where the qualification is awarded)|MDR Countries Named Authority List; NUTS (skossified and published version by ESCO)|
|||startedAtTime|`Property`<br>DateTime|0. .1|The date since when the awarding activities take place. If not specified it is undefined (“not known”)||
|||endedAtTime|`Property`<br>DateTime|0. .1|The date until when the awarding activities take/took place||

### Entitlement
**Class description**: A right, e.g. to practice a profession, take advantage of a learning opportunity or join an organisation, as a result of the acquisition of knowledge, skills, responsibility and/or autonomy.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Entitlement UID|The unique identifier of the entitlement.|id|`ID/PK`<br>URI|1|A portable identifier of the entitlement.||
|||identifier|`Property`<br>Identifier|*|An alternative identifier of the entitlement.||
|Title|N/A|title|`Property`<br>Text|1|The title of the entitlement.||
|Description|The specific rights the holder of the credential has acquired.|description|`Property`<br>Note|0. .1|A free text description of the entitlement.||
|Date of Issue|N/A|issuedDate|`Property`<br>Date|0. .1|The date from which the entitlement was conferred.||
|Expiry Date|N/A|expiryDate|`Property`<br>Date|0. .1|The date until which the entitlment was conferred.||
|More information|N/A|additionalNote|`Property`<br>Note|*|An additional free text note about the entitlement.||
|N/A|N/A|specifiedBy|`Association`<br>EntitlementSpecification|0. .1|What the person is entitled to.||
|Derived from|The learning achievement (and related learning outcomes) which gave rise to this entitlement.|wasDerivedFrom|`Association`<br>LearningAchievement|*|A learning achievement which gave rise to the entitlement.||
|Sub-Entitlements|Smaller entitlements, which when combined make up this entitlement.|hasPart|`Association`<br>Entitlement|*|A sub-entitlement||

### Entitlement Specification
**Class description**: The specification of a right a person has access to, typically as a result of a learning achievement. It may take the form of the right to be a member of an organisation, to follow a certain learning opportunity specification, or to follow a certain career.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Entitlement Specification UID|The unique identifier of the entitlement specification.|id|`ID/PK`<br>URI|1|A portable identifier of the entitlement.||
|Entitlement Specification Identifier|N/A|identifier|`Property`<br>Identifier|*|An alternative identifier of the entitlement.||
|Entitlement Type|A credential-holder may be entitled to membership of an organisation or professional association; to access a learning opportunity; or to perform a specific employment|entitlementType|`Property`<br>Code|1|The entitlement-type.|Europass Standard List of Entitlement Types.|
|Title|N/A|title|`Property`<br>Text|0. .1|The title of the entitlement specification.||
|N/A|N/A|alternativeLabel|`Property`<br>Text|*|An alternative name of the entitlement specification.||
|Description|N/A|description|`Property`<br>Note|0. .1|A free text description of the entitlement specification.||
|More information|N/A|additionalNote|`Property`<br>Note|*|An additional free text note about the entitlement specification.||
|Homepage|Webpage describing the activity specification|homePage|`Association`<br>WebDocument|*|The homepage (a public web document) of the entitlement specification.||
|Other Documents|Any other web documents describing the activity specification|supplementaryDocument|`Association`<br>WebDocument|*|A public web document containing additional documentation about the entitlement specification.||
|Status|An entitlement may be prospective, i.e. awarding the right to apply for the entitlement; or actual, i.e. granting the entitlement|status|`Property`<br>Code|1|The status of the entitlement.|Europass Standard List of Entitlement Status.|
|Valid with|The organisation which acknowledges the entitlement (i.e. the organisation offering the learning opportunity, membership or employment opportunity)|limitOrganisation|`Association`<br>Organisation|*|||
|Valid within|The region or country where the entitlement is valid.|limitJurisidiction|`Property`<br>Code|*|The jurisdiction for which the entitlement is valid.|MDR Countries Named Authority List. NUTS.|
|Related Occupation|The occupation or occupational class which the individual may access through the entitlement.|limitOccupation|`Association`<br>EscoOccupationAssociation|*|An ESCO Occupation or Occupational Category.|ESCO Occupations.|
|N/A|N/A|limitNationalOccupation|Association<br>OccupationAssociation|*|An Occupation or Occupational Category||
|N/A|N/A|mayResultFrom|`Association`<br>LearningSpecification|*|||
|Entitlement sub-specification|Smaller entitlement specifications, which when combined make up this entitlement specification.|hasPart|`Association`<br>EntitlementSpecification|*|A sub-specification.||
|N/A|N/A|specializationOf|`Association`<br>EntitlementSpecification|*|An entitlement specification (e.g. a standard) of which this specification is a specialization.||

### Agent < abstract >
**Class description**: An entity that is able to carry out actions.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Agent UID|N/A|id|`ID/PK`<br>URI|1|A portable identifier of the agent.||
|N/A|N/A|identifier|`Property`<br>Identifier|*|A formally-issued Identifier for the Agent.||
|N/A|N/A|type|`Property`<br>Code|*|The Type of an Agent as described in a controlled vocabulary. |QMS List Of Organisation Types.|
|Preferred Name|N/A|preferredName|`Property`<br>Text|0. .1|The primary name of the agent.||
|N/A|N/A|alternativeName|`Property`<br>Text|*|An agent may have any number of alternative or informal names.||
|More information|N/A|note|`Property`<br>Note|*|An additional free text note about the agent.||
|Location|N/A|hasLocation|`Association`<br>Location|*|A location related to an Agent.|MDR Countries Named Authority List. NUTS (skossified and published version by ESCO).|
|Contact information|N/A|contactPoint|`Association`<br>ContactPoint|*|The contact information of an agent.||

### Person < extends Agent >
**Class description**: A human being.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Person UID|The unique identifier of the person.|id|`ID/PK`<br>URI|1|A portable identifier of the person.||
|National ID number|N/A|nationalId|`Property`<br>LegalIdentifier|0. .1|The "primary" national identifier of the person.||
|Other identifier(s)|An (optional) alternative formally-issued identifier for the person, e.g. social security number, student ID card number, to club membership, etc.|identifier|`Property`<br>Identifier|*|An (alternative) formally-issued identifier for the person.||
|Full name|N/A|fullName|`Property` (sub-Property of Agent prefferedName property)<br>Text|0. .1|The complete name of the person as one string.||
|Given name|N/A|givenNames|`Property`<br>Text |1|The given name(s) of the person.||
|Family name|N/A|familyName|`Property`<br>Text|1|The family name of the person.||
|Date of birth|N/A|dateOfBirth|`Property`<br>Date|1|The birth date of the person.||
|Place of birth|N/A|placeOfBirth|`Property`<br>Location|0. .1|The place of birth of the person.||
|Gender|N/A|gender|`Property`<br>Code|0. .1|The gender of the person.|MDR Human Sex Named Authority List.|
|Citizenship|The country (or countries) that conferred citizenship rights on the person.|citizenshipCountry|`Property`<br>Code|*|The country that has conferred citizenship rights on the person.|MDR Countries Named Authority List. NUTS.|
|Learning activities|N/A|performed|`Association`<br>LearningActivity|*|A learning activity that a person participated in or attended.||
|Learning achievements|N/A|achieved|`Association`<br>LearningAchievement|*|An achievement of the person.||
|Learning entitlements|N/A|entitledTo|`Association`<br>Entitlement|*|The entitlement of the person.||

### Organisation < extends Agent >
**Class description**: A legal person / registered organisation.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Organisation UID|The unique identifier of the organisation.|id|`ID/PK`<br>URI|1|A portable identifier of the organisation.||
|Legal Identifier|The official identification number of the organisation, as awarded by the relevant national authority.|legalIdentifier|`Property`<br>LegalIdentifier|1|The identifier given to a registered organisation by the authority with which it is registered.||
|VAT Number|N/A|vatIdentifier|`Property`<br>LegalIdentifier|*|The Value-Added Tax ID.||
|Tax / Fiscal Identifier|N/A|taxIdentifier|`Property`<br>LegalIdentifier|*|The Tax / Fiscal ID of the organisation.||
|Other Identifier|N/A|identifier|`Property`<br>Identifier|*|Another formally-issued identifier for the organisation.||
|Legal Name|N/A|preferredName|`Property`<br>Text|1|The primary name of the organisation.||
|Common Name|An (optional) alternative name of the organisation as typically used in documents, including credentials.|alternativeName|`Property`<br>Text|*|An alternative name of the organisation.||
|Homepage|N/A|homepage|`Association`<br>WebDocument|*|A homepage about the organisation.||
||N/A|hasLocation|`Association`<br>Location|1. .*|The legally registered site of the organisation.||
|Accreditation|Accreditation Records associated with the organisation. More information about the accreditation database is available here.|hasAccreditation|`Association`<br>Accreditation|*|The accreditation of an organisation.||
|Child Organisation|A smaller organisation of which forms part of this organisation.|hasUnit|`Association`<br>Organisation|*|Indicates a unit which is part of this Organisation, e.g. a Department within a larger Organisation.||
|Parent Organisation|A larger organisation of which this unit/sub-organisation forms part|unitOf|`Association`<br>Organisation|0. .1|Indicates an Organisation of which this Unit is a part, e.g. the Organisation within which a Department operates.||
|Logo|N/A|logo|`Association`<br>ImageObject|0. .1|The logo of the organisation.||

### Contact information
**Class description**: Details to Contact an Agent. A contact point for an agent.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Context|Queries to direct this contact method, and any conditions.|note|`Property`<br>Note|*|A note about the contactpoint (e.g. availibility or usage note)||
|Contact Details|N/A|description|`Property`<br>Note|0. .1|A free text describing the contact details.||
|Postal Address|N/A|postalAddress|`Association`<br>Address|*|A postal address used for contacting the agent.||
|Phone Number|N/A|phone|`Association`<br>Phone|*|A phone number used for contacting the agent.||
|E-Mail Address|N/A|email|`Association`<br>Mailbox|*|An e-mail address used for contacting the agent.||
|||walletAddress|`Association`<br>Mailbox|*|The wallet address of the agent.||
|Contact Form|N/A|contactForm|`Association`<br>InteractiveWebResource|*|A contact form used for contacting the agent.||

### Learning Opportunity
**Class description**: An opportunity to realise a given set of learning outcomes via a learning activity and/or assessment.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Learning Opportunity UID|The unique identifier of the Learning Opportunity.|id|`ID/PK`<br>URI|1|A portable identifier of the learning opportunity.||
|Learnring Opportunity Identifier|An identifier assigned to the learning opportunity by the organisation offering the opportunity.|identifier|`Property`<br>Identifier|*|An alternative identifier of the learning opportunity.||
|Title|N/A|title|`Property`<br>Text|1|The title of the learning opportunity.||
|Description|A summary of the learning opportunity. |description|`Property`<br>Note|0. .1|A free text description of the learning opportunity .||
|More Information|Any additional information about the learning opportunity|additionalNote|`Property`<br>Note|*|An additional free text note about the learning opportunity.||
|Homepage|Webpage describing the learning opportunity|homePage|`Association`<br>WebDocument|*|The homepage (a public web document) of the learning opportunity.||
|Other Documents|Other Web Documents describing the learning opportunity|supplementaryDocument|`Association`<br>WebDocument|*|A public web document containing additional documentation about the learning opportunity.||
|Start Date|The date from which a person may follow the learning opportunity.|startedAtDate|`Property`<br>Date|0. .1|The start date.||
|End Date|The final date a person may start to follow the learning opportunity.|endedAtDate|`Property`<br>Date|0. .1|The end date.||
|Duration|The duration for which the learning opportunity will continue to run. Note, this may be after the end-date, since admissions may be closed but the learning opportunity may still be ongoing.|duration|`Property`<br>Duration|0. .1|The nominal duration of the learning opportunity.||
|Provided by|The organisation providing or directing the learning opportunity. In the case of, e.g. joint qualifications, there may be several organisations directing the learning opportunity. |providedBy|`Association`<br>Organization|*|The providing or directing organization.||
|Provided at|The location where the learning opportunity will take place. This may also include a virtual space.|providedAt|`Association`<br>Location|*|The location of the opportunity.||
|Learning Schedule|N/A|learningSchedule|`Property`<br>Code|0. .1|The learning schedule.|Europass Standard List of Learning Schedule Types.|
|Schedule Information|Detailed information about the timetable or schedule. This may include weekly schedules (e.g. "Every Monday, 4pm", but may also include the overall schedule for the course, (e.g. October: lectures, November: group-work, December: break, January: assessmnet)|scheduleInformation|`Property`<br>Note|0. .1|A free text note about the time schedule.||
|Admissions Procedure|Specific information on how to apply for the course |admissionProcedure|`Property`<br>Note|0. .1|A free text note about the admission procedure.||
|Fees|Information about the pricing of the course, including fees and scholarships/subsidies available|priceDetails|`Association`<br>PriceDetails|*|The price details.||
|Sub-Opportunities|Smaller learning opportunities, which when combined make up this learning opportunity.|hasPart|`Association`<br>LearningOpportunity|*|A learning opportunity can be composed of other "narrower" learning opportunities.||
|Banner Image|An image which is displayed alongside the learning opportunity|bannerImage|`Association`<br>ImageObject|0. .1|The image to be displayed alongside the learning opportunity.||

### Accreditation
**Class description**: The quality assurance or licensing of an organisation or a qualification. An accreditation instance can be used to specify information about:
- the quality assurance and/or licensing of an organization.
- the quality assurance and/or licensing of an organization with respect to a specific qualification.

|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Accreditation ID|The unique identifier of the accreditation record.|id|`ID/PK`<br>URI|0. .1|A portable identifier of the accreditation.||
|Accreditation Identifier|The Identifier of the Accreditation, as assigned to it by the accrediting agent.|identifier|`Property`<br>Identifier|*|An alternative identifier of the accreditation.||
|Accreditation Type||accreditationType|`Property`<br>Code|1|The type of accreditation.|Europass Standard List of Accreditation Types.|
|Title||title |`Property`<br>Text|0. .1|A title of the accreditation.||
|Description||description|`Property`<br>Note|0. .0|A free text description of the accreditation.||
|Decision||decision|`Property`<br>TextScore|0. .1|The Quality Decision issued by the Quality Assuring Authority.||
|Report||report|`Association`<br>WebDocument|0. .1|A publicly accessible report of the quality assurance decision||
|Organization|The organization whose activities are being accredited.|organization|`Association`<br>Organization|1|The organization whose activities are being accredited.||
|Qualification Accredited|The qualification that was accredited.|limitQualification|`Association`<br>Qualification|0. .1|The qualification that was accredited.||
|Accredit for Thematic Area|The field of education for which the accreditation is valid.|limitField|`Properties`<br>Code|*|The field of education for which the accreditation is valid.|ISCED-F|
|Accredited for EQF Level|The european qualification level for which the accreditation is valid.|limitEQFLevel|`Properties`<br>Code|*|The european qualification level for which the accreditation is valid.|EQF|
|Accredited in Jurisdiction|The jurisdiction for which the accreditation is valid.|limitJurisdiction|`Properties`<br>Code|*|The jurisdiction for which the accreditation is valid.|"MDR Countries Named Authority List NUTS"|
|Accrediting Agent|The Quality Assuring Authority. (i.e assurer)|accrediting agent|`Association`<br>Organization|1|The Quality Assuring Authority. (i.e assurer)||
|Issue Date|The Quality Assuring Authority. (i.e assurer)|issue date|`Property`<br>DateTime|0. .1|The date when the accreditation was formally approved/issued.||
|Review Date|The date when the accreditation was formally approved/issued.|review date|`Property`<br>DateTime|0. .1|The date when the accreditation has to be re-viewed.||
|Expiry Date|The date when the accreditation has to be re-viewed.|expiry date|`Property`<br>DateTime|0. .1|The date when the accreditation expires or was expired.||
|More information|The date when the accreditation expires or was expired.|additional note|`Property`<br>Note|*|An additional free text note about the accreditation.||
|Home page|Webpage describing the accreditation|home page|`Association`<br>WebDocument|*|The homepage of the accreditation.||
|N/A|N/A|landing page|`Association`<br>WebDocument|*|The landingpage of the accreditation.||
|Other Documents|Other documents describing the Accreditation Procedures and Standards|supplementary document|`Association`<br>WebDocument|*|A public web document containing additional documentation about the accreditation.||

### Verifiable Presentation
**Class description**: A verifiable presentation of a set of credentials. A composition of a set of credentials that can be presented to and verified by a verifier.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|||id|`ID/PK`<br>URI|0. .1|A portable identifier of the presentation.||

### Europass Presentation
**Class description**: A verifiable presentation of a set of Europass credentials.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Verifiable Credential||verifiableCredential|`Association`<br>EuropassCredential|*|A verifiable EuropassCredential.||
|Verification Check||verificationCheck|`Association`<br>VerificationCheck|*|||
|Proof|The cryptographic proof that can be used to detect tampering and verify the authorship of a presentation.|proof|`Association`<br>Proof|*|||

### Verification Check
**Class description**: A verification check.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Verification Check UID|The unique identifier of the verification check|id|`ID/PK`<br>URI|0. .1|A portable identifier of the verification check||
|Type||type|`Property`<br>Code|1|The type of verification check.|Europass Standard List of Verification Types.|
|Subject||subject|`Association`<br>EuropassCredential|1|The credential subject of this verififcation check.||
|Status||status|`Property`<br>Code|1|The result.|Europass Standard List of Verification Statusses|
|Description||description|`Property`<br>Note|0. .1|A free text description of the check and the result.||

## Media Classes

### Interactive Web Resource
**Class description**: A web resource that can be used to communicate.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|URL||id|`ID/PK`<br>URL|?|The URL to access the interactive web resource.||

### Phone
**Class description**: A phone number.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Full Phone Number||phoneNumber|`Property`<br>String|0. .1|The full phone number as a string.|
|Country Dialling code||countryDialing|`Property`<br>String|0. .1|The country dialling code for a contact number.|
|Area Dialling Code||areaDialing|`Property`<br>String|0. .1|The area dialling code for a contact number.|
|Phone Number|The contact number, not including country dialling or area dialling codes. (e.g. “3445654”, “1234567”, etc.)|dialNumber|`Property`<br>String|0. .1|The contact number, not including country dialling or area dialling codes.|

### Mailbox
**Class description**: A mailbox.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|E-mail||id|`ID/PK`<br>URI|1|The e-mail address.||

### Address
**Class description**: An address.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Address UID|The unique identifier of the address|id|`ID/PK`<br>URI|0. .1|A portable identifier of the adress.||
|N/A|N/A|Identifier|`Property`<br>Identifier|*|An address identifier.||
|Full Address|N/A|fullAddress|`Property`<br>Note|0. .1|The complete address with or without formatting.||
|Country|N/A|countryCode|`Property`<br>Code|1|The address’ country code.|MDR Countries Named Authority List.|

### Location
**Class description**: An identifiable geographic place.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Location UID|N/A|id|`ID/PK`<br>URI|0. .1|A portable identifier of the location.||
||Identifier|`Property`<br>Identifier|*|A location identifier.||
|Name||GeographicName|`Property`<br>Text|0. .1|A proper noun applied to a spatial object.||
|Location|N/A|SpatialCode|`Property`<br>Code|*|A code identifying a spatial scope in which this physical location is located.|MDR Countries Named Authority List. NUTS. MDR Place Named Authority List.|
|Description||Description|`Property`<br>Note|0. .1|A free text describing the location.||
|Address||hasAddress|`Association`<br>Address|*|An address associated with the location.||

### Web Document
**Class description**: A public web document.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|URL||id|`ID/PK`<br>URL|1|The URL of the web document.||
|Document Name||title|`Property`<br>Text|0. .1|The name of the document.||
|||language|`Property`<br>Code|0. .1|The language of the document.|MDR Languages Named Authority List.|
|||subject|`Property`<br>Code|*|This property is used to point to the topic that is described in the document. The information topic specifies what kind of information is provided in the document.||

### Media Object
**Class description**: A media object.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|||id|`ID/PK`<br>URI|0. .1|A portable identifier of the media object.||
|||contentType|`Property`<br>Code|1|The media-type of the media object.|MDR Filetype|
|||contentEncoding|`Property`<br>Code|0. .1|The encoding used to encode the binary data.|Europass Standard List of Content Encoding Types.|
|||contentSize|`Property`<br>xsd:integer|0. .1|The content size.||
|||content|`Property`<br>xsd:string|0. .1|The binary data. ||
|||contentUrl|`Property`<br>xsd:anyURI|0. .1|The public access URL.||

### Image Object < extends MediaObject >
**Class description**: Still image.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|||contentType|`Property`<br>Code|0. .1|The media-type of the image resource.|MDR Filetype|

## Association Classes

### Association Object
**Class description**: The details of an association or an alignment between a resource and another node in an established semantic framework. This class can be used to relate, annotate or align a resource to another semantic asset. Described in the QMS.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|N/A|N/A|associationType|`Property`<br>Code|0. .1|The type of the association.|
|N/A|N/A|description|`Property`<br>Text|0. .1|A description of the association.|
|N/A|N/A|issueDate|`Property`<br>DateTime|0. .1|Date of creation of the association.|
|N/A|N/A|isAssociationFor|`Association`<br>Resource|1|The resource being described.|
|N/A|N/A|targetFramework|`?`<br>?|0. .1|The framework to which the resource being described is associated.|
|N/A|N/A|targetFrameworkVersion|`Property`<br>String|0. .1|A version number or other designation of the target framework.|
|N/A|N/A|targetResource|`Association`<br>Resource|0. .1|The resource representing the associated node in the targeted framework.|
|N/A|N/A|targetNotation|`Property`<br>Notation/String|*|A notation or code of the associated node in the targeted framework.|
|N/A|N/A|targetName|`Property`<br>Text|0. .1|A name or label of the associated node in the targeted framework.|
|N/A|N/A|targetDescription|`Property`<br>Note|0. .1|A free-text description of the associated node in the targeted framework.|
|N/A|N/A|targetUrl|`Property`<br>xsd:anyURI|*|The URL of the associated node in the targeted framework.|

### Education Level Association < extends AssociationObject >
**Class description**: The associated education level of a given LearningSpecification.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Education Level Framework|N/A|targetFramework|`Association`<br>Standard|0. .1|The framework/system used describing education levels.||
|N/A|N/A|targetNotation|`Property`<br>String|0. .1|A notation or code of the associated edcuation level in the targeted framework.||
|Education Level|N/A|targetName|`Property`<br>Text|0. .1|A name or label of the associated education level in the targeted framework.||
|N/A|N/A|targetDescription|`Property`<br>Note|0. .1|A free-text description of the associated education level in the targeted framework.||

### QF Level Association < extends EducationLevelAssociation >
**Class description**: The associated education level of a given Qualification.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Qualfication Framework|N/A|targetFramework|`Association`<br>Standard|1|The qualification framework.|QDR List of qualification frameworks.|
|Qualification Framework Level|N/A|targetNotation|`Property`<br>String|1|The qualification framework level.|Part of CList|

### Education Subject Association < extends AssociationObject >
**Class description**: The associated subject or field of education of a given LearningSpecification.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|Education Subject Scheme|N/A|targetFramework|`Association`<br>Standard|0. .1|The framework/system used describing fields of education.||
|N/A|N/A|targetNotation|`Property`<br>String|0. .1|A notation or code of the associated field of education in the targeted framework.||
|Education Subject|N/A|targetName|`Property`<br>Text|0. .1|A name or label of the associated field of education in the targeted framework.||
|N/A|N/A|targetDescription|`Property`<br>Note|0. .1|A free-text description of the associated field of education in the targeted framework.||

### Esco Skill Association < extends AssociationObject >
**Class description**: Represents an alignment object to an existing ESCO Skill.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|N/A|N/A|associationType|`Property`<br>Code|0. .1|A code indicating the semantics of the relation.|Europass Standard List Of Skill Alignment Types.|
|N/A|N/A|description|`Property`<br>Text|0. .1|A free text describing the semantics of the relation.||
|N/A|N/A|targetResource|`Association`<br>Resource|1|The URI identifier of the related ESCO skill.|ESCO skill.|

### Esco Occupation Association < extends AssociationObject >
**Class description**: Represents a relation of an entitlement to an existing ESCO occupation.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|N/A|N/A|description|`Property`<br>Text|0..1|A free text describing the semantics of the relation.||
|N/A|N/A|targetResource|`Association`<br>Resource|1|The URI identifier of the related ESCO occupation.|ESCO occupation.|

### Occupation Association  < extends AssociationObject >
**Class description**: Represents an association of an entitlement to an occupation from a (national) occupational framework.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|N/A|N/A|description|`Property`<br>Text|0. .1|A free text describing the semantics of the relation.||
|Occupational Framework|N/A|targetFramework|`Association`<br>Standard|0. .1|The framework/system used describing occupations.|ESCO occupation.|
|N/A|N/A|targetNotation|`Property`<br>String|0. .1|A notation or code of the related occupation in the targeted framework.||
|Occupation|N/A|targetName|`Property`<br>Text|0. .1|The name or label of the related occupation in the targeted framework.||
|N/A|N/A|targetDescription|`Property`<br>Note|0. .1|A description of the related occupation in the targeted framework.||
|N/A|N/A|targetResource|`Association`<br>Resource|1|The URI identifier of the occupation in the related Standard framework.||

### Qualification Association Type  < extends AssociationObject >
**Class description**: Represents an association of a qualification to a qualification code in a certain framework or system describing qualification.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|N/A|N/A|targetFramework|`Association`<br>Standard|0. .1|The framework/system used describing qualifications.||
|N/A|N/A|targetResource|`Association`<br>Resource|0. .1|The URI identifier of the related qualification in the targeted framework.||
|N/A|N/A|targetNotation|`Property`<br>String|0. .1|A notation or code of the associated qualification in the targeted framework.||

### Standard
**Class description**: This class is used to describe a semantic framework.
|Label|Description|Field|`Type`<br>Range (data type)|Card|Definition|Recommended RSA|
|--|--|--|--|--|--|--|
|N/A|N/A|id|`ID/PK`<br>URI|0. .1|A portable identifier of the framework or system.||
|N/A|N/A|identifier|`Property`<br>Identifier|*|An alternative identifier of the framework or system.||
|N/A|N/A|title|`Property`<br>Text|0. .1|The title of the framework or system.||
|N/A|N/A|description|`Property`<br>Note|0. .1|A free text describing the framework or system.||
|N/A|N/A|supplementaryDocument|`Association`<br>WebDocument|*|A public web document containing additional documentation about the standard.||

## Structured Data Types

### Identifier - Composite Type
**Definition**: A character string used to identify a resource.  
An identifier is a character string used to uniquely identify one instance of an object within an identification scheme that is managed by an agency.  
The Identifier class is a critical aspect of the edci model. It is used to identify persons and organizations. In these cases and more, the identifier itself will be some sort of alpha-numeric string but that string only has meaning if it is contextualised.
|Data Type|Field|`Type`<br>Range (data type)|Card|Definition|Description|Recommended RSA|
|--|--|--|--|--|--|--|
|Identifier|Content|`Attribute`<br>String|1|Content string which is the identifier.|Content string which is the identifier. A character string used to uniquely identify one instance of an object within an identification scheme that is managed by an agency.||
|Identifier|Identifier Scheme ID|`Attribute`<br>String|0. .1|Identification of the identifier scheme.|Identification of the identifier scheme. The identifier register (the managing/originating system of the identifier). This can be seen as the namespace in which the assigned identifier is unique.||
|Identifier|Identifier Scheme Version ID|`Attribute`<br>String|0. .1|Identification of the version of the identifier scheme.|Identification of the version of the identifier scheme.||
|Identifier|Identifier Scheme Agency ID|`Attribute`<br>String|0. .1|Identification of the agent that manages the identifier scheme.|Identification of the agent that manages the identifier scheme. The agent that issued the identifier. (e.g. a URI)||
|Identifier|Identifier Scheme Name|`Attribute`<br>String|0. .1|The name of the idetnifier scheme.|The name of the identifier scheme.||
|Identifier|Identifier Scheme Agency Name|`Attribute`<br>String|0. .1|The name of the agent that manages the identifier scheme.|The name of the agent that manages the identifier scheme. The agent that issued the identifier.||
|Identifier|Issued Date|`Attribute`<br>Date|0. .1|The date on which the identifier was issued|The date on which the identifier was issued||
|Identifier|Identifier Type|`Attribute`<br>String|*|A code used to classify the type of identifier|A code used to classify the type of identifier||

### LegalIdentifier - Composite Type < extends Identifier >
**Definition**: A legal identifier.
A legal identifier is a formally issued identifier by a given authorithy within a given jurisdiction. The identifier has a spatial context.
|Data Type|Field|`Type`<br>Range (data type)|Card|Definition|Description|Recommended RSA|
|--|--|--|--|--|--|--|
|Identifier|Spatial ID|`Attribute`<br>String|1|The identifier of the country and/or jurisdiction.|The identifier of the country and/or jurisdiction.|MDR Countries Named Authority Lis. NUTS|

### Code - Composite Type
**Definition**: A term from a controlled vocabulary. (a code from a code list)
Interoperability between data sets is increased dramatically when terms from controlled vocabularies are used in favour of free text. The conceptual Code data type is used wherever one or more controlled vocabularies are known to exist for a particular domain of interest. It is not the job of the JV/CV Vocabularies to mandate which controlled vocabularies are used but we offer some guidance on how to use them.
|Data Type|Field|`Type`<br>Range (data type)|Card|Definition|Description|Recommended RSA|
|--|--|--|--|--|--|--|
|Code|Target Notation|`Attribute`<br>String|0. .1||The term.||
|Code|Target Framework URI|`Attribute`<br>String|1|The identification of the controlled vocabulary.|The identification of the controlled vocabulary (the code list). (e.g. a URI)||
|Code|Target Framework|`Text`<br>String|1|The name of the controlled vocabulary.|The name of the controlled vocabulary (the code list).||
|Code|Target Name|`Text`<br>String|1|The text equivalent of the code content component.|The text equivalent of the code content component.||
|Code|Target Description|`Text`<br>String|0. .1||||
|Code|URI|`Attribute`<br>String|0. .1|A portable identifier (i.e a URI) of the code.|A portable identifier (i.e a URI) of the code.||

### Text - Composite Type
**Definition**: A character string (i.e. a finite set of characters) generally in the form of words of a language.
|Data Type|Field|`Type`<br>Range (data type)|Card|Definition|Description|Recommended RSA|
|--|--|--|--|--|--|--|
|Text|Content|`Attribute`<br>String|1|The character string.|The character string.||
|Text|Language|`Attribute`<br>String|0. .1|The identifier of the language used in the Content attribute|The identifier of the language used in the Content attribute||

### Note - Composite Type
**Definition**: A formatted character string (i.e. a finite set of characters) generally in the form of words of a language. The character string is passed/included in, and can be represented as, a (formatted) document fragment (formatted) according a given mimetype (e.g. "text/plain", "text/html", etc.)
|Data Type|Field|`Type`<br>Range (data type)|Card|Definition|Description|Recommended RSA|
|--|--|--|--|--|--|--|
|Note|Content|`Attribute`<br>String|1|The free text note.|The free text note.||
|Note|Language|`Attribute`<br>String|0. .1|The identifier of the language used in the Content attribute.|The identifier of the language used in the Content attribute.||
|Note|Format|`Attribute`<br>String|0. .1|The identifier of the mimetype used in the Content attribute.|The identifier of the mimetype used in the Content attribute.||
|Note|Topic|`Attribute`<br>String|*|The information topic this note is about.|The information topic this note is about.||

### Notation - Composite Type
**Definition**: A notation (or code) is a character string according a given syntax encoding scheme.
|Data Type|Field|`Type`<br>Range (data type)|Card|Definition|Description|Recommended RSA|
|--|--|--|--|--|--|--|
|Notation|Content|`Attribute`<br>String|1|A notation (or code).|A notation (or code).||
|Notation|Scheme ID|`Attribute`<br>String|0. .1|The syntax encoding scheme.|The syntax encoding scheme. A particular system of notations or classification codes.||

### Score - Composite Type
**Definition**: A score.
|Data Type|Field|`Type`<br>Range (data type)|Card|Definition|Description|Recommended RSA|
|--|--|--|--|--|--|--|
|Score|Content|`Attribute`<br>Literal|1|The score.|The score.||
|Score|Scoring Scheme ID|`Attribute`<br>String|0. .1|The identifier of the scoring scheme used in the Content attribute.|The identifier of the scoring scheme used in the Content attribute. Refers to the type of scoring methodology or convention.||

### NumericScore < extends Score >
**Definition**: A numeric score.
|Data Type|Field|`Type`<br>Range (data type)|Card|Definition|Description|Recommended RSA|
|--|--|--|--|--|--|--|
|NumericScore|Content|`Attribute`<br>Numeric|1|The numeric score.|The numeric score.||

### TextScore < extends Score >
**Definition**: A textual score.
|Data Type|Field|`Type`<br>Range (data type)|Card|Definition|Description|Recommended RSA|
|--|--|--|--|--|--|--|
|TextScore|Content|`Attribute`<br>String|1|The textual score.|The textual score.||

### Measure - Composite Type
**Definition**: A measure.
|Data Type|Field|`Type`<br>Range (data type)|Card|Definition|Description|Recommended RSA|
|--|--|--|--|--|--|--|
|Measure|Content|`Attribute`<br>Numeric|1|The numeric value (i.e. measure).|The numeric value (i.e. measure).||
|Measure|Unit|`Attribute`<br>String|1|A code indicating the type of unit measure, such as “minutes”, “hours”, “meters”, etc.|A code indicating the type of unit measure, such as “minutes”, “hours”, “meters”, etc.|MDR Measurement unit Named Authority List|

### Amount - Composite Type
**Definition**: An amount.
|Data Type|Field|`Type`<br>Range (data type)|Card|Definition|Description|Recommended RSA|
|--|--|--|--|--|--|--|
|Amount|Content|`Attribute`<br>Numeric|1|The numeric value (i.e. price, salary, etc.).|||
|Amount|Unit|`Attribute`<br>String|1|A code indicating the currency in which the amount is indicated/expressed||MDR Currencies Named Authority List|

### Primitive Type Structured Data Types

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
