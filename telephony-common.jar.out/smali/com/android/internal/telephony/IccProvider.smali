.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

.field private static final ADDRESS_SUPPORT_AAS:I = 0x8

.field private static final ADDRESS_SUPPORT_SNE:I = 0x9

.field protected static final ADN:I = 0x1

.field protected static final ADN_ALL:I = 0x9

.field protected static final ADN_SUB:I = 0x2

.field private static final DBG:Z = true

.field public static final ERROR_ICC_PROVIDER_ADN_LIST_NOT_EXIST:I = -0xb

.field public static final ERROR_ICC_PROVIDER_ANR_SAVE_FAILURE:I = -0xe

.field public static final ERROR_ICC_PROVIDER_ANR_TOO_LONG:I = -0x6

.field public static final ERROR_ICC_PROVIDER_EMAIL_FULL:I = -0xc

.field public static final ERROR_ICC_PROVIDER_EMAIL_TOOLONG:I = -0xd

.field public static final ERROR_ICC_PROVIDER_GENERIC_FAILURE:I = -0xa

.field public static final ERROR_ICC_PROVIDER_NOT_READY:I = -0x4

.field public static final ERROR_ICC_PROVIDER_NO_ERROR:I = 0x1

.field public static final ERROR_ICC_PROVIDER_NUMBER_TOO_LONG:I = -0x1

.field public static final ERROR_ICC_PROVIDER_PASSWORD_ERROR:I = -0x5

.field public static final ERROR_ICC_PROVIDER_STORAGE_FULL:I = -0x3

.field public static final ERROR_ICC_PROVIDER_TEXT_TOO_LONG:I = -0x2

.field public static final ERROR_ICC_PROVIDER_UNKNOWN:I = 0x0

.field public static final ERROR_ICC_PROVIDER_WRONG_ADN_FORMAT:I = -0xf

.field protected static final FDN:I = 0x3

.field protected static final FDN_SUB:I = 0x4

.field protected static final SDN:I = 0x5

.field protected static final SDN_SUB:I = 0x6

.field protected static final STR_EMAILS:Ljava/lang/String; = "emails"

.field protected static final STR_NUMBER:Ljava/lang/String; = "number"

.field protected static final STR_NUMBER2:Ljava/lang/String; = "number2"

.field protected static final STR_PIN2:Ljava/lang/String; = "pin2"

.field protected static final STR_SRECID:Ljava/lang/String; = "srecid"

.field protected static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "IccProvider"

.field protected static final UPB:I = 0x7

.field private static final UPB_GRP_COLUMN_NAMES:[Ljava/lang/String;

.field protected static final UPB_SUB:I = 0x8

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    const-string v1, "number2"

    aput-object v1, v0, v6

    const-string v1, "srecid"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "groupIds"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "aas"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sne"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 70
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "index"

    aput-object v1, v0, v5

    const-string v1, "name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->UPB_GRP_COLUMN_NAMES:[Ljava/lang/String;

    .line 98
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 102
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/subId/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn/subId/#"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn/subId/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "pbr"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "pbr/subId/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I
    .locals 11
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "subId"    # I

    .prologue
    .line 694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIccRecordToEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subscription="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 697
    const/4 v10, 0x0

    .line 705
    .local v10, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 706
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 707
    const-string v4, ""

    const-string v5, ""

    move/from16 v2, p6

    move v3, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    .line 715
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIccRecordToEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 716
    return v10

    .line 710
    :catch_0
    move-exception v9

    .line 711
    .local v9, "ex":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 712
    .end local v9    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 713
    .local v9, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v9}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addUsimRecordToEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 16
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "strAnr"    # Ljava/lang/String;
    .param p5, "strEmail"    # Ljava/lang/String;
    .param p6, "strGas"    # Ljava/lang/String;
    .param p7, "subId"    # I

    .prologue
    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUSIMRecordToEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", anr ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 727
    const/4 v15, 0x0

    .line 733
    .local v15, "result":I
    const/4 v13, 0x0

    .line 734
    .local v13, "emails":[Ljava/lang/String;
    if-eqz p5, :cond_0

    const-string v2, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 735
    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    .line 736
    const/4 v2, 0x0

    aput-object p5, v13, v2

    .line 740
    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 742
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    .line 743
    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move/from16 v2, p7

    move/from16 v3, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-interface/range {v1 .. v13}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v15

    .line 751
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUsimRecordToEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 752
    return v15

    .line 746
    :catch_0
    move-exception v14

    .line 747
    .local v14, "ex":Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 748
    .end local v14    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v14

    .line 749
    .local v14, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v14}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I
    .locals 11
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "subId"    # I

    .prologue
    .line 873
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIccRecordFromEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pin2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subscription="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 877
    const/4 v10, 0x0

    .line 880
    .local v10, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 881
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 882
    const-string v6, ""

    const-string v7, ""

    move/from16 v2, p6

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    .line 890
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIccRecordFromEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 891
    return v10

    .line 885
    :catch_0
    move-exception v9

    .line 886
    .local v9, "ex":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 887
    .end local v9    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 888
    .local v9, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v9}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteIccRecordFromEfByIndex(IILjava/lang/String;I)I
    .locals 9
    .param p1, "efType"    # I
    .param p2, "nIndex"    # I
    .param p3, "pin2"    # Ljava/lang/String;
    .param p4, "subId"    # I

    .prologue
    .line 896
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 899
    const/4 v8, 0x0

    .line 902
    .local v8, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 904
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 905
    const-string v3, ""

    const-string v4, ""

    move v1, p4

    move v2, p1

    move v5, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 912
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEfByIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 913
    return v8

    .line 907
    :catch_0
    move-exception v7

    .line 908
    .local v7, "ex":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 909
    .end local v7    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 910
    .local v7, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteUsimRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 16
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "subId"    # I

    .prologue
    .line 919
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteUsimRecordFromEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 922
    const/4 v15, 0x0

    .line 925
    .local v15, "result":I
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 927
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 928
    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v2, p5

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-interface/range {v1 .. v13}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v15

    .line 936
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteUsimRecordFromEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 937
    return v15

    .line 931
    :catch_0
    move-exception v14

    .line 932
    .local v14, "ex":Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 933
    .end local v14    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v14

    .line 934
    .local v14, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v14}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteUsimRecordFromEfByIndex(III)I
    .locals 11
    .param p1, "efType"    # I
    .param p2, "nIndex"    # I
    .param p3, "subId"    # I

    .prologue
    .line 942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteUsimRecordFromEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 944
    const/4 v10, 0x0

    .line 947
    .local v10, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 949
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 950
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, p3

    move v2, p1

    move v8, p2

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    .line 958
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteUsimRecordFromEfByIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 959
    return v10

    .line 953
    :catch_0
    move-exception v9

    .line 954
    .local v9, "ex":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 955
    .end local v9    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 956
    .local v9, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v9}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 2

    .prologue
    .line 1045
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1048
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    return-object v0
.end method

.method private getRequestSubId(Landroid/net/Uri;)I
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 1052
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRequestSubId url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1055
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isUICCCard(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 1107
    const/4 v2, 0x0

    .line 1110
    .local v2, "res":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1112
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 1113
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->isUICCCard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1120
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v2

    .line 1115
    :catch_0
    move-exception v0

    .line 1116
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1117
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1118
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadAllSimContacts(I)Landroid/database/Cursor;
    .locals 11
    .param p1, "efType"    # I

    .prologue
    .line 176
    iget-object v8, p0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v7

    .line 177
    .local v7, "subIdList":[I
    array-length v8, v7

    new-array v5, v8, [Landroid/database/Cursor;

    .line 179
    .local v5, "result":[Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 180
    .local v1, "i":I
    move-object v0, v7

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v6, v0, v3

    .line 181
    .local v6, "subId":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-direct {p0, p1, v6}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v8

    aput-object v8, v5, v2

    .line 182
    const-string v8, "IccProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadAllSimContacts: subId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 185
    .end local v6    # "subId":I
    :cond_0
    new-instance v8, Landroid/database/MergeCursor;

    invoke-direct {v8, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v8
.end method

.method private loadFromEf(II)Landroid/database/MatrixCursor;
    .locals 8
    .param p1, "efType"    # I
    .param p2, "subId"    # I

    .prologue
    .line 659
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadFromEf: efType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", subscription="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 661
    const/4 v0, 0x0

    .line 663
    .local v0, "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v4

    .line 664
    .local v4, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v4, :cond_0

    .line 665
    invoke-interface {v4, p2, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEfForSubscriber(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 673
    .end local v4    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 675
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 676
    .local v5, "size":I
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v1, v6, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 678
    .local v1, "cursor":Landroid/database/MatrixCursor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adnRecords.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 680
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 681
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {p0, v6, v1, v3}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 680
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 667
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    .end local v3    # "i":I
    .end local v5    # "size":I
    :catch_0
    move-exception v2

    .line 668
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 669
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 670
    .local v2, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 686
    .end local v2    # "ex":Ljava/lang/SecurityException;
    :cond_1
    const-string v6, "IccProvider"

    const-string v7, "Cannot load ADN records"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v1, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method private loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 25
    .param p1, "record"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "cursor"    # Landroid/database/MatrixCursor;
    .param p3, "id"    # I

    .prologue
    .line 969
    sget-object v23, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    move-object/from16 v0, v23

    array-length v15, v0

    .line 970
    .local v15, "len":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_5

    .line 971
    new-array v7, v15, [Ljava/lang/Object;

    .line 972
    .local v7, "contact":[Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    .line 973
    .local v4, "alphaTag":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v17

    .line 974
    .local v17, "number":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v10

    .line 975
    .local v10, "emails":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 976
    .local v5, "anr":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v12

    .line 977
    .local v12, "grpIds":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 978
    .local v19, "srecid":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "loadRecord: srecid = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 979
    const/16 v23, 0x8

    move/from16 v0, v23

    if-lt v15, v0, :cond_0

    .line 980
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAasIndex()I

    move-result v3

    .line 981
    .local v3, "aasIndex":I
    const/16 v23, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v7, v23

    .line 983
    .end local v3    # "aasIndex":I
    :cond_0
    const/16 v23, 0x9

    move/from16 v0, v23

    if-lt v15, v0, :cond_1

    .line 984
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getSne()Ljava/lang/String;

    move-result-object v18

    .line 985
    .local v18, "sne":Ljava/lang/String;
    const/16 v23, 0x8

    aput-object v18, v7, v23

    .line 988
    .end local v18    # "sne":Ljava/lang/String;
    :cond_1
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "loadRecord: record:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 990
    const/16 v23, 0x0

    aput-object v4, v7, v23

    .line 991
    const/16 v23, 0x1

    aput-object v17, v7, v23

    .line 993
    const-string v23, "ro.mtk_kor_customization"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "1"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 994
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_3

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v23

    const v24, 0xfefe

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 995
    const/16 v22, 0x0

    .line 996
    .local v22, "ucslen":I
    const-string v20, ""

    .line 999
    .local v20, "strKSC":Ljava/lang/String;
    const/16 v23, 0x1

    :try_start_0
    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    const-string v24, "utf-16be"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    .line 1001
    .local v14, "inData":[B
    new-instance v21, Ljava/lang/String;

    const-string v23, "KSC5601"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v14, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v20    # "strKSC":Ljava/lang/String;
    .local v21, "strKSC":Ljava/lang/String;
    move-object/from16 v20, v21

    .line 1006
    .end local v14    # "inData":[B
    .end local v21    # "strKSC":Ljava/lang/String;
    .restart local v20    # "strKSC":Ljava/lang/String;
    :goto_0
    if-eqz v20, :cond_3

    .line 1007
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    .line 1008
    :goto_1
    if-lez v22, :cond_2

    add-int/lit8 v23, v22, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    const v24, 0xf8f7

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 1009
    add-int/lit8 v22, v22, -0x1

    goto :goto_1

    .line 1002
    :catch_0
    move-exception v11

    .line 1003
    .local v11, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Implausible UnsupportedEncodingException : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1011
    .end local v11    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_2
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v7, v23

    .line 1012
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Decode ADN using KSC5601 : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v24, v7, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1017
    .end local v20    # "strKSC":Ljava/lang/String;
    .end local v22    # "ucslen":I
    :cond_3
    if-eqz v10, :cond_6

    .line 1018
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1019
    .local v9, "emailString":Ljava/lang/StringBuilder;
    move-object v6, v10

    .local v6, "arr$":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_4

    aget-object v8, v6, v13

    .line 1021
    .local v8, "email":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Adding email:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    const-string v23, ","

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1026
    .end local v8    # "email":Ljava/lang/String;
    :cond_4
    const/16 v23, 0x2

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v7, v23

    .line 1031
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v9    # "emailString":Ljava/lang/StringBuilder;
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    :goto_3
    const/16 v23, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v7, v23

    .line 1032
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "loadRecord Adding anrs:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x3

    aget-object v24, v7, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1033
    const/16 v23, 0x4

    aput-object v19, v7, v23

    .line 1034
    const/16 v23, 0x5

    aput-object v12, v7, v23

    .line 1035
    const/16 v23, 0x6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v7, v23

    .line 1036
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1038
    .end local v4    # "alphaTag":Ljava/lang/String;
    .end local v5    # "anr":Ljava/lang/String;
    .end local v7    # "contact":[Ljava/lang/Object;
    .end local v10    # "emails":[Ljava/lang/String;
    .end local v12    # "grpIds":Ljava/lang/String;
    .end local v17    # "number":Ljava/lang/String;
    .end local v19    # "srecid":Ljava/lang/String;
    :cond_5
    return-void

    .line 1028
    .restart local v4    # "alphaTag":Ljava/lang/String;
    .restart local v5    # "anr":Ljava/lang/String;
    .restart local v7    # "contact":[Ljava/lang/Object;
    .restart local v10    # "emails":[Ljava/lang/String;
    .restart local v12    # "grpIds":Ljava/lang/String;
    .restart local v17    # "number":Ljava/lang/String;
    .restart local v19    # "srecid":Ljava/lang/String;
    :cond_6
    const/16 v23, 0x2

    const/16 v24, 0x0

    aput-object v24, v7, v23

    goto :goto_3
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1041
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "inVal"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x27

    .line 378
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 379
    .local v0, "len":I
    move-object v1, p1

    .line 381
    .local v1, "retVal":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 382
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 385
    :cond_0
    return-object v1
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 11
    .param p1, "efType"    # I
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "oldNumber"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;
    .param p5, "newNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "subId"    # I

    .prologue
    .line 758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subscription="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 763
    const/4 v10, 0x0

    .line 766
    .local v10, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 767
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    move/from16 v2, p7

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 768
    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    .line 776
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 777
    return v10

    .line 771
    :catch_0
    move-exception v9

    .line 772
    .local v9, "ex":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 773
    .end local v9    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 774
    .local v9, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v9}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateIccRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9
    .param p1, "efType"    # I
    .param p2, "nIndex"    # I
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "newNumber"    # Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "subId"    # I

    .prologue
    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIccRecordInEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newnumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 786
    const/4 v8, 0x0

    .line 789
    .local v8, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 791
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move v1, p6

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p2

    move-object v6, p5

    .line 792
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 800
    .end local v0    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIccRecordInEfByIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 801
    return v8

    .line 795
    :catch_0
    move-exception v7

    .line 796
    .local v7, "ex":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 797
    .end local v7    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 798
    .local v7, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateUsimPBRecordsByIndexWithError(ILcom/android/internal/telephony/uicc/AdnRecord;II)I
    .locals 5
    .param p1, "efType"    # I
    .param p2, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "index"    # I
    .param p4, "subId"    # I

    .prologue
    .line 1087
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUsimPBRecordsByIndexWithError subId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",newAdn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1089
    const/4 v2, 0x0

    .line 1092
    .local v2, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1094
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 1095
    invoke-interface {v1, p4, p1, p2, p3}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsByIndexWithError(IILcom/android/internal/telephony/uicc/AdnRecord;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1102
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUsimPBRecordsByIndexWithError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1103
    return v2

    .line 1097
    :catch_0
    move-exception v0

    .line 1098
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1099
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1100
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateUsimPBRecordsBySearchWithError(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;I)I
    .locals 5
    .param p1, "efType"    # I
    .param p2, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p4, "subId"    # I

    .prologue
    .line 1064
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUsimPBRecordsBySearchWithError subId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",oldAdn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",newAdn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1067
    const/4 v2, 0x0

    .line 1070
    .local v2, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1072
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 1073
    invoke-interface {v1, p4, p1, p2, p3}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsBySearchWithError(IILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1080
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUsimPBRecordsBySearchWithError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1081
    return v2

    .line 1075
    :catch_0
    move-exception v0

    .line 1076
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1077
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1078
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateUsimRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 16
    .param p1, "efType"    # I
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "oldNumber"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;
    .param p5, "newNumber"    # Ljava/lang/String;
    .param p6, "strAnr"    # Ljava/lang/String;
    .param p7, "strEmail"    # Ljava/lang/String;
    .param p8, "subId"    # I

    .prologue
    .line 808
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimRecordInEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", anr ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 813
    const/4 v15, 0x0

    .line 815
    .local v15, "result":I
    const/4 v13, 0x0

    .line 816
    .local v13, "emails":[Ljava/lang/String;
    if-eqz p7, :cond_0

    .line 817
    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    .line 818
    const/4 v2, 0x0

    aput-object p7, v13, v2

    .line 822
    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 824
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    .line 825
    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move/from16 v2, p8

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-interface/range {v1 .. v13}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v15

    .line 834
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimRecordInEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 835
    return v15

    .line 829
    :catch_0
    move-exception v14

    .line 830
    .local v14, "ex":Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 831
    .end local v14    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v14

    .line 832
    .local v14, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v14}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateUsimRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 12
    .param p1, "efType"    # I
    .param p2, "nIndex"    # I
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "newNumber"    # Ljava/lang/String;
    .param p5, "strAnr"    # Ljava/lang/String;
    .param p6, "strEmail"    # Ljava/lang/String;
    .param p7, "subId"    # I

    .prologue
    .line 843
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimRecordInEfByIndex: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", anr ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 847
    const/4 v11, 0x0

    .line 849
    .local v11, "result":I
    const/4 v8, 0x0

    .line 850
    .local v8, "emails":[Ljava/lang/String;
    if-eqz p6, :cond_0

    .line 851
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    .line 852
    const/4 v2, 0x0

    aput-object p6, v8, v2

    .line 856
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 858
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    .line 859
    const/4 v7, 0x0

    move/from16 v2, p7

    move v3, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move v9, p2

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    .line 867
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimRecordInEfByIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 868
    return v11

    .line 862
    :catch_0
    move-exception v10

    .line 863
    .local v10, "ex":Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 864
    .end local v10    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v10

    .line 865
    .local v10, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v10}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 24
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 396
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v17

    .line 397
    .local v17, "match":I
    packed-switch v17, :pswitch_data_0

    .line 435
    :pswitch_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot insert into URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 399
    :pswitch_1
    const/16 v3, 0x6f3a

    .line 400
    .local v3, "efType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v7

    .line 439
    .local v7, "subId":I
    :cond_0
    :goto_0
    const-string v2, "delete"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 442
    const-string v4, ""

    .line 443
    .local v4, "tag":Ljava/lang/String;
    const-string v5, ""

    .line 444
    .local v5, "number":Ljava/lang/String;
    const/4 v6, 0x0

    .line 445
    .local v6, "emails":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 446
    .local v13, "pin2":Ljava/lang/String;
    const/16 v19, -0x1

    .line 448
    .local v19, "nIndex":I
    const-string v2, "AND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 449
    .local v22, "tokens":[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v18, v0

    .line 451
    .local v18, "n":I
    :cond_1
    :goto_1
    add-int/lit8 v18, v18, -0x1

    if-ltz v18, :cond_7

    .line 452
    aget-object v20, v22, v18

    .line 454
    .local v20, "param":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parsing \'"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\'"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 456
    const/16 v2, 0x3d

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 457
    .local v15, "index":I
    const/4 v2, -0x1

    if-ne v15, v2, :cond_2

    .line 458
    const-string v2, "IccProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolve: bad whereClause parameter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 404
    .end local v3    # "efType":I
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "emails":[Ljava/lang/String;
    .end local v7    # "subId":I
    .end local v13    # "pin2":Ljava/lang/String;
    .end local v15    # "index":I
    .end local v18    # "n":I
    .end local v19    # "nIndex":I
    .end local v20    # "param":Ljava/lang/String;
    .end local v22    # "tokens":[Ljava/lang/String;
    :pswitch_2
    const/16 v3, 0x6f3a

    .line 405
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v7

    .line 406
    .restart local v7    # "subId":I
    goto :goto_0

    .line 409
    .end local v3    # "efType":I
    .end local v7    # "subId":I
    :pswitch_3
    const/16 v3, 0x6f3b

    .line 410
    .restart local v3    # "efType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v7

    .line 411
    .restart local v7    # "subId":I
    goto :goto_0

    .line 414
    .end local v3    # "efType":I
    .end local v7    # "subId":I
    :pswitch_4
    const/16 v3, 0x6f3b

    .line 415
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v7

    .line 416
    .restart local v7    # "subId":I
    goto :goto_0

    .line 419
    .end local v3    # "efType":I
    .end local v7    # "subId":I
    :pswitch_5
    const/16 v3, 0x4f30

    .line 420
    .restart local v3    # "efType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v7

    .line 421
    .restart local v7    # "subId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/IccProvider;->isUICCCard(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    const/16 v3, 0x6f3a

    goto/16 :goto_0

    .line 427
    .end local v3    # "efType":I
    .end local v7    # "subId":I
    :pswitch_6
    const/16 v3, 0x4f30

    .line 428
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v7

    .line 429
    .restart local v7    # "subId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/IccProvider;->isUICCCard(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 430
    const/16 v3, 0x6f3a

    goto/16 :goto_0

    .line 462
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v5    # "number":Ljava/lang/String;
    .restart local v6    # "emails":[Ljava/lang/String;
    .restart local v13    # "pin2":Ljava/lang/String;
    .restart local v15    # "index":I
    .restart local v18    # "n":I
    .restart local v19    # "nIndex":I
    .restart local v20    # "param":Ljava/lang/String;
    .restart local v22    # "tokens":[Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 463
    .local v16, "key":Ljava/lang/String;
    add-int/lit8 v2, v15, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 464
    .local v23, "val":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parsing key is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " index of = is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " val is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 474
    const-string v2, "srecid"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 475
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    goto/16 :goto_1

    .line 476
    :cond_3
    const-string v2, "tag"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 477
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 478
    :cond_4
    const-string v2, "number"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 479
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 480
    :cond_5
    const-string v2, "emails"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 482
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 483
    :cond_6
    const-string v2, "pin2"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 484
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 488
    .end local v15    # "index":I
    .end local v16    # "key":Ljava/lang/String;
    .end local v20    # "param":Ljava/lang/String;
    .end local v23    # "val":Ljava/lang/String;
    :cond_7
    const/16 v21, 0x0

    .line 489
    .local v21, "result":I
    if-lez v19, :cond_a

    .line 490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete index is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 491
    const/4 v2, 0x7

    move/from16 v0, v17

    if-eq v2, v0, :cond_8

    const/16 v2, 0x8

    move/from16 v0, v17

    if-ne v2, v0, :cond_9

    .line 492
    :cond_8
    const-string v2, "deleteUsimRecordFromEfByIndex "

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 493
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1, v7}, Lcom/android/internal/telephony/IccProvider;->deleteUsimRecordFromEfByIndex(III)I

    move-result v21

    :goto_2
    move/from16 v2, v21

    .line 522
    :goto_3
    return v2

    .line 495
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1, v13, v7}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEfByIndex(IILjava/lang/String;I)I

    move-result v21

    goto :goto_2

    .line 500
    :cond_a
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_b

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 501
    const/4 v2, -0x5

    goto :goto_3

    .line 504
    :cond_b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    .line 505
    const/4 v2, 0x0

    goto :goto_3

    .line 508
    :cond_c
    const/4 v2, 0x7

    move/from16 v0, v17

    if-eq v2, v0, :cond_d

    const/16 v2, 0x8

    move/from16 v0, v17

    if-ne v2, v0, :cond_f

    .line 509
    :cond_d
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v8, 0x8

    if-lt v2, v8, :cond_e

    .line 510
    const-string v2, "updateUsimPBRecordsBySearchWithError "

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 511
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v8, ""

    invoke-direct {v2, v4, v5, v8}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v8, v7}, Lcom/android/internal/telephony/IccProvider;->updateUsimPBRecordsBySearchWithError(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;I)I

    move-result v21

    .line 520
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move/from16 v2, v21

    .line 522
    goto :goto_3

    :cond_e
    move-object/from16 v2, p0

    .line 514
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/IccProvider;->deleteUsimRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v21

    goto :goto_4

    :cond_f
    move-object/from16 v8, p0

    move v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    move v14, v7

    .line 517
    invoke-direct/range {v8 .. v14}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v21

    goto :goto_4

    .line 397
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 190
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 27
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 211
    const/4 v15, 0x0

    .line 215
    .local v15, "pin2":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insert "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 218
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v20

    .line 219
    .local v20, "match":I
    packed-switch v20, :pswitch_data_0

    .line 259
    :pswitch_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot insert into URL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 221
    :pswitch_1
    const/16 v3, 0x6f3a

    .line 222
    .local v3, "efType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v9

    .line 263
    .local v9, "subId":I
    :cond_0
    :goto_0
    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "tag":Ljava/lang/String;
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, "number":Ljava/lang/String;
    const/16 v22, 0x0

    .line 266
    .local v22, "result":I
    const/4 v2, 0x7

    move/from16 v0, v20

    if-eq v2, v0, :cond_1

    const/16 v2, 0x8

    move/from16 v0, v20

    if-ne v2, v0, :cond_a

    .line 267
    :cond_1
    const-string v2, "gas"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 268
    .local v8, "strGas":Ljava/lang/String;
    const-string v2, "number2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 269
    .local v6, "strAnr":Ljava/lang/String;
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 270
    .local v7, "strEmail":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v10, 0x8

    if-lt v2, v10, :cond_9

    .line 271
    const-string v2, "aas"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    .line 272
    .local v17, "aasIndex":Ljava/lang/Integer;
    if-nez v5, :cond_2

    .line 273
    const-string v5, ""

    .line 275
    :cond_2
    if-nez v4, :cond_3

    .line 276
    const-string v4, ""

    .line 278
    :cond_3
    new-instance v21, Lcom/android/internal/telephony/uicc/AdnRecord;

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 279
    .local v21, "record":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;)V

    .line 280
    const-string v2, "anr2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 281
    const-string v2, "anr2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 282
    .local v25, "strAnr2":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insert anr2: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 283
    const/4 v2, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;I)V

    .line 285
    .end local v25    # "strAnr2":Ljava/lang/String;
    :cond_4
    const-string v2, "anr3"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 286
    const-string v2, "anr3"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 287
    .local v26, "strAnr3":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insert anr3: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 288
    const/4 v2, 0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;I)V

    .line 290
    .end local v26    # "strAnr3":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/uicc/AdnRecord;->setGrpIds(Ljava/lang/String;)V

    .line 291
    const/16 v19, 0x0

    .line 292
    .local v19, "emails":[Ljava/lang/String;
    if-eqz v7, :cond_6

    const-string v2, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 293
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 294
    const/4 v2, 0x0

    aput-object v7, v19, v2

    .line 296
    :cond_6
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 297
    if-eqz v17, :cond_7

    .line 298
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAasIndex(I)V

    .line 300
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v10, 0x9

    if-lt v2, v10, :cond_8

    .line 301
    const-string v2, "sne"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 302
    .local v24, "sne":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->setSne(Ljava/lang/String;)V

    .line 305
    .end local v24    # "sne":Ljava/lang/String;
    :cond_8
    const-string v2, "updateUsimPBRecordsBySearchWithError "

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 306
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    invoke-direct {v2, v10, v11, v12}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v3, v2, v1, v9}, Lcom/android/internal/telephony/IccProvider;->updateUsimPBRecordsBySearchWithError(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;I)I

    move-result v22

    .line 317
    .end local v6    # "strAnr":Ljava/lang/String;
    .end local v7    # "strEmail":Ljava/lang/String;
    .end local v8    # "strGas":Ljava/lang/String;
    .end local v17    # "aasIndex":Ljava/lang/Integer;
    .end local v19    # "emails":[Ljava/lang/String;
    .end local v21    # "record":Lcom/android/internal/telephony/uicc/AdnRecord;
    :goto_1
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    .local v18, "buf":Ljava/lang/StringBuilder;
    if-gtz v22, :cond_c

    .line 321
    const/4 v2, -0x3

    move/from16 v0, v22

    if-ne v2, v0, :cond_b

    .line 322
    const-string v2, "Full/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 365
    .local v23, "resultUri":Landroid/net/Uri;
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 374
    return-object v23

    .line 226
    .end local v3    # "efType":I
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    .end local v9    # "subId":I
    .end local v18    # "buf":Ljava/lang/StringBuilder;
    .end local v22    # "result":I
    .end local v23    # "resultUri":Landroid/net/Uri;
    :pswitch_2
    const/16 v3, 0x6f3a

    .line 227
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v9

    .line 228
    .restart local v9    # "subId":I
    goto/16 :goto_0

    .line 231
    .end local v3    # "efType":I
    .end local v9    # "subId":I
    :pswitch_3
    const/16 v3, 0x6f3b

    .line 232
    .restart local v3    # "efType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v9

    .line 233
    .restart local v9    # "subId":I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 234
    goto/16 :goto_0

    .line 237
    .end local v3    # "efType":I
    .end local v9    # "subId":I
    :pswitch_4
    const/16 v3, 0x6f3b

    .line 238
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v9

    .line 239
    .restart local v9    # "subId":I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 240
    goto/16 :goto_0

    .line 243
    .end local v3    # "efType":I
    .end local v9    # "subId":I
    :pswitch_5
    const/16 v3, 0x4f30

    .line 244
    .restart local v3    # "efType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v9

    .line 245
    .restart local v9    # "subId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/IccProvider;->isUICCCard(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    const/16 v3, 0x6f3a

    goto/16 :goto_0

    .line 251
    .end local v3    # "efType":I
    .end local v9    # "subId":I
    :pswitch_6
    const/16 v3, 0x4f30

    .line 252
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v9

    .line 253
    .restart local v9    # "subId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/IccProvider;->isUICCCard(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    const/16 v3, 0x6f3a

    goto/16 :goto_0

    .line 309
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v5    # "number":Ljava/lang/String;
    .restart local v6    # "strAnr":Ljava/lang/String;
    .restart local v7    # "strEmail":Ljava/lang/String;
    .restart local v8    # "strGas":Ljava/lang/String;
    .restart local v22    # "result":I
    :cond_9
    const-string v2, "addUsimRecordToEf "

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 310
    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/IccProvider;->addUsimRecordToEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v22

    goto/16 :goto_1

    .line 314
    .end local v6    # "strAnr":Ljava/lang/String;
    .end local v7    # "strEmail":Ljava/lang/String;
    .end local v8    # "strGas":Ljava/lang/String;
    :cond_a
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move-object v12, v4

    move-object v13, v5

    move/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v22

    goto/16 :goto_1

    .line 324
    .restart local v18    # "buf":Ljava/lang/StringBuilder;
    :cond_b
    const-string v2, "Error/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 328
    :cond_c
    packed-switch v20, :pswitch_data_1

    .line 359
    :goto_3
    :pswitch_7
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 330
    :pswitch_8
    const-string v2, "adn/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 335
    :pswitch_9
    const-string v2, "adn/subId/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 340
    :pswitch_a
    const-string v2, "fdn/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 344
    :pswitch_b
    const-string v2, "fdn/subId/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 348
    :pswitch_c
    const-string v2, "pbr/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 353
    :pswitch_d
    const-string v2, "adn/subId/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 328
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_7
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x6f49

    const/16 v4, 0x6f3b

    const/16 v3, 0x4f30

    const/16 v2, 0x6f3a

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :pswitch_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    .line 147
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 150
    :pswitch_2
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 153
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 156
    :pswitch_4
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-direct {p0, v5, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 159
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v5, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 162
    :pswitch_6
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 165
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 168
    :pswitch_8
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->loadAllSimContacts(I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 30
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 527
    const/16 v19, 0x0

    .line 531
    .local v19, "pin2":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 533
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v24

    .line 534
    .local v24, "match":I
    packed-switch v24, :pswitch_data_0

    .line 574
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown URL "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 536
    :pswitch_1
    const/16 v3, 0x6f3a

    .line 537
    .local v3, "efType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v9

    .line 577
    .local v9, "subId":I
    :cond_0
    :goto_0
    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 578
    .local v12, "tag":Ljava/lang/String;
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 580
    .local v13, "number":Ljava/lang/String;
    const-string v2, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 581
    .local v5, "newTag":Ljava/lang/String;
    const-string v2, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 582
    .local v6, "newNumber":Ljava/lang/String;
    const-string v2, "srecid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    .line 583
    .local v23, "idInt":Ljava/lang/Integer;
    const/4 v4, 0x0

    .line 584
    .local v4, "index":I
    if-eqz v23, :cond_1

    .line 585
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 587
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update: index="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 588
    const/16 v26, 0x0

    .line 589
    .local v26, "result":I
    const/4 v2, 0x7

    move/from16 v0, v24

    if-eq v2, v0, :cond_2

    const/16 v2, 0x8

    move/from16 v0, v24

    if-ne v2, v0, :cond_d

    .line 590
    :cond_2
    const-string v2, "newNumber2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 591
    .local v7, "strAnr":Ljava/lang/String;
    const-string v2, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 593
    .local v8, "strEmail":Ljava/lang/String;
    const-string v2, "aas"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    .line 594
    .local v21, "aasIndex":Ljava/lang/Integer;
    const-string v2, "sne"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 595
    .local v27, "sne":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 596
    const-string v6, ""

    .line 598
    :cond_3
    if-nez v5, :cond_4

    .line 599
    const-string v5, ""

    .line 601
    :cond_4
    new-instance v25, Lcom/android/internal/telephony/uicc/AdnRecord;

    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-direct {v0, v3, v2, v5, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 602
    .local v25, "record":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;)V

    .line 603
    const-string v2, "newAnr2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 604
    const-string v2, "newAnr2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 605
    .local v28, "strAnr2":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update newAnr2: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 606
    const/4 v2, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;I)V

    .line 608
    .end local v28    # "strAnr2":Ljava/lang/String;
    :cond_5
    const-string v2, "newAnr3"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 609
    const-string v2, "newAnr3"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 610
    .local v29, "strAnr3":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update newAnr3: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 611
    const/4 v2, 0x2

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;I)V

    .line 613
    .end local v29    # "strAnr3":Ljava/lang/String;
    :cond_6
    const/16 v22, 0x0

    .line 614
    .local v22, "emails":[Ljava/lang/String;
    if-eqz v8, :cond_7

    const-string v2, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 615
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 616
    const/4 v2, 0x0

    aput-object v8, v22, v2

    .line 618
    :cond_7
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 619
    if-eqz v21, :cond_8

    .line 620
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAasIndex(I)V

    .line 622
    :cond_8
    if-eqz v27, :cond_9

    .line 623
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->setSne(Ljava/lang/String;)V

    .line 625
    :cond_9
    if-lez v4, :cond_b

    .line 626
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v10, 0x8

    if-lt v2, v10, :cond_a

    .line 627
    const-string v2, "updateUsimPBRecordsByIndexWithError"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 628
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1, v4, v9}, Lcom/android/internal/telephony/IccProvider;->updateUsimPBRecordsByIndexWithError(ILcom/android/internal/telephony/uicc/AdnRecord;II)I

    move-result v26

    .line 652
    .end local v7    # "strAnr":Ljava/lang/String;
    .end local v8    # "strEmail":Ljava/lang/String;
    .end local v21    # "aasIndex":Ljava/lang/Integer;
    .end local v22    # "emails":[Ljava/lang/String;
    .end local v25    # "record":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v27    # "sne":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 654
    return v26

    .line 541
    .end local v3    # "efType":I
    .end local v4    # "index":I
    .end local v5    # "newTag":Ljava/lang/String;
    .end local v6    # "newNumber":Ljava/lang/String;
    .end local v9    # "subId":I
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "number":Ljava/lang/String;
    .end local v23    # "idInt":Ljava/lang/Integer;
    .end local v26    # "result":I
    :pswitch_2
    const/16 v3, 0x6f3a

    .line 542
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v9

    .line 543
    .restart local v9    # "subId":I
    goto/16 :goto_0

    .line 546
    .end local v3    # "efType":I
    .end local v9    # "subId":I
    :pswitch_3
    const/16 v3, 0x6f3b

    .line 547
    .restart local v3    # "efType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v9

    .line 548
    .restart local v9    # "subId":I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 549
    goto/16 :goto_0

    .line 552
    .end local v3    # "efType":I
    .end local v9    # "subId":I
    :pswitch_4
    const/16 v3, 0x6f3b

    .line 553
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v9

    .line 554
    .restart local v9    # "subId":I
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 555
    goto/16 :goto_0

    .line 558
    .end local v3    # "efType":I
    .end local v9    # "subId":I
    :pswitch_5
    const/16 v3, 0x4f30

    .line 559
    .restart local v3    # "efType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v9

    .line 560
    .restart local v9    # "subId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/IccProvider;->isUICCCard(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 561
    const/16 v3, 0x6f3a

    goto/16 :goto_0

    .line 566
    .end local v3    # "efType":I
    .end local v9    # "subId":I
    :pswitch_6
    const/16 v3, 0x4f30

    .line 567
    .restart local v3    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v9

    .line 568
    .restart local v9    # "subId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/IccProvider;->isUICCCard(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    const/16 v3, 0x6f3a

    goto/16 :goto_0

    .restart local v4    # "index":I
    .restart local v5    # "newTag":Ljava/lang/String;
    .restart local v6    # "newNumber":Ljava/lang/String;
    .restart local v7    # "strAnr":Ljava/lang/String;
    .restart local v8    # "strEmail":Ljava/lang/String;
    .restart local v12    # "tag":Ljava/lang/String;
    .restart local v13    # "number":Ljava/lang/String;
    .restart local v21    # "aasIndex":Ljava/lang/Integer;
    .restart local v22    # "emails":[Ljava/lang/String;
    .restart local v23    # "idInt":Ljava/lang/Integer;
    .restart local v25    # "record":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v26    # "result":I
    .restart local v27    # "sne":Ljava/lang/String;
    :cond_a
    move-object/from16 v2, p0

    .line 630
    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/IccProvider;->updateUsimRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v26

    goto :goto_1

    .line 634
    :cond_b
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v10, 0x8

    if-lt v2, v10, :cond_c

    .line 635
    const-string v2, "updateUsimPBRecordsBySearchWithError"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 636
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v10, ""

    invoke-direct {v2, v12, v13, v10}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v2, v1, v9}, Lcom/android/internal/telephony/IccProvider;->updateUsimPBRecordsBySearchWithError(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;I)I

    move-result v26

    goto/16 :goto_1

    :cond_c
    move-object/from16 v10, p0

    move v11, v3

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move/from16 v18, v9

    .line 639
    invoke-direct/range {v10 .. v18}, Lcom/android/internal/telephony/IccProvider;->updateUsimRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v26

    goto/16 :goto_1

    .line 645
    .end local v7    # "strAnr":Ljava/lang/String;
    .end local v8    # "strEmail":Ljava/lang/String;
    .end local v21    # "aasIndex":Ljava/lang/Integer;
    .end local v22    # "emails":[Ljava/lang/String;
    .end local v25    # "record":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v27    # "sne":Ljava/lang/String;
    :cond_d
    if-lez v4, :cond_e

    move-object/from16 v14, p0

    move v15, v3

    move/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move/from16 v20, v9

    .line 646
    invoke-direct/range {v14 .. v20}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v26

    goto/16 :goto_1

    :cond_e
    move-object/from16 v10, p0

    move v11, v3

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v19

    move/from16 v17, v9

    .line 648
    invoke-direct/range {v10 .. v17}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v26

    goto/16 :goto_1

    .line 534
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
