Feature: TYPE_CONF_CRUD_API
Type configurations using Type CRUD APIs 
 
@smoke
Scenario: User tries to Create an entity configuration -"General Ledger to Product Processor"
Given Source Grain, Source Entity, Target Entity, Dimensions and the dimension attributes are available to select
 
When I enter a name and description for the type "General Ledger to Product Processor"
and chose Source Grain as Ledger, Source Entity as Stage General Ledger Data
and Target Entity as "Stage Cards, Stage Loan Contracts"
and select the Dimensions as "Currency, Legal Entity, GAAP Code" 
and attributes for Currency dimension as "Currency Code"
and attributes for Legal Entity dimension as "Legal Entity Code"
and attributes for GAAP Code dimension as "GAAP Code"
Then the response should be success (Response Code- 200OK) for these CRUD operations

Scenario: EDIT different Type configurations which are available / used in system
Given I have different Type configurations exists in the system
 
When I chose "General Ledger to Product Processor" type and code as "SRT1"
And for Source Grain as "GL", Source Entity as "STG_GL_DATA"
And Update the Description of the Type configuration and select a new target entity as "STG_LOAN_CONTRACTS" and target grain as "PP"
and And select the Dimension as "Currency" and attribute as "Currency Code"  and dimension value as "HGL005"
Then the response should be success (Response Code- 200OK) for these CRUD operations

Scenario: User tries to Create an entity configuration -"Ledger to Ledger"
Given Source Grain, Source Entity, Target Entity, Dimensions And the dimension attributes are available to select
 
When I enter a name And description for the type "Ledger to Ledger" and code as "SRT4"
And chose Source Grain as "GL", Source Entity as "STG_GL_DATA"
And Target Entity as "STG_CARDS, STG_LOAN_CONTRACTS" and target grain as "PP"
And select the Dimension as "Currency" and attribute as "Currency Code"  and dimension value as "HGL005"
And select the Dimension as "Currency" and attribute as "Currency Code"  and dimension value as "HGL005"
Then the response should be success (Response Code- 200OK) for these CRUD operations

Scenario: User tries to Create an entity configuration -"Management Ledger to Product Processor"
Given Source Grain, Source Entity, Target Entity, Dimensions and the dimension attributes are available to select
 
When I enter a name and description for the type as "Management Ledger to Product Processor"
and chose Source Grain as Management Ledger, Source Entity as "Stage Management Ledger"
and Target Entity as "Stage Cards"
and select the Dimensions as "Currency, Legal Entity, GAAP Code" 
and attributes for Currency dimension as "Currency Code"
and attributes for Legal Entity dimension as "Legal Entity Code"
and attributes for GAAP Code dimension as "GAAP Code"
Then the response should be success (Response Code- 200OK) for these CRUD operations

Scenario: User tries to Create an entity configuration -"Ledger to Ledger"
Given Source Grain, Source Entity, Target Entity, Dimensions and the dimension attributes are available to select
 
When I enter a name and description for the type as "Ledger to Ledger"
and chose Source Grain as Ledger, Source Entity as Stage General Ledger Data
and Target Entity as "Stage Management Ledger"
and select the Dimensions as "Currency, Legal Entity, GAAP Code" 
and attributes for Currency dimension as "Currency Code"
and attributes for Legal Entity dimension as "Legal Entity Code"
and attributes for GAAP Code dimension as "GAAP Code"
Then the response should be success (Response Code- 200OK) for these CRUD operations

Scenario: Validate boundary conditions for Name, Drescription fields while creating a type configuration
Given the Name and Description field length validations are enabled
 
When I enter more than 60 characters in Name field
and more than 255 characters in Description field
Then the response should be "Failure" for the CRUD operations

Scenario: User should not be allowed to create a configuration type with an existing name which is availble/ used in the system
Given the Name field will have unique constraint check enabled
 
When I enter a Type name already exists
Then the response should be "Failure- name already exists/unique constraint" for the CRUD operations

Scenario: EDIT different Type configurations which are available / used in system
Given I have different Type configurations exists in the system
 
When I chose "General Ledger to Product Processor" type
and Update the Description of the Type configuration
and select a new target entity as "Stage Loan Contracts"
and select the Dimension attributes for "Stage Loan Contracts"
Then the response should be success (Response Code- 200OK) for these CRUD operations

Scenario: User tries to Delete a Type configuration -Ledger to Ledger
Given entity configurations exists in the system
 
When I chose the Type configuration for "Ledger to Ledger"
and Delete the configuration
Then the response should be success (Response Code- 200OK) for these CRUD operations



{"infodom":"FSDFINFO","locale":"en_US","user":"GLUSER","type_Code":"SRT1","type_Name":"General Ledger to Product Processor","type_Desc":"General Ledger to Product Processor","type_srcGrain":"GL","type_srcEntity":"STG_GL_DATA","type_tgtGrain":"PP","type_tgtEntities":["STG_CARDS","STG_LOAN_CONTRACTS"],"dimensionData":[{"dimval":"HGL005","dimname":"Currency for Reconciliation","mrflag":"M","members":[{"entityname":"Stage cards","entityvalue":"STG_CARDS","membername":"Currency Code","membervalue":"v_ccy_code"},{"entityname":"Stage General Ledger Data","entityvalue":"STG_GL_DATA","membername":"Currency Code","membervalue":"v_ccy_code"},{"entityname":"Stage Loan Contracts","entityvalue":"STG_LOAN_CONTRACTS","membername":"Currency Code","membervalue":"v_ccy_code"}]}]}

