using CatalogService as service from '../../srv/interaction_srv';
annotate service.Interactions_Header with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Id',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Partner',
                Value : PARTNER,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Date',
                Value : LOG_DATE,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Coutry Code',
                Value : BPCOUNTRY_code,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Texts',
            ID : 'Texts',
            Target : 'ITEMS/@UI.LineItem#Texts',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Id',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Partner',
            Value : PARTNER,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Date',
            Value : LOG_DATE,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Countr Code',
            Value : BPCOUNTRY_code,
        },
    ],
    UI.HeaderInfo : {
        TypeName       : 'Partner',
        TypeNamePlural : 'Partners',
        Title          : { Value : ID },
        Description    : { Value : PARTNER }
  },
);

annotate service.Interactions_Items with @(
    UI.LineItem #Texts : [
        {
            $Type : 'UI.DataField',
            Label : 'Text Id',
            Value : TEXT_ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Language',
            Value : LANGU,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Text',
            Value : LOGTEXT,
        },
    ]
);
