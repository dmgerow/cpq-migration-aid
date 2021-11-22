public with sharing class GuidGenerator {
    public static String generateGuid() {
        Blob b = Crypto.GenerateAESKey(128);
        String h = EncodingUtil.ConvertTohex(b);
        String guid =
            h.SubString(0, 8) +
            '-' +
            h.SubString(8, 12) +
            '-' +
            h.SubString(12, 16) +
            '-' +
            h.SubString(16, 20) +
            '-' +
            h.substring(20);
        return guid;
    }
}
