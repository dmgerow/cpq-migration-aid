public with sharing class ExternalIdService {
    private static final String EXTERNAL_ID_API_NAME = 'cpqma__externalid__c';
    private Set<String> objectFields;

    public ExternalIdService(SObjectType objectType) {
        this.objectFields = objectType.getDescribe().fields.getMap().keySet();
    }

    public void setExternalIds(List<SObject> newRecords) {
        if (!objectFields.contains(EXTERNAL_ID_API_NAME)) {
            return;
        }
        for (SObject record : newRecords) {
            if (this.isBlankExternalId(record) || this.isNewClone(record)) {
                record.put(EXTERNAL_ID_API_NAME, GuidGenerator.generateGuid());
            }
        }
    }

    @TestVisible
    private Boolean isBlankExternalId(Sobject record) {
        return record.get(EXTERNAL_ID_API_NAME) == null;
    }

    @TestVisible
    private Boolean isNewClone(Sobject record) {
        return record.Id == null && record.isClone();
    }
}
