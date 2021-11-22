public with sharing class ExternalIdService {
    private Set<String> objectFields;

    public ExternalIdService(SObjectType objectType) {
        this.objectFields = objectType.getDescribe().fields.getMap().keySet();
    }

    public void setExternalIds(List<SObject> newRecords) {
        if (!objectFields.contains(Constants.EXTERNAL_ID_API_NAME)) {
            return;
        }
        for (SObject record : newRecords) {
            if (this.isBlankExternalId(record) || this.isNewClone(record)) {
                record.put(Constants.EXTERNAL_ID_API_NAME, GuidGenerator.generateGuid());
            }
        }
    }

    private Boolean isBlankExternalId(Sobject record) {
        return record.get(Constants.EXTERNAL_ID_API_NAME) != null;
    }

    private Boolean isNewClone(Sobject record) {
        return record.Id == null && record.isClone();
    }
}
