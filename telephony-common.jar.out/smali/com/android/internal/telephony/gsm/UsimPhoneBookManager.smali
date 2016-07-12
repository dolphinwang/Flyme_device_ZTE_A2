.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.super Landroid/os/Handler;
.source "UsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;,
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_AAS_LOAD_DONE:I = 0x8

.field private static final EVENT_AAS_UPDATE_DONE:I = 0x15

.field private static final EVENT_ANR_LOAD_DONE:I = 0x5

.field private static final EVENT_ANR_RECORD_LOAD_DONE:I = 0xd

.field private static final EVENT_ANR_UPDATE_DONE:I = 0x9

.field private static final EVENT_EMAIL_LENGTH_READ_DONE:I = 0x12

.field private static final EVENT_EMAIL_LOAD_DONE:I = 0x4

.field private static final EVENT_EMAIL_RECORD_LOAD_DONE:I = 0x13

.field private static final EVENT_EMAIL_UPDATE_DONE:I = 0xb

.field private static final EVENT_EXT1_LOAD_DONE:I = 0x3e9

.field private static final EVENT_GAS_LOAD_DONE:I = 0x7

.field private static final EVENT_GAS_UPDATE_DONE:I = 0x11

.field private static final EVENT_GET_AAS_RECORD_SIZE_DONE:I = 0x14

.field private static final EVENT_GET_ANR_RECORD_SIZE_DONE:I = 0xe

.field private static final EVENT_GET_RECORDS_SIZE_DONE:I = 0x3e8

.field private static final EVENT_GET_RECORD_SIZE_DONE:I = 0x16

.field private static final EVENT_GRP_LOAD_DONE:I = 0x6

.field private static final EVENT_GRP_RECORD_LOAD_DONE:I = 0xf

.field private static final EVENT_GRP_UPDATE_DONE:I = 0xa

.field private static final EVENT_IAP_LOAD_DONE:I = 0x3

.field private static final EVENT_IAP_RECORD_LOAD_DONE:I = 0x1a

.field private static final EVENT_IAP_UPDATE_DONE:I = 0xc

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final EVENT_QUERY_PHB_ADN_INFO:I = 0x1c

.field private static final EVENT_SELECT_EF_FILE_DONE:I = 0x1b

.field private static final EVENT_SNE_LOAD_DONE:I = 0x18

.field private static final EVENT_SNE_RECORD_LOAD_DONE:I = 0x17

.field private static final EVENT_SNE_UPDATE_DONE:I = 0x19

.field private static final EVENT_UPB_CAPABILITY_QUERY_DONE:I = 0x10

.field private static final EVENT_USIM_ADN_LOAD_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "UsimPhoneBookManager"

.field private static final UPB_EF_AAS:I = 0x3

.field private static final UPB_EF_ANR:I = 0x0

.field private static final UPB_EF_EMAIL:I = 0x1

.field private static final UPB_EF_GAS:I = 0x4

.field private static final UPB_EF_GRP:I = 0x5

.field private static final UPB_EF_SNE:I = 0x2

.field private static final USIM_EFAAS_TAG:I = 0xc7

.field private static final USIM_EFADN_TAG:I = 0xc0

.field private static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFCCP1_TAG:I = 0xcb

.field private static final USIM_EFEMAIL_TAG:I = 0xca

.field private static final USIM_EFEXT1_TAG:I = 0xc2

.field private static final USIM_EFGRP_TAG:I = 0xc6

.field private static final USIM_EFGSD_TAG:I = 0xc8

.field private static final USIM_EFIAP_TAG:I = 0xc1

.field private static final USIM_EFPBC_TAG:I = 0xc5

.field private static final USIM_EFSNE_TAG:I = 0xc3

.field private static final USIM_EFUID_TAG:I = 0xc9

.field public static final USIM_ERROR_GROUP_COUNT:I = -0x14

.field public static final USIM_ERROR_NAME_LEN:I = -0xa

.field public static final USIM_MAX_ANR_COUNT:I = 0x3

.field private static final USIM_TYPE1_TAG:I = 0xa8

.field private static final USIM_TYPE2_CONDITIONAL_LENGTH:I = 0x2

.field private static final USIM_TYPE2_TAG:I = 0xa9

.field private static final USIM_TYPE3_TAG:I = 0xaa


# instance fields
.field protected efData:Lcom/android/internal/telephony/EFResponseData;

.field private hasAnrFile:Z

.field private hasEmailFile:Z

.field private hasGrpFile:Z

.field private mAasFileRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mAasForAnrRec:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAasLock:Ljava/lang/Object;

.field private mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

.field private mAdnFileSize:I

.field private mAdnRecordSize:[I

.field private mAnrFileList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mAnrFileRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mAnrFileSize:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAnrRecordSize:I

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mEmailFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mEmailFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mEmailFileSize:I

.field private mEmailPresentInIap:Z

.field private mEmailRecTable:[I

.field private mEmailRecordSize:I

.field private mEmailTagNumberInIap:I

.field private mEmailsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExt1ForAnrRec:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mGasForGrp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/internal/telephony/uicc/UsimGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mGasLock:Ljava/lang/Object;

.field private mIapFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mIapFileRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private mIsSameEmailEfid:Z

.field private final mLock:Ljava/lang/Object;

.field private mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

.field private mPbrFileRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mRecordSize:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mRefreshCache:Z

.field private mResult:I

.field private mSneFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mSneFileSize:I

.field private mSneRecordSize:I

.field private final mUPBCapabilityLock:Ljava/lang/Object;

.field private mUpbCap:[I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V
    .locals 5
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "cache"    # Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .prologue
    const/16 v4, 0xfa

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 202
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    .line 91
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsSameEmailEfid:Z

    .line 93
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 94
    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    .line 95
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    .line 96
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    .line 97
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileSize:I

    .line 98
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    .line 107
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 110
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 111
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    .line 112
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    .line 113
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileList:Ljava/util/ArrayList;

    .line 114
    const/16 v0, 0x190

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    .line 117
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    .line 118
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    .line 119
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    .line 120
    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 188
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    .line 189
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 190
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 191
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 192
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 193
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 194
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 196
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->efData:Lcom/android/internal/telephony/EFResponseData;

    .line 198
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasEmailFile:Z

    .line 199
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasAnrFile:Z

    .line 200
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasGrpFile:Z

    .line 203
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 207
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 211
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 212
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 213
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 214
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 220
    const-string v0, "UsimPhoneBookManager"

    const-string v1, "UsimPhoneBookManager constructor finished. "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 5
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "cache"    # Lcom/android/internal/telephony/uicc/AdnRecordCache;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p4, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .prologue
    const/16 v4, 0xfa

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 224
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasLock:Ljava/lang/Object;

    .line 91
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsSameEmailEfid:Z

    .line 93
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 94
    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    .line 95
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    .line 96
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    .line 97
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileSize:I

    .line 98
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    .line 107
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 110
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 111
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    .line 112
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    .line 113
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileList:Ljava/util/ArrayList;

    .line 114
    const/16 v0, 0x190

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    .line 117
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    .line 118
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    .line 119
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    .line 120
    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 188
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    .line 189
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 190
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 191
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 192
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 193
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 194
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 196
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->efData:Lcom/android/internal/telephony/EFResponseData;

    .line 198
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasEmailFile:Z

    .line 199
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasAnrFile:Z

    .line 200
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasGrpFile:Z

    .line 225
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 229
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 233
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 234
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 235
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 236
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 242
    const-string v0, "UsimPhoneBookManager"

    const-string v1, "UsimPhoneBookManager constructor finished. "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .param p1, "x1"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private buildAnrRecord(Ljava/lang/String;II)[B
    .locals 7
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "recordSize"    # I
    .param p3, "aas"    # I

    .prologue
    const/4 v6, 0x0

    .line 2883
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buildAnrRecord anr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",recordSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",aas:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2884
    if-gtz p2, :cond_0

    .line 2885
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrRecordSize()V

    .line 2887
    :cond_0
    iget p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    .line 2888
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buildAnrRecord recordSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2892
    new-array v0, p2, [B

    .line 2893
    .local v0, "anrString":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 2894
    const/4 v4, -0x1

    aput-byte v4, v0, v2

    .line 2893
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2897
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertPreDial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2898
    .local v3, "updatedAnr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2899
    const-string v4, "UsimPhoneBookManager"

    const-string v5, "[buildAdnString] Empty dialing number"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    .end local v0    # "anrString":[B
    :cond_2
    :goto_1
    return-object v0

    .line 2901
    .restart local v0    # "anrString":[B
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x14

    if-le v4, v5, :cond_4

    .line 2902
    const-string v4, "UsimPhoneBookManager"

    const-string v5, "[buildAnrRecord] Max length of dialing number is 20"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    const/4 v0, 0x0

    goto :goto_1

    .line 2906
    :cond_4
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 2907
    .local v1, "bcdNumber":[B
    if-eqz v1, :cond_2

    .line 2908
    int-to-byte v4, p3

    aput-byte v4, v0, v6

    .line 2909
    const/4 v4, 0x2

    array-length v5, v1

    invoke-static {v1, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2911
    const/4 v4, 0x1

    array-length v5, v1

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    goto :goto_1
.end method

.method private buildEmailRecord(Ljava/lang/String;II)[B
    .locals 10
    .param p1, "strEmail"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "recordSize"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 2921
    new-array v1, p3, [B

    .line 2923
    .local v1, "eMailRecData":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 2924
    aput-byte v7, v1, v2

    .line 2923
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2926
    :cond_0
    if-eqz p1, :cond_1

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2927
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 2928
    .local v0, "eMailData":[B
    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    if-eq v6, v7, :cond_2

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v6, :cond_2

    array-length v6, v1

    add-int/lit8 v4, v6, -0x2

    .line 2929
    .local v4, "maxDataLength":I
    :goto_1
    const-string v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildEmailRecord eMailData.length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", maxDataLength="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    array-length v6, v0

    if-le v6, v4, :cond_3

    .line 2932
    const/4 v1, 0x0

    .line 2948
    .end local v0    # "eMailData":[B
    .end local v1    # "eMailRecData":[B
    .end local v4    # "maxDataLength":I
    :cond_1
    :goto_2
    return-object v1

    .line 2928
    .restart local v0    # "eMailData":[B
    .restart local v1    # "eMailRecData":[B
    :cond_2
    array-length v4, v1

    goto :goto_1

    .line 2934
    .restart local v4    # "maxDataLength":I
    :cond_3
    array-length v6, v0

    invoke-static {v0, v9, v1, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2935
    const-string v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildEmailRecord eMailData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", eMailRecData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2937
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v6, :cond_1

    .line 2938
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAdnFileids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 2939
    .local v5, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v6, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    add-int/lit8 v7, p2, -0x1

    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int/2addr v7, v8

    if-ne v6, v7, :cond_4

    .line 2940
    add-int/lit8 v6, p3, -0x2

    iget-byte v7, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mSfi:B

    aput-byte v7, v1, v6

    .line 2941
    add-int/lit8 v6, p3, -0x1

    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 2942
    const-string v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildEmailRecord x+1="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-byte v8, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mSfi:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", x+2="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v8, p2, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private changeAdnRecordNumber(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "baseNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4815
    .local p2, "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4816
    .local v2, "size":I
    const/4 v1, 0x0

    .line 4819
    .local v1, "i":I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 4820
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 4821
    .local v0, "adnRecord":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v0, :cond_0

    .line 4822
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecordIndex(I)V

    .line 4819
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4825
    .end local v0    # "adnRecord":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_1
    return-object p2
.end method

.method private checkIsPhbReady()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 4632
    const-string v5, "false"

    .line 4633
    .local v5, "strPhbReady":Ljava/lang/String;
    const-string v3, ""

    .line 4634
    .local v3, "strAllSimState":Ljava/lang/String;
    const-string v4, ""

    .line 4635
    .local v4, "strCurSimState":Ljava/lang/String;
    const/4 v0, 0x0

    .line 4636
    .local v0, "isSimLocked":Z
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getSlotId()I

    move-result v2

    .line 4637
    .local v2, "slotId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v6

    .line 4638
    .local v6, "subId":[I
    aget v10, v6, v9

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 4640
    .local v1, "phoneId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v10

    if-ne v10, v8, :cond_2

    .line 4641
    const-string v10, "gsm.sim.state"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4643
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 4644
    const-string v10, ","

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 4645
    .local v7, "values":[Ljava/lang/String;
    if-ltz v1, :cond_0

    array-length v10, v7

    if-ge v1, v10, :cond_0

    aget-object v10, v7, v1

    if-eqz v10, :cond_0

    .line 4646
    aget-object v4, v7, v1

    .line 4650
    .end local v7    # "values":[Ljava/lang/String;
    :cond_0
    const-string v10, "NETWORK_LOCKED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "PIN_REQUIRED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_1
    move v0, v8

    .line 4652
    :goto_0
    if-ne v8, v2, :cond_4

    .line 4653
    const-string v10, "gsm.sim.ril.phbready.2"

    const-string v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4663
    :cond_2
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isPhbReady] subId[0]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v6, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", slotId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isPhbReady: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",strSimState: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4665
    const-string v10, "true"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-nez v0, :cond_7

    :goto_2
    return v8

    :cond_3
    move v0, v9

    .line 4650
    goto :goto_0

    .line 4654
    :cond_4
    const/4 v10, 0x2

    if-ne v10, v2, :cond_5

    .line 4655
    const-string v10, "gsm.sim.ril.phbready.3"

    const-string v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 4656
    :cond_5
    const/4 v10, 0x3

    if-ne v10, v2, :cond_6

    .line 4657
    const-string v10, "gsm.sim.ril.phbready.4"

    const-string v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 4659
    :cond_6
    const-string v10, "gsm.sim.ril.phbready"

    const-string v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_7
    move v8, v9

    .line 4665
    goto :goto_2
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 1004
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    .line 1005
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 1006
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 1010
    :goto_0
    return-void

    .line 1009
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    goto :goto_0
.end method

.method private decodeGas(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "srcGas"    # Ljava/lang/String;

    .prologue
    .line 1913
    const-string v5, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[decodeGas] gas string is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_1

    const-string v4, "null"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 1915
    :cond_0
    const/4 v2, 0x0

    .line 1931
    :goto_1
    return-object v2

    :cond_1
    move-object v4, p1

    .line 1913
    goto :goto_0

    .line 1917
    :cond_2
    const/4 v2, 0x0

    .line 1920
    .local v2, "retGas":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1921
    .local v0, "ba":[B
    if-nez v0, :cond_3

    .line 1922
    const-string v4, "UsimPhoneBookManager"

    const-string v5, "gas string is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1926
    .end local v0    # "ba":[B
    :catch_0
    move-exception v1

    .line 1927
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v4, "UsimPhoneBookManager"

    const-string v5, "[decodeGas] implausible UnsupportedEncodingException"

    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1925
    .end local v1    # "ex":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "ba":[B
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    const-string v6, "utf-16be"

    invoke-direct {v3, v0, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "retGas":Ljava/lang/String;
    .local v3, "retGas":Ljava/lang/String;
    move-object v2, v3

    .line 1930
    .end local v3    # "retGas":Ljava/lang/String;
    .restart local v2    # "retGas":Ljava/lang/String;
    goto :goto_1

    .line 1928
    .end local v0    # "ba":[B
    :catch_1
    move-exception v1

    .line 1929
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v4, "UsimPhoneBookManager"

    const-string v5, "[decodeGas] RuntimeException"

    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 1938
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1940
    .local v3, "output":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1941
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1942
    .local v0, "hexInt":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v2, v4, :cond_0

    .line 1943
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1942
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1945
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1940
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1948
    .end local v0    # "hexInt":Ljava/lang/String;
    .end local v2    # "j":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getAdnStorageInfo()[I
    .locals 4

    .prologue
    .line 4275
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "getAdnStorageInfo "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4277
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v1, :cond_0

    .line 4278
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    const/16 v3, 0x1c

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->queryPhbStorageInfo(ILandroid/os/Message;)V

    .line 4279
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4281
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4285
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4290
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    :goto_1
    return-object v1

    .line 4282
    :catch_0
    move-exception v0

    .line 4283
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "UsimPhoneBookManager"

    const-string v3, "Interrupted Exception in getAdnStorageInfo"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4285
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 4287
    :cond_0
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "GetAdnStorageInfo: filehandle is null."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4288
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getRecNum([Ljava/lang/String;II[BI)I
    .locals 9
    .param p1, "emails"    # [Ljava/lang/String;
    .param p2, "pbrRecNum"    # I
    .param p3, "nIapRecNum"    # I
    .param p4, "iapRec"    # [B
    .param p5, "tagNum"    # I

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xff

    const/4 v4, -0x1

    .line 2555
    const/4 v0, 0x0

    .line 2556
    .local v0, "hasEmail":Z
    if-nez p1, :cond_2

    .line 2558
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v5, p4, v5

    if-eq v5, v7, :cond_0

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v5, p4, v5

    if-lez v5, :cond_0

    .line 2559
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v6, p4, v6

    add-int/lit8 v6, v6, -0x1

    aput v8, v5, v6

    :cond_0
    move v3, v4

    .line 2600
    :cond_1
    :goto_0
    return v3

    .line 2563
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_3

    .line 2564
    aget-object v5, p1, v1

    if-eqz v5, :cond_5

    aget-object v5, p1, v1

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2565
    const/4 v0, 0x1

    .line 2569
    :cond_3
    if-nez v0, :cond_6

    .line 2570
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v5, p4, v5

    if-eq v5, v7, :cond_4

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v5, p4, v5

    if-lez v5, :cond_4

    .line 2571
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v6, p4, v6

    add-int/lit8 v6, v6, -0x1

    aput v8, v5, v6

    :cond_4
    move v3, v4

    .line 2573
    goto :goto_0

    .line 2563
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2575
    :cond_6
    aget-byte v3, p4, p5

    .line 2576
    .local v3, "recNum":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRecNum recNum:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2577
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    if-gt v3, v5, :cond_7

    if-ge v3, v7, :cond_7

    if-gtz v3, :cond_8

    .line 2583
    :cond_7
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    mul-int v2, p2, v5

    .line 2584
    .local v2, "nOffset":I
    move v1, v2

    :goto_2
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v5, v2

    if-ge v1, v5, :cond_8

    .line 2585
    const-string v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateEmailsByAdnIndex: mEmailRecTable["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v5, v5, v1

    if-nez v5, :cond_a

    .line 2588
    add-int/lit8 v5, v1, 0x1

    sub-int v3, v5, v2

    .line 2589
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aput p3, v5, v1

    .line 2594
    .end local v2    # "nOffset":I
    :cond_8
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    if-le v3, v5, :cond_9

    .line 2595
    const/16 v3, 0xff

    .line 2597
    :cond_9
    if-ne v3, v4, :cond_1

    .line 2598
    const/4 v3, -0x2

    goto/16 :goto_0

    .line 2584
    .restart local v2    # "nOffset":I
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private getRecNumForSameEmailEfid([Ljava/lang/String;II[BI)I
    .locals 9
    .param p1, "emails"    # [Ljava/lang/String;
    .param p2, "pbrRecNum"    # I
    .param p3, "nIapRecNum"    # I
    .param p4, "iapRec"    # [B
    .param p5, "tagNum"    # I

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xff

    const/4 v4, -0x1

    .line 2620
    const/4 v0, 0x0

    .line 2621
    .local v0, "hasEmail":Z
    if-nez p1, :cond_2

    .line 2623
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v5, p4, v5

    if-eq v5, v7, :cond_0

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v5, p4, v5

    if-lez v5, :cond_0

    .line 2624
    invoke-direct {p0, p2, p4, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->resetEmailRecTable(I[BI)V

    :cond_0
    move v3, v4

    .line 2679
    :cond_1
    :goto_0
    return v3

    .line 2628
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_3

    .line 2629
    aget-object v5, p1, v1

    if-eqz v5, :cond_5

    aget-object v5, p1, v1

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2630
    const/4 v0, 0x1

    .line 2634
    :cond_3
    if-nez v0, :cond_6

    .line 2635
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v5, p4, v5

    if-eq v5, v7, :cond_4

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v5, p4, v5

    if-lez v5, :cond_4

    .line 2636
    invoke-direct {p0, p2, p4, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->resetEmailRecTable(I[BI)V

    :cond_4
    move v3, v4

    .line 2638
    goto :goto_0

    .line 2628
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2640
    :cond_6
    aget-byte v3, p4, p5

    .line 2641
    .local v3, "recNum":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRecNum recNum:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2642
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    if-gt v3, v5, :cond_7

    if-ge v3, v7, :cond_7

    if-gtz v3, :cond_8

    .line 2648
    :cond_7
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    mul-int v2, p2, v5

    .line 2649
    .local v2, "nOffset":I
    move v1, v2

    :goto_2
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v5, v2

    if-ge v1, v5, :cond_8

    .line 2650
    const-string v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateEmailsByAdnIndex: mEmailRecTable["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    const/4 v5, 0x1

    if-ne p2, v5, :cond_a

    .line 2653
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v5, v5, v1

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    sub-int v6, v1, v6

    aget v5, v5, v6

    if-nez v5, :cond_b

    .line 2654
    add-int/lit8 v5, v1, 0x1

    sub-int v3, v5, v2

    .line 2655
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    add-int/lit16 v6, p3, 0xfa

    aput v6, v5, v1

    .line 2656
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    sub-int v6, v1, v6

    add-int/lit16 v7, p3, 0xfa

    aput v7, v5, v6

    .line 2657
    const-string v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateEmailsByAdnIndex: then mEmailRecTable["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    .end local v2    # "nOffset":I
    :cond_8
    :goto_3
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    if-le v3, v5, :cond_9

    .line 2674
    const/16 v3, 0xff

    .line 2676
    :cond_9
    if-ne v3, v4, :cond_1

    .line 2677
    const/4 v3, -0x2

    goto/16 :goto_0

    .line 2662
    .restart local v2    # "nOffset":I
    :cond_a
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v5, v5, v1

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v6, v1

    aget v5, v5, v6

    if-nez v5, :cond_b

    .line 2663
    add-int/lit8 v5, v1, 0x1

    sub-int v3, v5, v2

    .line 2664
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aput p3, v5, v1

    .line 2665
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v6, v1

    aput p3, v5, v6

    .line 2666
    const-string v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateEmailsByAdnIndex: then mEmailRecTable["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2649
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2
.end method

.method private isSameEfidEmailCapacityFree(II)Z
    .locals 5
    .param p1, "pbrRecNUm"    # I
    .param p2, "emailRecIndex"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2683
    const/4 v0, 0x0

    .line 2684
    .local v0, "free":Z
    if-nez p1, :cond_1

    .line 2685
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v3, v3, p2

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v4, p2

    aget v3, v3, v4

    if-nez v3, :cond_0

    move v0, v1

    .line 2686
    :goto_0
    const-string v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSameEfidEmailCapacityFree: mEmailRecTable["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    const-string v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSameEfidEmailCapacityFree: mEmailRecTable["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v4, p2

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    :goto_1
    return v0

    :cond_0
    move v0, v2

    .line 2685
    goto :goto_0

    .line 2691
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v3, v3, p2

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    sub-int v4, p2, v4

    aget v3, v3, v4

    if-nez v3, :cond_2

    move v0, v1

    .line 2692
    :goto_2
    const-string v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSameEfidEmailCapacityFree: mEmailRecTable["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    const-string v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSameEfidEmailCapacityFree: mEmailRecTable["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    sub-int v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    sub-int v4, p2, v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move v0, v2

    .line 2691
    goto :goto_2
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2454
    const-string v0, "UsimPhoneBookManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    return-void
.end method

.method private queryUpbCapablityAndWait()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1767
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "UsimPhoneBookManager queryUpbCapablityAndWait begin"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1769
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 1770
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v4, 0x0

    aput v4, v2, v1

    .line 1769
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1773
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1774
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1776
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1781
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1782
    const-string v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimPhoneBookManager queryUpbCapablityAndWait done:N_Anr is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", N_Email is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",N_Sne is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",N_Aas is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", L_Aas is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",N_Gas is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",L_Gas is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", N_Grp is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x7

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    return-void

    .line 1777
    :catch_0
    move-exception v0

    .line 1778
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "UsimPhoneBookManager"

    const-string v4, "Interrupted Exception in queryUpbCapablityAndWait"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1781
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private readAASFileAndWait(I)V
    .locals 13
    .param p1, "recNum"    # I

    .prologue
    const/16 v12, 0xc7

    .line 608
    const-string v9, "UsimPhoneBookManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "readAASFileAndWait "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v9, :cond_1

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 613
    .local v3, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v3, :cond_2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 614
    :cond_2
    const-string v9, "UsimPhoneBookManager"

    const-string v10, "readAASFileAndWait-PBR have no AAS EF record"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 617
    :cond_3
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 618
    .local v2, "efid":I
    const-string v9, "UsimPhoneBookManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "readAASFileAndWait-get AAS EFID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-eqz v9, :cond_6

    .line 620
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 621
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AAS has been loaded for Pbr number "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 624
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 625
    .local v8, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 626
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 627
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 628
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 629
    .local v7, "pbr":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 630
    .local v4, "fileid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 631
    .local v1, "ef":I
    if-ne v2, v1, :cond_5

    .line 632
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AAS has been loaded for ef "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 638
    .end local v1    # "ef":I
    .end local v4    # "fileid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v7    # "pbr":I
    .end local v8    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v9, :cond_7

    .line 639
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 640
    .local v6, "msg":Landroid/os/Message;
    iput p1, v6, Landroid/os/Message;->arg1:I

    .line 641
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v9, v2, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 643
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v9, "UsimPhoneBookManager"

    const-string v10, "Interrupted Exception in readAASFileAndWait"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 648
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "msg":Landroid/os/Message;
    :cond_7
    const-string v9, "UsimPhoneBookManager"

    const-string v10, "readAASFileAndWait-IccFileHandler is null"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private readAdnFileAndWait(I)V
    .locals 5
    .param p1, "recNum"    # I

    .prologue
    const/16 v4, 0x6f3a

    .line 980
    const-string v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UsimPhoneBookManager readAdnFileAndWait: recNum is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 997
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    :goto_0
    return-void

    .line 998
    :catch_0
    move-exception v0

    .line 999
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readAdnFileAndWaitForUICC(I)V
    .locals 9
    .param p1, "recNum"    # I

    .prologue
    const/16 v8, 0xc0

    .line 4779
    const-string v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readAdnFileAndWaitForUICC "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4780
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v5, :cond_1

    .line 4808
    :cond_0
    :goto_0
    return-void

    .line 4784
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 4786
    .local v2, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4787
    :cond_2
    const-string v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readAdnFileAndWaitForUICC: No ADN tag in pbr record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4791
    :cond_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4792
    .local v1, "efid":I
    const-string v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readAdnFileAndWaitForUICC: EFADN id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4794
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAdnFileids:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4795
    .local v4, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v5, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    if-ne v5, v1, :cond_4

    iget v5, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-ne v5, p1, :cond_4

    .line 4796
    const-string v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UiccPhoneBookManager readAdnFileAndWaitForUICC: recNum is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4798
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    const/16 v7, 0x6f3a

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v1, v6, v7}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 4802
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4803
    :catch_0
    move-exception v0

    .line 4804
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private readAnrFileAndWait(I)V
    .locals 21
    .param p1, "recNum"    # I

    .prologue
    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileIds:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 685
    .local v7, "fileIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 686
    :cond_2
    const-string v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "UsimPhoneBookManager readAnrFileAndWait: No anr tag in pbr record "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 690
    :cond_3
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasAnrFile:Z

    .line 691
    const-string v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "UsimPhoneBookManager readAnrFileAndWait: recNum is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_0

    .line 694
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasAnrFile:Z

    .line 695
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 696
    .local v6, "efid":I
    const-string v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "UsimPhoneBookManager readAnrFileAndWait: recNum is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " EFANR id is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileids:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 700
    .local v15, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v6, :cond_4

    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_4

    .line 701
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v17, v0

    const/16 v18, 0xa9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 702
    iput v10, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mAnrIndex:I

    .line 703
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readType2Ef(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    goto/16 :goto_0

    .line 709
    .end local v15    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 710
    .local v13, "numAdnRecs":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v17, v0

    mul-int v12, p1, v17

    .line 711
    .local v12, "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v17, v0

    add-int v11, v12, v17

    .line 712
    .local v11, "nMax":I
    if-ge v13, v11, :cond_6

    .line 713
    move v11, v13

    .line 716
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 717
    const/16 v17, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 718
    .local v16, "result":Landroid/os/Message;
    mul-int/lit8 v17, p1, 0x3

    add-int v17, v17, v10

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 725
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 731
    const-string v17, "UsimPhoneBookManager"

    const-string v18, "UsimPhoneBookManager readAnrFileAndWait: AnrRecordSize is 0. "

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 726
    :catch_0
    move-exception v5

    .line 727
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v17, "UsimPhoneBookManager"

    const-string v18, "Interrupted Exception in readAnrFileAndWait"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 734
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :cond_7
    move v8, v12

    .local v8, "i":I
    :goto_3
    if-ge v8, v11, :cond_a

    .line 737
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 743
    .local v14, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-gtz v17, :cond_8

    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_9

    .line 744
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 745
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v4, v0, [I

    .line 746
    .local v4, "data":[I
    const/16 v17, 0x0

    aput p1, v4, v17

    .line 747
    const/16 v17, 0x1

    aput v8, v4, v17

    .line 748
    const/16 v17, 0x2

    aput v10, v4, v17

    .line 749
    const-string v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "UsimPhoneBookManager readAnrFileAndWait: read anr for  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " adn "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "( "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " )  mReadingAnrNum is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    sub-int v18, v18, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    move/from16 v19, v0

    const/16 v20, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    .line 734
    .end local v4    # "data":[I
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 738
    .end local v14    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_1
    move-exception v5

    .line 739
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "UsimPhoneBookManager readAnrFileAndWait: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "index is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v17

    if-nez v17, :cond_b

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 693
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 761
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 763
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "readAnrFileAndWait before mLock.wait "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 765
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 769
    :goto_5
    const-string v17, "readAnrFileAndWait after mLock.wait"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 766
    :catch_2
    move-exception v5

    .line 767
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v17, "UsimPhoneBookManager"

    const-string v18, "Interrupted Exception in readAnrFileAndWait"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private readAnrRecordSize()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3683
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "UsimPhoneBookManager readAnrRecordSize"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3684
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 3710
    :cond_0
    :goto_0
    return-void

    .line 3687
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileIds:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 3688
    .local v2, "fileIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3692
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 3693
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "UsimPhoneBookManager readAnrRecordSize: No anr tag in pbr record "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3697
    :cond_2
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3698
    .local v1, "efid":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v3, :cond_0

    .line 3699
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 3703
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3705
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3709
    :goto_1
    :try_start_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 3706
    :catch_0
    move-exception v0

    .line 3707
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "UsimPhoneBookManager"

    const-string v5, "Interrupted Exception in readAnrRecordSize"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private readEmailFileAndWait(I)V
    .locals 23
    .param p1, "recNum"    # I

    .prologue
    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 366
    .local v8, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v8, :cond_0

    .line 369
    const/16 v20, 0xca

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 370
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasEmailFile:Z

    .line 371
    const/16 v20, 0xca

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 372
    .local v7, "efid":I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "readEmailFileAndWait: efid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 373
    const/16 v17, 0x0

    .line 374
    .local v17, "rec":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileids:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 375
    .local v18, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "readEmailFileAndWait mEmailFile record "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 376
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v7, :cond_2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    .line 377
    move-object/from16 v17, v18

    .line 378
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    const/16 v21, 0xa8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 379
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readType1Ef(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    goto/16 :goto_0

    .line 381
    :cond_3
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    const/16 v21, 0xa9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 382
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "readEmailFileAndWait type2 email "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 393
    .end local v18    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 394
    const/16 v20, 0xc1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 395
    const/16 v20, 0xc1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(IIZ)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p1

    if-le v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-nez v20, :cond_7

    .line 402
    :cond_5
    const-string v20, "UsimPhoneBookManager"

    const-string v21, "Error: IAP file is empty"

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 398
    :cond_6
    const-string v20, "UsimPhoneBookManager"

    const-string v21, "readEmailFileAndWait Error: No IAP file!"

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 406
    :cond_7
    const-string v20, "readEmailFileAndWait after read IAP"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 423
    .local v16, "numAdnRecs":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v20, v0

    mul-int v15, p1, v20

    .line 424
    .local v15, "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v20, v0

    add-int v14, v15, v20

    .line 425
    .local v14, "nMax":I
    move/from16 v0, v16

    if-ge v0, v14, :cond_8

    .line 426
    move/from16 v14, v16

    .line 428
    :cond_8
    move v9, v15

    .local v9, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    move/from16 v20, v0

    add-int v20, v20, v15

    move/from16 v0, v20

    if-ge v9, v0, :cond_9

    .line 430
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v21, v20, v9
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 431
    :catch_0
    move-exception v6

    .line 432
    .local v6, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "init RecTable error "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 436
    .end local v6    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_9
    const/16 v19, 0x0

    .line 437
    .local v19, "size":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "size":[I
    check-cast v19, [I

    .line 442
    .restart local v19    # "size":[I
    :goto_2
    if-eqz v19, :cond_a

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_c

    .line 443
    :cond_a
    const-string v20, "UsimPhoneBookManager"

    const-string v21, "UsimPhoneBookManager readEmailFileAndWait: read record size error."

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 440
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v19

    goto :goto_2

    .line 447
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 449
    .local v11, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-nez v20, :cond_d

    .line 450
    const-string v20, "UsimPhoneBookManager"

    const-string v21, "Warning: IAP size is 0"

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 454
    :cond_d
    move v9, v15

    :goto_3
    if-ge v9, v14, :cond_10

    .line 457
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 464
    .local v4, "arec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-gtz v20, :cond_e

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_f

    .line 465
    :cond_e
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v5, v0, [I

    .line 467
    .local v5, "data":[I
    sub-int v20, v9, v15

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    .line 468
    .local v12, "iapRecord":[B
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    move/from16 v20, v0

    aget-byte v20, v12, v20

    move/from16 v0, v20

    and-int/lit16 v13, v0, 0xff

    .line 469
    .local v13, "index":I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "readEmailFileAndWait iap["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sub-int v21, v9, v15

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 470
    if-lez v13, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-gt v13, v0, :cond_f

    const/16 v20, 0xff

    move/from16 v0, v20

    if-lt v13, v0, :cond_11

    .line 454
    .end local v5    # "data":[I
    .end local v12    # "iapRecord":[B
    .end local v13    # "index":I
    :cond_f
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 458
    .end local v4    # "arec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_1
    move-exception v6

    .line 459
    .local v6, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v20, "UsimPhoneBookManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "UsimPhoneBookManager readEmailFileAndWait: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "index is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    .end local v6    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v20

    if-nez v20, :cond_12

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 473
    .restart local v4    # "arec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v5    # "data":[I
    .restart local v12    # "iapRecord":[B
    .restart local v13    # "index":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 474
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    move/from16 v21, v0

    mul-int v21, v21, v15

    add-int v21, v21, v13

    aput v21, v5, v20

    .line 475
    const/16 v20, 0x1

    aput v9, v5, v20

    .line 476
    const-string v20, "UsimPhoneBookManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "UsimPhoneBookManager readEmailFileAndWait: read email for  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " adn "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "( "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " )  mReadingEmailNum is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v21, v19, v21

    const/16 v22, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v7, v13, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    goto/16 :goto_4

    .line 488
    .end local v4    # "arec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v5    # "data":[I
    .end local v12    # "iapRecord":[B
    .end local v13    # "index":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 490
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "readEmailFileAndWait before mLock.wait "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 492
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 496
    :goto_5
    const-string v20, "readEmailFileAndWait after mLock.wait"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 493
    :catch_2
    move-exception v6

    .line 494
    .local v6, "e":Ljava/lang/InterruptedException;
    const-string v20, "UsimPhoneBookManager"

    const-string v21, "Interrupted Exception in readEmailFileAndWait"

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private readEmailRecord(I)Ljava/lang/String;
    .locals 7
    .param p1, "recNum"    # I

    .prologue
    const/4 v2, 0x0

    .line 941
    const/4 v3, 0x0

    .line 942
    .local v3, "emailRec":[B
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 956
    :goto_0
    return-object v2

    .line 947
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    array-length v4, v3

    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    .line 953
    const-string v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UsimPhoneBookManager readEmailRecord: emailRec.length is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const/4 v4, 0x0

    array-length v5, v3

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 956
    .local v2, "email":Ljava/lang/String;
    goto :goto_0

    .line 948
    .end local v2    # "email":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 949
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UsimPhoneBookManager readEmailRecord: recNum is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readExt1FileAndWait(I)V
    .locals 8
    .param p1, "recNum"    # I

    .prologue
    const/16 v7, 0xc2

    .line 4586
    const-string v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readExt1FileAndWait "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4587
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 4629
    :cond_0
    :goto_0
    return-void

    .line 4590
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 4591
    .local v2, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 4592
    :cond_2
    const-string v4, "UsimPhoneBookManager"

    const-string v5, "readExt1FileAndWait-PBR have no Ext1 record"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4595
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4596
    .local v1, "efid":I
    const-string v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readExt1FileAndWait-get EXT1 EFID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4597
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    if-eqz v4, :cond_4

    .line 4598
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4599
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EXT1 has been loaded for Pbr number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4616
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v4, :cond_5

    .line 4617
    const/16 v4, 0x3e9

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 4618
    .local v3, "msg":Landroid/os/Message;
    iput p1, v3, Landroid/os/Message;->arg1:I

    .line 4619
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v4, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 4621
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4622
    :catch_0
    move-exception v0

    .line 4623
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v4, "UsimPhoneBookManager"

    const-string v5, "Interrupted Exception in readExt1FileAndWait"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4626
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_5
    const-string v4, "UsimPhoneBookManager"

    const-string v5, "readExt1FileAndWait-IccFileHandler is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private readGasListAndWait()V
    .locals 6

    .prologue
    .line 1790
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "UsimPhoneBookManager readGasListAndWait begin"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1792
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v3, 0x5

    aget v1, v1, v3

    if-gtz v1, :cond_0

    .line 1793
    const-string v1, "UsimPhoneBookManager"

    const-string v3, "UsimPhoneBookManager readGasListAndWait no need to read. return"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    monitor-exit v2

    .line 1803
    :goto_0
    return-void

    .line 1796
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->readUPBGasList(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1798
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1802
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1799
    :catch_0
    move-exception v0

    .line 1800
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "UsimPhoneBookManager"

    const-string v3, "Interrupted Exception in readGasListAndWait"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private readGrpIdsAndWait()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 775
    const-string v6, "UsimPhoneBookManager"

    const-string v7, "UsimPhoneBookManager readGrpIdsAndWait begin"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 779
    .local v4, "numAdnRecs":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 782
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    .local v5, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_0

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 789
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 790
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v0

    .line 791
    .local v0, "adnIndex":I
    const/4 v6, 0x2

    new-array v1, v6, [I

    .line 792
    .local v1, "data":[I
    aput v3, v1, v9

    .line 793
    aput v0, v1, v10

    .line 794
    const-string v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UsimPhoneBookManager readGrpIdsAndWait: read grp for  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " adn "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " )  mReadingGrpNum is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0xf

    invoke-virtual {p0, v7, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Lcom/android/internal/telephony/CommandsInterface;->readUPBGrpEntry(ILandroid/os/Message;)V

    .line 779
    .end local v0    # "adnIndex":I
    .end local v1    # "data":[I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 783
    .end local v5    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v2

    .line 784
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UsimPhoneBookManager readGrpIdsAndWait: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "index is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-nez v6, :cond_3

    .line 802
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 814
    :goto_1
    return-void

    .line 805
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 807
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readGrpIdsAndWait before mLock.wait "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 809
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 813
    :goto_2
    const-string v6, "readGrpIdsAndWait after mLock.wait"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 810
    :catch_1
    move-exception v2

    .line 811
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v6, "UsimPhoneBookManager"

    const-string v7, "Interrupted Exception in readAnrFileAndWait"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private readIapFileAndWait(IIZ)V
    .locals 23
    .param p1, "pbrIndex"    # I
    .param p2, "efid"    # I
    .param p3, "forceRefresh"    # Z

    .prologue
    .line 503
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "readIapFileAndWait pbrIndex :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",efid:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",forceRefresh:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 511
    if-gtz p2, :cond_0

    .line 605
    :goto_0
    return-void

    .line 512
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 513
    const-string v19, "readIapFileAndWait IapFileList is null !!!! recreat it !"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 514
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 516
    :cond_1
    const/16 v16, 0x0

    .line 517
    .local v16, "size":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "size":[I
    check-cast v16, [I

    .line 522
    .restart local v16    # "size":[I
    :goto_1
    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 523
    :cond_2
    const-string v19, "UsimPhoneBookManager"

    const-string v20, "UsimPhoneBookManager readIapFileAndWait: read record size error."

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v10, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 520
    .end local v10    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v16

    goto :goto_1

    .line 530
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, p1

    if-gt v0, v1, :cond_b

    .line 531
    const-string v19, "Create IAP first!"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 532
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .restart local v10    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/16 v18, 0x0

    .line 534
    .local v18, "value":[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_6

    .line 535
    const/16 v19, 0x0

    aget v19, v16, v19

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 536
    move-object/from16 v5, v18

    .local v5, "arr$":[B
    array-length v11, v5

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_3
    if-ge v9, v11, :cond_5

    aget-byte v17, v5, v9

    .local v17, "tem":B
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 539
    .end local v17    # "tem":B
    :cond_5
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 541
    .end local v5    # "arr$":[B
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 558
    .end local v8    # "i":I
    .end local v10    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v18    # "value":[B
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 559
    .local v14, "numAdnRecs":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v19, v0

    mul-int v13, p1, v19

    .line 560
    .local v13, "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v19, v0

    add-int v12, v13, v19

    .line 561
    .local v12, "nMax":I
    if-ge v14, v12, :cond_8

    .line 562
    move v12, v14

    .line 565
    :cond_8
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "readIapFileAndWait nOffset "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", nMax "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 566
    move v8, v13

    .restart local v8    # "i":I
    :goto_4
    if-ge v8, v12, :cond_c

    .line 569
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    .local v15, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v15}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-gtz v19, :cond_9

    invoke-virtual {v15}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_a

    .line 577
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 578
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v6, v0, [I

    .line 579
    .local v6, "data":[I
    const/16 v19, 0x0

    aput p1, v6, v19

    .line 580
    const/16 v19, 0x1

    sub-int v20, v8, v13

    aput v20, v6, v19

    .line 581
    const-string v19, "UsimPhoneBookManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "UsimPhoneBookManager readIapFileAndWait: read iap for  "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " adn "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "( "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v15}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v15}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " )  mReadingIapNum is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v19, v0

    add-int/lit8 v20, v8, 0x1

    sub-int v20, v20, v13

    const/16 v21, 0x0

    aget v21, v16, v21

    const/16 v22, 0x1a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    .line 566
    .end local v6    # "data":[I
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 543
    .end local v8    # "i":I
    .end local v12    # "nMax":I
    .end local v13    # "nOffset":I
    .end local v14    # "numAdnRecs":I
    .end local v15    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_b
    const-string v19, "This IAP has been loaded!"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 544
    if-nez p3, :cond_7

    goto/16 :goto_0

    .line 570
    .restart local v8    # "i":I
    .restart local v12    # "nMax":I
    .restart local v13    # "nOffset":I
    .restart local v14    # "numAdnRecs":I
    :catch_0
    move-exception v7

    .line 571
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v19, "UsimPhoneBookManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "UsimPhoneBookManager readIapFileAndWait: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "index is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v19

    if-nez v19, :cond_d

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 593
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 595
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "readIapFileAndWait before mLock.wait "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 597
    :try_start_1
    const-string v19, "readIapFileAndWait excute mLock.wait"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 603
    :goto_5
    :try_start_3
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 604
    const-string v19, "readIapFileAndWait after mLock.wait"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 600
    :catch_1
    move-exception v7

    .line 601
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v19, "UsimPhoneBookManager"

    const-string v21, "Interrupted Exception in readIapFileAndWait"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 603
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v19
.end method

.method private readPbrFileAndWait(Z)V
    .locals 4
    .param p1, "is7FFF"    # Z

    .prologue
    .line 352
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x4f30

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;Z)V

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "Interrupted Exception in readPbrFileAndWait"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readSneFileAndWait(I)V
    .locals 7
    .param p1, "recNum"    # I

    .prologue
    const/16 v6, 0xc3

    .line 654
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readSneFileAndWait "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 655
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 659
    .local v1, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 660
    :cond_2
    const-string v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readSneFileAndWait: No SNE tag in pbr record "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 663
    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 664
    .local v0, "efid":I
    const-string v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readSneFileAndWait: EFSNE id is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSneFileids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 666
    .local v3, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v4, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    if-ne v4, v0, :cond_4

    iget v4, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-ne v4, p1, :cond_4

    .line 667
    iget v4, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    const/16 v5, 0xa9

    if-ne v4, v5, :cond_5

    .line 668
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readType2Ef(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    goto :goto_0

    .line 670
    :cond_5
    iget v4, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_0

    .line 671
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readType1Ef(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    goto/16 :goto_0
.end method

.method private readType1Ef(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V
    .locals 20
    .param p1, "record"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .prologue
    .line 3107
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "readType1Ef:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3108
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v17, v0

    const/16 v18, 0xa8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 3266
    :cond_0
    :goto_0
    return-void

    .line 3111
    :cond_1
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    .line 3112
    .local v12, "pbrIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 3113
    .local v11, "numAdnRecs":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v17, v0

    mul-int v10, v12, v17

    .line 3114
    .local v10, "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v17, v0

    add-int v9, v10, v17

    .line 3115
    .local v9, "nMax":I
    if-ge v11, v9, :cond_2

    .line 3116
    move v9, v11

    .line 3118
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 3119
    .local v6, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const/16 v16, 0x0

    .line 3120
    .local v16, "what":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 3142
    const/16 v16, 0x16

    .line 3143
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    .line 3144
    .local v15, "result":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Landroid/os/Message;->arg1:I

    .line 3145
    if-eqz v6, :cond_0

    .line 3146
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v6, v0, v15}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 3150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 3152
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3156
    :goto_1
    :try_start_1
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3160
    .end local v15    # "result":Landroid/os/Message;
    :goto_2
    const/4 v14, 0x0

    .line 3161
    .local v14, "recordSize":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_1

    .line 3172
    const-string v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "readType1Ef unsupport tag "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    :goto_3
    if-nez v14, :cond_3

    .line 3176
    const-string v17, "UsimPhoneBookManager"

    const-string v18, "UsimPhoneBookManager readType1Ef: recordSize is 0. "

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3122
    .end local v14    # "recordSize":I
    :sswitch_0
    const/16 v16, 0xe

    .line 3123
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 3124
    .local v8, "msg":Landroid/os/Message;
    if-eqz v6, :cond_0

    .line 3125
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v6, v0, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 3129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 3131
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3135
    :goto_4
    :try_start_3
    monitor-exit v18

    goto :goto_2

    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v17

    .line 3132
    :catch_0
    move-exception v4

    .line 3133
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v17, "UsimPhoneBookManager"

    const-string v19, "Interrupted Exception in readType1Ef"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 3138
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v8    # "msg":Landroid/os/Message;
    :sswitch_1
    const/16 v16, 0x12

    .line 3139
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readRecordSize(I)V

    goto :goto_2

    .line 3153
    .restart local v15    # "result":Landroid/os/Message;
    :catch_1
    move-exception v4

    .line 3154
    .restart local v4    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v17, "UsimPhoneBookManager"

    const-string v19, "Interrupted Exception in readType1Ef"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3156
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v17

    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v17

    .line 3163
    .end local v15    # "result":Landroid/os/Message;
    .restart local v14    # "recordSize":I
    :sswitch_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    .line 3164
    goto :goto_3

    .line 3166
    :sswitch_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    .line 3167
    goto :goto_3

    .line 3169
    :sswitch_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    .line 3170
    goto :goto_3

    .line 3180
    :cond_3
    move v5, v10

    .local v5, "i":I
    :goto_5
    if-ge v5, v9, :cond_6

    .line 3183
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_2

    .line 3190
    .local v13, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-gtz v17, :cond_4

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_5

    .line 3191
    :cond_4
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v3, v0, [I

    .line 3192
    .local v3, "data":[I
    const/16 v17, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v18, v0

    aput v18, v3, v17

    .line 3193
    const/16 v17, 0x1

    aput v5, v3, v17

    .line 3194
    const/4 v7, 0x0

    .line 3195
    .local v7, "loadWhat":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_2

    .line 3220
    const-string v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "not support tag "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    :goto_6
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v17, v0

    add-int/lit8 v18, v5, 0x1

    sub-int v18, v18, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v6, v0, v1, v14, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->readEFLinearFixed(IIILandroid/os/Message;)V

    .line 3180
    .end local v3    # "data":[I
    .end local v7    # "loadWhat":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 3184
    .end local v13    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_2
    move-exception v4

    .line 3185
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "UsimPhoneBookManager readType1Ef: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "index is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3229
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_3

    .line 3255
    const-string v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "not support tag "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    :goto_7
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "readType1Ef before mLock.wait "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 3261
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 3265
    :goto_8
    :try_start_8
    monitor-exit v18

    goto/16 :goto_0

    :catchall_2
    move-exception v17

    monitor-exit v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v17

    .line 3197
    .restart local v3    # "data":[I
    .restart local v7    # "loadWhat":I
    .restart local v13    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :sswitch_5
    const/16 v7, 0xd

    .line 3198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 3199
    const-string v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " UsimPhoneBookManager readType1Ef: read for  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " adn "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "( "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " )  mReadingAnrNum is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 3205
    :sswitch_6
    const/16 v17, 0x0

    add-int/lit8 v18, v5, 0x1

    sub-int v18, v18, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    move/from16 v19, v0

    mul-int v19, v19, v10

    add-int v18, v18, v19

    aput v18, v3, v17

    .line 3206
    const/16 v7, 0x13

    .line 3207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3208
    const-string v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " UsimPhoneBookManager readType1Ef: read for  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " adn "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "( "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " )  mReadingEmailNum is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 3213
    :sswitch_7
    const/16 v7, 0x17

    .line 3214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3215
    const-string v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " UsimPhoneBookManager readType1Ef: read for  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " adn "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "( "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " )  mReadingSneNum is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 3231
    .end local v3    # "data":[I
    .end local v7    # "loadWhat":I
    .end local v13    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v17

    if-nez v17, :cond_7

    .line 3232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 3235
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_7

    .line 3239
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v17

    if-nez v17, :cond_8

    .line 3240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 3243
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_7

    .line 3247
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v17

    if-nez v17, :cond_9

    .line 3248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 3251
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_7

    .line 3262
    :catch_3
    move-exception v4

    .line 3263
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_9
    const-string v17, "UsimPhoneBookManager"

    const-string v19, "Interrupted Exception in readType1Ef"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_8

    .line 3120
    nop

    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch

    .line 3161
    :sswitch_data_1
    .sparse-switch
        0xc3 -> :sswitch_4
        0xc4 -> :sswitch_2
        0xca -> :sswitch_3
    .end sparse-switch

    .line 3195
    :sswitch_data_2
    .sparse-switch
        0xc3 -> :sswitch_7
        0xc4 -> :sswitch_5
        0xca -> :sswitch_6
    .end sparse-switch

    .line 3229
    :sswitch_data_3
    .sparse-switch
        0xc3 -> :sswitch_a
        0xc4 -> :sswitch_8
        0xca -> :sswitch_9
    .end sparse-switch
.end method

.method private readType2Ef(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V
    .locals 7
    .param p1, "record"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .prologue
    const/16 v6, 0xc1

    .line 3269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readType2Ef:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3270
    iget v4, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    const/16 v5, 0xa9

    if-eq v4, v5, :cond_0

    .line 3318
    :goto_0
    return-void

    .line 3274
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    iget v5, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 3275
    .local v1, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v1, :cond_1

    .line 3276
    const-string v4, "UsimPhoneBookManager"

    const-string v5, "Error: no fileIds"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3280
    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3281
    iget v5, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x0

    invoke-direct {p0, v5, v4, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(IIZ)V

    .line 3288
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-le v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    iget v5, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 3289
    :cond_2
    const-string v4, "UsimPhoneBookManager"

    const-string v5, "Error: IAP file is empty"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3284
    :cond_3
    const-string v4, "UsimPhoneBookManager"

    const-string v5, "readType2Ef Error: No IAP file!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3292
    :cond_4
    const/4 v3, 0x0

    .line 3293
    .local v3, "what":I
    iget v4, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v4, :sswitch_data_0

    .line 3305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no implement type2 EF "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3295
    :sswitch_0
    const/4 v3, 0x5

    .line 3308
    :goto_1
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3309
    .local v2, "msg":Landroid/os/Message;
    iget v4, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 3310
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v5, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 3311
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3313
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3317
    :goto_2
    :try_start_1
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 3298
    .end local v2    # "msg":Landroid/os/Message;
    :sswitch_1
    const/4 v3, 0x4

    .line 3299
    goto :goto_1

    .line 3301
    :sswitch_2
    const/16 v3, 0x18

    .line 3302
    goto :goto_1

    .line 3314
    .restart local v2    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 3315
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "UsimPhoneBookManager"

    const-string v6, "Interrupted Exception in readType2Ef"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 3293
    nop

    :sswitch_data_0
    .sparse-switch
        0xc3 -> :sswitch_2
        0xc4 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch
.end method

.method private refreshCache()V
    .locals 3

    .prologue
    .line 336
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 345
    :cond_0
    return-void

    .line 339
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 341
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 342
    .local v1, "numRecs":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 343
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private resetEmailRecTable(I[BI)V
    .locals 5
    .param p1, "pbrRecNum"    # I
    .param p2, "iapRec"    # [B
    .param p3, "value"    # I

    .prologue
    .line 2604
    if-nez p1, :cond_0

    .line 2605
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v2, p2, v2

    add-int/lit8 v2, v2, -0x1

    aput p3, v1, v2

    .line 2606
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v2, p2, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v2, v3

    aput p3, v1, v2

    .line 2607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetEmailRecTable  mEmailRecTable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v2, p2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v3, p2, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetEmailRecTable  mEmailRecTable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v2, p2, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v3, p2, v3

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v3, v4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2617
    :goto_0
    return-void

    .line 2610
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v1, p2, v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    rem-int v0, v1, v2

    .line 2611
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aput p3, v1, v0

    .line 2612
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v2, v0

    aput p3, v1, v2

    .line 2613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetEmailRecTable  mEmailRecTable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetEmailRecTable  mEmailRecTable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v3, v0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePhoneAdnRecord()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 817
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v9, :cond_1

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 820
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 821
    .local v5, "numAdnRecs":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    if-eqz v9, :cond_3

    .line 830
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_3

    .line 831
    const/4 v8, 0x0

    .line 833
    .local v8, "record":[B
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "record":[B
    check-cast v8, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    .restart local v8    # "record":[B
    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v7, v8, v9

    .line 840
    .local v7, "recNum":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_2

    .line 841
    const/4 v9, 0x1

    new-array v2, v9, [Ljava/lang/String;

    .line 843
    .local v2, "emails":[Ljava/lang/String;
    add-int/lit8 v9, v7, -0x1

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v12

    .line 847
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 854
    .local v6, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v6, :cond_5

    .line 855
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 860
    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 830
    .end local v2    # "emails":[Ljava/lang/String;
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 834
    .end local v7    # "recNum":I
    .end local v8    # "record":[B
    :catch_0
    move-exception v0

    .line 835
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "UsimPhoneBookManager"

    const-string v10, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "i":I
    :cond_3
    :goto_3
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 872
    .local v4, "len":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    if-nez v9, :cond_4

    .line 873
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1EmailFile(I)V

    .line 875
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v5, :cond_0

    .line 876
    const/4 v1, 0x0

    .line 878
    .local v1, "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 882
    .restart local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_6

    .line 875
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 848
    .end local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "len":I
    .restart local v2    # "emails":[Ljava/lang/String;
    .restart local v7    # "recNum":I
    .restart local v8    # "record":[B
    :catch_1
    move-exception v0

    .line 849
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "UsimPhoneBookManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UsimPhoneBookManager updatePhoneAdnRecord: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "index is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 858
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_5
    new-instance v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string v9, ""

    const-string v10, ""

    invoke-direct {v6, v9, v10, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .restart local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    goto :goto_2

    .line 879
    .end local v2    # "emails":[Ljava/lang/String;
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v7    # "recNum":I
    .end local v8    # "record":[B
    .restart local v4    # "len":I
    :catch_2
    move-exception v0

    .line 880
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_0

    .line 888
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    :try_start_3
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    .line 895
    .restart local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v2, v9, [Ljava/lang/String;

    .line 896
    .restart local v2    # "emails":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v9, v12, v2, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 897
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 898
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 889
    .end local v2    # "emails":[Ljava/lang/String;
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_3
    move-exception v0

    .line 890
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "UsimPhoneBookManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UsimPhoneBookManager updatePhoneAdnRecord: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "index is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updatePhoneAdnRecord(Ljava/util/ArrayList;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V
    .locals 20
    .param p2, "efrecord"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3321
    .local p1, "fileRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updatePhoneAdnRecord "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3322
    if-nez p2, :cond_1

    .line 3434
    :cond_0
    :goto_0
    return-void

    .line 3325
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3326
    .local v10, "numAdnRecs":I
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    .line 3327
    .local v11, "pbrIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v17, v0

    mul-int v9, v11, v17

    .line 3328
    .local v9, "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v17, v0

    add-int v8, v9, v17

    .line 3329
    .local v8, "nMax":I
    if-ge v10, v8, :cond_2

    .line 3330
    move v8, v10

    .line 3333
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updatePhoneAdnRecord offset:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",nMax:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", mAdnFileSize:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3336
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v17, v0

    const/16 v18, 0xa9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 3337
    move v6, v9

    .local v6, "i":I
    :goto_1
    if-ge v6, v8, :cond_0

    .line 3340
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3347
    .local v12, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_3

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_5

    :cond_3
    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_4

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_5

    .line 3337
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3341
    .end local v12    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v5

    .line 3342
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "UsimPhoneBookManager updatePhoneAdnRecord: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "index is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3351
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v12    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_5
    const-string v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " updatePhoneAdnRecord "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "th "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3353
    const/4 v14, 0x0

    .line 3355
    .local v14, "record":[B
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    .line 3356
    const-string v17, "UsimPhoneBookManager"

    const-string v18, "updatePhoneAdnRecord mIapFileList = null"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 3369
    .end local v14    # "record":[B
    :catch_1
    move-exception v5

    .line 3370
    .restart local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v17, "UsimPhoneBookManager"

    const-string v18, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3359
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v14    # "record":[B
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 3360
    .local v7, "iaplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-nez v7, :cond_7

    .line 3361
    const-string v17, "UsimPhoneBookManager"

    const-string v18, "updatePhoneAdnRecord iaplist = null"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3364
    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_8

    .line 3365
    const-string v17, "UsimPhoneBookManager"

    const-string v18, "Warning: IAP size is 0"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3368
    :cond_8
    sub-int v17, v6, v9

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "record":[B
    check-cast v14, [B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3373
    .restart local v14    # "record":[B
    if-nez v14, :cond_9

    .line 3374
    const-string v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error, No Iap for ADN "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3377
    :cond_9
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    move/from16 v17, v0

    aget-byte v17, v14, v17

    move/from16 v0, v17

    and-int/lit16 v13, v0, 0xff

    .line 3379
    .local v13, "recNum":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updatePhoneAdnRecord recNum["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3380
    if-lez v13, :cond_4

    const/16 v17, 0xff

    move/from16 v0, v17

    if-ge v13, v0, :cond_4

    .line 3382
    const/4 v4, 0x0

    .line 3384
    .local v4, "data":[B
    add-int/lit8 v17, v13, -0x1

    :try_start_3
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "data":[B
    check-cast v4, [B
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3389
    .restart local v4    # "data":[B
    if-nez v4, :cond_a

    .line 3390
    const-string v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error record,data is null;"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3385
    .end local v4    # "data":[B
    :catch_2
    move-exception v5

    .line 3386
    .restart local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v17, "UsimPhoneBookManager"

    const-string v18, "updatePhoneAdnRecord mIapFileList = null"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 3393
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v4    # "data":[B
    :cond_a
    if-eqz v12, :cond_4

    .line 3394
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 3423
    const-string v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "not supported tag "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3396
    :sswitch_0
    const/16 v17, 0x1

    aget-byte v3, v4, v17

    .line 3397
    .local v3, "anrRecLength":I
    if-lez v3, :cond_4

    const/16 v17, 0xb

    move/from16 v0, v17

    if-gt v3, v0, :cond_4

    .line 3398
    const/16 v17, 0x2

    const/16 v18, 0x1

    aget-byte v18, v4, v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v0, v1}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 3400
    .local v2, "anr":Ljava/lang/String;
    const-string v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " updatePhoneAdnRecord "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " th anr is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    if-eqz v2, :cond_4

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 3403
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mAnrIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v2, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 3409
    .end local v2    # "anr":Ljava/lang/String;
    .end local v3    # "anrRecLength":I
    :sswitch_1
    const/16 v17, 0x0

    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v16

    .line 3410
    .local v16, "val":Ljava/lang/String;
    const-string v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " updatePhoneAdnRecord "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " th email is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v16, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3417
    .end local v16    # "val":Ljava/lang/String;
    :sswitch_2
    const/16 v17, 0x0

    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v15

    .line 3418
    .local v15, "sne":Ljava/lang/String;
    const-string v17, "UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " updatePhoneAdnRecord "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " th sne is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3420
    invoke-virtual {v12, v15}, Lcom/android/internal/telephony/uicc/AdnRecord;->setSne(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3394
    nop

    :sswitch_data_0
    .sparse-switch
        0xc3 -> :sswitch_2
        0xc4 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch
.end method

.method private updatePhoneAdnRecordByEmailFile(I)V
    .locals 14
    .param p1, "nPbrRecNum"    # I

    .prologue
    .line 2999
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v11, :cond_1

    .line 3104
    :cond_0
    :goto_0
    return-void

    .line 3002
    :cond_1
    iget v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    mul-int v6, p1, v11

    .line 3004
    .local v6, "nOffset":I
    move v2, v6

    .local v2, "i":I
    :goto_1
    iget v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v11, v6

    if-ge v2, v11, :cond_2

    .line 3006
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    const/4 v12, 0x0

    aput v12, v11, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3004
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3007
    :catch_0
    move-exception v0

    .line 3008
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v11, "UsimPhoneBookManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UsimPhoneBookManager updatePhoneAdnRecordByEmailFile: mEmailRecTable ArrayIndexOutOfBoundsException, nPbrRecNum is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-eqz v11, :cond_0

    .line 3020
    :try_start_1
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3026
    .local v3, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v3, :cond_0

    .line 3027
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_3

    .line 3028
    const-string v11, "UsimPhoneBookManager"

    const-string v12, "Warning: IAP size is 0"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3021
    .end local v3    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catch_1
    move-exception v0

    .line 3022
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v11, "Index out of bounds."

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3039
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v3    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_3
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3040
    .local v7, "numAdnRecs":I
    iget v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    mul-int v4, p1, v11

    .line 3041
    .local v4, "nAdnOffset":I
    iget v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    add-int v5, v6, v11

    .line 3042
    .local v5, "nMax":I
    if-ge v7, v5, :cond_4

    .line 3043
    move v5, v7

    .line 3045
    :cond_4
    const-string v11, "UsimPhoneBookManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UsimPhoneBookManager updatePhoneAdnRecordByEmailFile:  nAdnOffset is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "nMax is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    move v2, v4

    :goto_2
    if-ge v2, v5, :cond_0

    .line 3050
    :try_start_2
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3056
    .local v8, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_5

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_6

    .line 3058
    :cond_5
    const/4 v10, 0x0

    .line 3060
    .local v10, "record":[B
    sub-int v11, v2, v4

    :try_start_3
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "record":[B
    check-cast v10, [B
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3066
    .restart local v10    # "record":[B
    iget v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v11, v10, v11

    and-int/lit16 v9, v11, 0xff

    .line 3067
    .local v9, "recNum":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updatePhoneAdnRecordByEmailFile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",recNum["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3069
    const/4 v11, -0x1

    if-eq v9, v11, :cond_6

    iget v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    if-gt v9, v11, :cond_6

    .line 3070
    const/4 v11, 0x1

    new-array v1, v11, [Ljava/lang/String;

    .line 3072
    .local v1, "emails":[Ljava/lang/String;
    const/4 v11, 0x0

    add-int/lit8 v12, v9, -0x1

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v1, v11

    .line 3074
    :try_start_4
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    iget v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    mul-int/2addr v12, p1

    add-int/2addr v12, v9

    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v13, v2, 0x1

    aput v13, v11, v12
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_4

    .line 3082
    invoke-virtual {v8, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 3083
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v2, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3047
    .end local v1    # "emails":[Ljava/lang/String;
    .end local v9    # "recNum":I
    .end local v10    # "record":[B
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 3051
    .end local v8    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_2
    move-exception v0

    .line 3052
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v11, "UsimPhoneBookManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UsimPhoneBookManager updatePhoneAdnRecordByEmailFile: mPhoneBookRecords IndexOutOfBoundsException numAdnRecs is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "index is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3061
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v8    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_3
    move-exception v0

    .line 3062
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v11, "UsimPhoneBookManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error: updatePhoneAdnRecord : No IAP record for ADN "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , continuing"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3075
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "emails":[Ljava/lang/String;
    .restart local v9    # "recNum":I
    .restart local v10    # "record":[B
    :catch_4
    move-exception v0

    .line 3076
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v11, "UsimPhoneBookManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error: updatePhoneAdnRecord : Email record index out of table storage "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , continuing"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private updatePhoneAdnRecordWithAnrByIndex(III[B)V
    .locals 11
    .param p1, "recNum"    # I
    .param p2, "adnIndex"    # I
    .param p3, "anrIndex"    # I
    .param p4, "anrRecData"    # [B

    .prologue
    const/4 v10, 0x1

    .line 1806
    const-string v7, "UsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updatePhoneAdnRecordWithAnrByIndex the "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "th anr record is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    aget-byte v4, p4, v10

    .line 1812
    .local v4, "anrRecLength":I
    const/4 v7, 0x0

    aget-byte v3, p4, v7

    .line 1813
    .local v3, "anrAas":I
    if-lez v4, :cond_2

    const/16 v7, 0xb

    if-gt v4, v7, :cond_2

    .line 1814
    const/4 v7, 0x2

    aget-byte v8, p4, v10

    invoke-static {p4, v7, v8}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 1819
    .local v2, "anr":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1820
    const/4 v0, 0x0

    .line 1821
    .local v0, "aas":Ljava/lang/String;
    if-lez v3, :cond_0

    const/16 v7, 0xff

    if-eq v3, v7, :cond_0

    .line 1822
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-eqz v7, :cond_0

    .line 1823
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1824
    .local v1, "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v3, v7, :cond_0

    .line 1825
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "aas":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1829
    .end local v1    # "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0    # "aas":Ljava/lang/String;
    :cond_0
    const-string v7, "UsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " updatePhoneAdnRecordWithAnrByIndex "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " th anr is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " the anrIndex is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1841
    .local v6, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v6, v2, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;I)V

    .line 1842
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 1843
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAasIndex(I)V

    .line 1845
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, p2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1848
    .end local v0    # "aas":Ljava/lang/String;
    .end local v2    # "anr":Ljava/lang/String;
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    :goto_0
    return-void

    .line 1835
    .restart local v0    # "aas":Ljava/lang/String;
    .restart local v2    # "anr":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1836
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "UsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UsimPhoneBookManager updatePhoneAdnRecordWithAnrByIndex: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "index is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updatePhoneAdnRecordWithEmailByIndex(II[B)V
    .locals 10
    .param p1, "emailIndex"    # I
    .param p2, "index"    # I
    .param p3, "emailRecData"    # [B

    .prologue
    const/4 v9, 0x0

    .line 3455
    if-nez p3, :cond_0

    .line 3488
    :goto_0
    return-void

    .line 3459
    :cond_0
    array-length v3, p3

    .line 3460
    .local v3, "length":I
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v6, :cond_1

    array-length v6, p3

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    .line 3461
    array-length v6, p3

    add-int/lit8 v3, v6, -0x2

    .line 3464
    :cond_1
    const-string v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updatePhoneAdnRecordWithEmailByIndex length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3466
    new-array v5, v3, [B

    .line 3467
    .local v5, "validEMailData":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 3468
    const/4 v6, -0x1

    aput-byte v6, v5, v2

    .line 3467
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3470
    :cond_2
    invoke-static {p3, v9, v5, v9, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3472
    const-string v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "validEMailData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", validEmailLen="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3475
    const/4 v6, 0x0

    :try_start_0
    invoke-static {v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 3476
    .local v1, "email":Ljava/lang/String;
    const-string v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updatePhoneAdnRecordWithEmailByIndex index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " emailRecData record is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    if-eqz v1, :cond_3

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3479
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 3480
    .local v4, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 3484
    .end local v4    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    add-int/lit8 v7, p1, -0x1

    add-int/lit8 v8, p2, 0x1

    aput v8, v6, v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3485
    .end local v1    # "email":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3486
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[JE]updatePhoneAdnRecordWithEmailByIndex "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updatePhoneAdnRecordWithGrpByIndex(II[I)V
    .locals 8
    .param p1, "recIndex"    # I
    .param p2, "adnIndex"    # I
    .param p3, "grpIds"    # [I

    .prologue
    .line 2963
    const-string v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePhoneAdnRecordWithGrpByIndex the "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "th grp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le p1, v5, :cond_1

    .line 2996
    :cond_0
    :goto_0
    return-void

    .line 2967
    :cond_1
    array-length v2, p3

    .line 2969
    .local v2, "grpSize":I
    if-lez v2, :cond_0

    .line 2972
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2979
    .local v4, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePhoneAdnRecordWithGrpByIndex the adnIndex is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; the original index is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2983
    .local v1, "grpIdsSb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    add-int/lit8 v5, v2, -0x1

    if-ge v3, v5, :cond_2

    .line 2984
    aget v5, p3, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2985
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2983
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2973
    .end local v1    # "grpIdsSb":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    .end local v4    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v0

    .line 2974
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UsimPhoneBookManager updatePhoneAdnRecordWithGrpByIndex: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "index is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2987
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "grpIdsSb":Ljava/lang/StringBuilder;
    .restart local v3    # "i":I
    .restart local v4    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    add-int/lit8 v5, v2, -0x1

    aget v5, p3, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2989
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->setGrpIds(Ljava/lang/String;)V

    .line 2991
    const-string v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePhoneAdnRecordWithGrpByIndex grpIds is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2993
    const-string v5, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePhoneAdnRecordWithGrpByIndex the rec:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updatePhoneAdnRecordWithSneByIndex(II[B)V
    .locals 6
    .param p1, "recNum"    # I
    .param p2, "index"    # I
    .param p3, "recData"    # [B

    .prologue
    .line 4199
    if-nez p3, :cond_1

    .line 4218
    :cond_0
    :goto_0
    return-void

    .line 4202
    :cond_1
    const/4 v3, 0x0

    array-length v4, p3

    invoke-static {p3, v3, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 4203
    .local v2, "sne":Ljava/lang/String;
    const-string v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePhoneAdnRecordWithSneByIndex index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " recData record is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4205
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4208
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4215
    .local v1, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setSne(Ljava/lang/String;)V

    goto :goto_0

    .line 4209
    .end local v1    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v0

    .line 4210
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UsimPhoneBookManager updatePhoneAdnRecordWithSneByIndex: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "index is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateType2Anr(Ljava/lang/String;ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V
    .locals 37
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "record"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .prologue
    .line 3491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateType2Anr anr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",adnIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",record:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3492
    add-int/lit8 v3, p2, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v27, v3, v4

    .line 3493
    .local v27, "pbrRecNum":I
    add-int/lit8 v3, p2, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v23, v3, v4

    .line 3494
    .local v23, "iapRecNum":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateType2Anr pbrRecNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",iapRecNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 3680
    :cond_0
    :goto_0
    return-void

    .line 3499
    :cond_1
    if-eqz p3, :cond_0

    .line 3503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v3, :cond_0

    .line 3506
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map;

    .line 3507
    .local v20, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v20, :cond_0

    .line 3514
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3520
    .local v26, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v26, :cond_0

    .line 3523
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 3524
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "Warning: IAP size is 0"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3515
    .end local v26    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catch_0
    move-exception v19

    .line 3516
    .local v19, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "Index out of bounds."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3527
    .end local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v26    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_2
    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 3528
    .local v6, "iap":[B
    if-eqz v6, :cond_0

    .line 3531
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    aget-byte v3, v6, v3

    and-int/lit16 v0, v3, 0xff

    move/from16 v24, v0

    .line 3532
    .local v24, "index":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateType2Anr orignal index :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3533
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 3534
    :cond_3
    if-lez v24, :cond_0

    .line 3535
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    const/4 v4, -0x1

    aput-byte v4, v6, v3

    .line 3536
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3537
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v4, 0xc1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v5, v23, 0x1

    const/4 v7, 0x0

    const/16 v11, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3541
    :cond_4
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "updateType2Anr Error: No IAP file!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3549
    :cond_5
    const/16 v18, 0x0

    .line 3550
    .local v18, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v3, :sswitch_data_0

    .line 3569
    :goto_1
    const/4 v9, 0x0

    .line 3570
    .local v9, "recNum":I
    if-eqz v18, :cond_0

    .line 3573
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v33

    .line 3574
    .local v33, "size":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateType2Anr size :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3575
    if-lez v24, :cond_9

    move/from16 v0, v24

    move/from16 v1, v33

    if-gt v0, v1, :cond_9

    .line 3576
    move/from16 v9, v24

    .line 3634
    :cond_6
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateType2Anr final index :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3635
    if-eqz v9, :cond_0

    .line 3638
    const/4 v10, 0x0

    .line 3639
    .local v10, "data":[B
    const/16 v36, 0x0

    .line 3640
    .local v36, "what":I
    const/4 v8, 0x0

    .line 3641
    .local v8, "fileId":I
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    sparse-switch v3, :sswitch_data_1

    .line 3663
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 3666
    :goto_3
    if-eqz v10, :cond_0

    .line 3667
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 3668
    move/from16 v0, v24

    if-eq v9, v0, :cond_0

    .line 3669
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    int-to-byte v4, v9

    aput-byte v4, v6, v3

    .line 3670
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 3671
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/lit8 v13, v23, 0x1

    const/4 v15, 0x0

    const/16 v3, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    move-object v14, v6

    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3552
    .end local v8    # "fileId":I
    .end local v9    # "recNum":I
    .end local v10    # "data":[B
    .end local v33    # "size":I
    .end local v36    # "what":I
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    if-nez v3, :cond_7

    .line 3553
    const-string v3, "updateType2Anr mAnrFileList null"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3556
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    check-cast v18, Ljava/util/ArrayList;

    .line 3557
    .restart local v18    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    goto/16 :goto_1

    .line 3559
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    if-nez v3, :cond_8

    .line 3560
    const-string v3, "updateType2Anr mEmailFileList null"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3563
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    check-cast v18, Ljava/util/ArrayList;

    .line 3564
    .restart local v18    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    goto/16 :goto_1

    .line 3579
    .restart local v9    # "recNum":I
    .restart local v33    # "size":I
    :cond_9
    add-int/lit8 v3, v33, 0x1

    new-array v0, v3, [I

    move-object/from16 v25, v0

    .line 3580
    .local v25, "indexArray":[I
    const/16 v21, 0x1

    .local v21, "i":I
    :goto_4
    move/from16 v0, v21

    move/from16 v1, v33

    if-gt v0, v1, :cond_a

    .line 3581
    const/4 v3, 0x0

    aput v3, v25, v21

    .line 3580
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 3583
    :cond_a
    const/16 v21, 0x0

    :goto_5
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_c

    .line 3584
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [B

    .line 3585
    .local v35, "value":[B
    if-eqz v35, :cond_b

    .line 3586
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    aget-byte v3, v35, v3

    and-int/lit16 v0, v3, 0xff

    move/from16 v34, v0

    .line 3587
    .local v34, "tem":I
    if-lez v34, :cond_b

    const/16 v3, 0xff

    move/from16 v0, v34

    if-ge v0, v3, :cond_b

    move/from16 v0, v34

    move/from16 v1, v33

    if-gt v0, v1, :cond_b

    .line 3588
    const/4 v3, 0x1

    aput v3, v25, v34

    .line 3583
    .end local v34    # "tem":I
    :cond_b
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 3593
    .end local v35    # "value":[B
    :cond_c
    const/16 v32, 0x0

    .line 3594
    .local v32, "sharedAnr":Z
    const/16 v29, 0x0

    .line 3595
    .local v29, "re":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 3596
    .local v28, "r":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-eq v3, v4, :cond_d

    .line 3597
    move-object/from16 v29, v28

    .line 3601
    .end local v28    # "r":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_e
    if-eqz v29, :cond_f

    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    if-ne v3, v4, :cond_f

    .line 3602
    const/16 v32, 0x1

    .line 3604
    :cond_f
    if-eqz v32, :cond_11

    .line 3608
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/ArrayList;

    .line 3610
    .local v31, "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v31, :cond_11

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_11

    .line 3611
    const/16 v21, 0x0

    :goto_6
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_11

    .line 3612
    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [B

    .line 3613
    .restart local v35    # "value":[B
    if-eqz v35, :cond_10

    .line 3614
    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType2Record:I

    aget-byte v3, v35, v3

    and-int/lit16 v0, v3, 0xff

    move/from16 v34, v0

    .line 3615
    .restart local v34    # "tem":I
    if-lez v34, :cond_10

    const/16 v3, 0xff

    move/from16 v0, v34

    if-ge v0, v3, :cond_10

    move/from16 v0, v34

    move/from16 v1, v33

    if-gt v0, v1, :cond_10

    .line 3616
    const/4 v3, 0x1

    aput v3, v25, v34
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3611
    .end local v34    # "tem":I
    :cond_10
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 3621
    .end local v31    # "relatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v35    # "value":[B
    :catch_1
    move-exception v19

    .line 3622
    .restart local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "Index out of bounds."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3627
    .end local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_11
    const/16 v21, 0x1

    :goto_7
    move/from16 v0, v21

    move/from16 v1, v33

    if-gt v0, v1, :cond_6

    .line 3628
    aget v3, v25, v21

    if-nez v3, :cond_12

    .line 3629
    move/from16 v9, v21

    .line 3630
    goto/16 :goto_2

    .line 3627
    :cond_12
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 3645
    .end local v21    # "i":I
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v25    # "indexArray":[I
    .end local v29    # "re":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    .end local v32    # "sharedAnr":Z
    .restart local v8    # "fileId":I
    .restart local v10    # "data":[B
    .restart local v36    # "what":I
    :sswitch_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3652
    .local v30, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAasIndex()I

    move-result v17

    .line 3653
    .local v17, "aas":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildAnrRecord(Ljava/lang/String;II)[B

    move-result-object v10

    .line 3654
    const/16 v36, 0x9

    .line 3655
    move-object/from16 v0, p3

    iget v8, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    .line 3656
    goto/16 :goto_3

    .line 3646
    .end local v17    # "aas":I
    .end local v30    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_2
    move-exception v19

    .line 3647
    .restart local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UsimPhoneBookManager updateType2Anr: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "index is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3658
    .end local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    :sswitch_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildEmailRecord(Ljava/lang/String;II)[B

    move-result-object v10

    .line 3659
    const/16 v36, 0xb

    .line 3660
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mTag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 3661
    goto/16 :goto_3

    .line 3675
    :cond_13
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "updateType2Anr Error: No IAP file!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3550
    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch

    .line 3641
    :sswitch_data_1
    .sparse-switch
        0xc4 -> :sswitch_2
        0xca -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public addContactToGroup(II)Z
    .locals 17
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    .prologue
    .line 2032
    const/4 v12, 0x0

    .line 2033
    .local v12, "ret":Z
    const-string v13, "UsimPhoneBookManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "UsimPhoneBookManager addContactToGroup adnIndex is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " to grp "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v13, :cond_0

    if-lez p1, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move/from16 v0, p1

    if-le v0, v13, :cond_1

    .line 2036
    :cond_0
    const-string v13, "UsimPhoneBookManager"

    const-string v14, "UsimPhoneBookManager addContactToGroup no records or invalid index."

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    const/4 v13, 0x0

    .line 2103
    :goto_0
    return v13

    .line 2039
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 2042
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v15, p1, -0x1

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2049
    .local v11, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v11, :cond_5

    .line 2050
    :try_start_1
    const-string v13, "UsimPhoneBookManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " addContactToGroup the adn index is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " old grpList is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v7

    .line 2053
    .local v7, "grpList":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2054
    .local v2, "bExist":Z
    const/4 v10, -0x1

    .line 2057
    .local v10, "nOrder":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v15, 0x7

    aget v4, v13, v15

    .line 2058
    .local v4, "grpCount":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v15, 0x7

    aget v13, v13, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v16, 0x5

    aget v15, v15, v16

    if-le v13, v15, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v15, 0x5

    aget v8, v13, v15

    .line 2059
    .local v8, "grpMaxCount":I
    :goto_1
    new-array v5, v4, [I

    .line 2060
    .local v5, "grpIdArray":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v4, :cond_3

    .line 2061
    const/4 v13, 0x0

    aput v13, v5, v9

    .line 2060
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2043
    .end local v2    # "bExist":Z
    .end local v4    # "grpCount":I
    .end local v5    # "grpIdArray":[I
    .end local v7    # "grpList":Ljava/lang/String;
    .end local v8    # "grpMaxCount":I
    .end local v9    # "i":I
    .end local v10    # "nOrder":I
    .end local v11    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v3

    .line 2044
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v13, "UsimPhoneBookManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "UsimPhoneBookManager addContactToGroup: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "index is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v16, p1, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    const/4 v13, 0x0

    monitor-exit v14

    goto/16 :goto_0

    .line 2102
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 2058
    .restart local v2    # "bExist":Z
    .restart local v4    # "grpCount":I
    .restart local v7    # "grpList":Ljava/lang/String;
    .restart local v10    # "nOrder":I
    .restart local v11    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v15, 0x7

    aget v8, v13, v15

    goto :goto_1

    .line 2063
    .restart local v5    # "grpIdArray":[I
    .restart local v8    # "grpMaxCount":I
    .restart local v9    # "i":I
    :cond_3
    if-eqz v7, :cond_9

    .line 2064
    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v13

    const-string v15, ","

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2065
    .local v6, "grpIds":[Ljava/lang/String;
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_4

    .line 2066
    aget-object v13, v6, v9

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    aput v13, v5, v9

    .line 2067
    aget v13, v5, v9

    move/from16 v0, p2

    if-ne v0, v13, :cond_6

    .line 2068
    const/4 v2, 0x1

    .line 2069
    const-string v13, "UsimPhoneBookManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " addContactToGroup the adn is already in the group. i is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    .end local v6    # "grpIds":[Ljava/lang/String;
    :cond_4
    :goto_4
    if-nez v2, :cond_5

    if-ltz v10, :cond_5

    .line 2085
    aput p2, v5, v10

    .line 2086
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v15, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    move/from16 v0, p1

    invoke-interface {v13, v0, v5, v15}, Lcom/android/internal/telephony/CommandsInterface;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2089
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2093
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v13, :cond_5

    .line 2094
    const/4 v12, 0x1

    .line 2095
    add-int/lit8 v13, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v1, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2096
    const-string v13, "UsimPhoneBookManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " addContactToGroup the adn index is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 2102
    .end local v2    # "bExist":Z
    .end local v4    # "grpCount":I
    .end local v5    # "grpIdArray":[I
    .end local v7    # "grpList":Ljava/lang/String;
    .end local v8    # "grpMaxCount":I
    .end local v9    # "i":I
    .end local v10    # "nOrder":I
    :cond_5
    monitor-exit v14

    move v13, v12

    .line 2103
    goto/16 :goto_0

    .line 2073
    .restart local v2    # "bExist":Z
    .restart local v4    # "grpCount":I
    .restart local v5    # "grpIdArray":[I
    .restart local v6    # "grpIds":[Ljava/lang/String;
    .restart local v7    # "grpList":Ljava/lang/String;
    .restart local v8    # "grpMaxCount":I
    .restart local v9    # "i":I
    .restart local v10    # "nOrder":I
    :cond_6
    if-gez v10, :cond_8

    aget v13, v5, v9

    if-eqz v13, :cond_7

    aget v13, v5, v9

    const/16 v15, 0xff

    if-ne v13, v15, :cond_8

    .line 2074
    :cond_7
    move v10, v9

    .line 2075
    const-string v13, "UsimPhoneBookManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " addContactToGroup found an unsed position in the group list. i is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 2081
    .end local v6    # "grpIds":[Ljava/lang/String;
    :cond_9
    const/4 v10, 0x0

    goto :goto_4

    .line 2090
    :catch_1
    move-exception v3

    .line 2091
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v13, "UsimPhoneBookManager"

    const-string v15, "Interrupted Exception in addContactToGroup"

    invoke-static {v13, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5
.end method

.method public checkEmailCapacityFree(I[Ljava/lang/String;)Z
    .locals 7
    .param p1, "adnIndex"    # I
    .param p2, "emails"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 2701
    add-int/lit8 v5, p1, -0x1

    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v3, v5, v6

    .line 2702
    .local v3, "pbrRecNum":I
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    mul-int v2, v3, v5

    .line 2703
    .local v2, "nOffset":I
    const/4 v0, 0x0

    .line 2704
    .local v0, "hasEmail":Z
    if-nez p2, :cond_1

    .line 2728
    :cond_0
    :goto_0
    return v4

    .line 2707
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, p2

    if-ge v1, v5, :cond_2

    .line 2708
    aget-object v5, p2, v1

    if-eqz v5, :cond_4

    aget-object v5, p2, v1

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2709
    const/4 v0, 0x1

    .line 2713
    :cond_2
    if-eqz v0, :cond_0

    .line 2717
    move v1, v2

    :goto_2
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    add-int/2addr v5, v2

    if-ge v1, v5, :cond_6

    .line 2718
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v5, v5, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsSameEmailEfid:Z

    if-eqz v5, :cond_5

    .line 2719
    invoke-direct {p0, v3, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSameEfidEmailCapacityFree(II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2717
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2707
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2723
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    aget v5, v5, v1

    if-nez v5, :cond_3

    goto :goto_0

    .line 2728
    :cond_6
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public checkEmailLength([Ljava/lang/String;)Z
    .locals 7
    .param p1, "emails"    # [Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 2732
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    if-eq v3, v6, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    add-int/lit8 v1, v3, -0x2

    .line 2734
    .local v1, "maxDataLength":I
    :goto_0
    if-eqz p1, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    .line 2735
    aget-object v3, p1, v2

    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 2736
    .local v0, "eMailData":[B
    const-string v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkEmailLength eMailData.length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", maxDataLength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    if-eq v1, v6, :cond_1

    array-length v3, v0

    if-le v3, v1, :cond_1

    .line 2741
    .end local v0    # "eMailData":[B
    :goto_1
    return v2

    .line 2732
    .end local v1    # "maxDataLength":I
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    goto :goto_0

    .line 2741
    .restart local v1    # "maxDataLength":I
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public getAdnListFromUsim()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4811
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAnrCount()I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4094
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "UsimPhoneBookManager getAnrCount begin"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4095
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v3, v3, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v3, :cond_1

    .line 4096
    const-string v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Csim :getAnrCount hasAnrFile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasAnrFile:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4097
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasAnrFile:Z

    if-eqz v3, :cond_3

    .line 4117
    :cond_0
    :goto_0
    return v1

    .line 4101
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4102
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-gtz v4, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4103
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4105
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4110
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4112
    :cond_3
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 4106
    :catch_0
    move-exception v0

    .line 4107
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "UsimPhoneBookManager"

    const-string v5, "Interrupted Exception in getAnrCount"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4110
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 4114
    :cond_4
    const-string v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UsimPhoneBookManager getAnrCount done: N_ANR is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4117
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v3, v3, v2

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getEmailCount()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4121
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "UsimPhoneBookManager getEmailCount begin"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4122
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v3, v3, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v3, :cond_1

    .line 4123
    const-string v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Csim :getEmailCount hasEmailFile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasEmailFile:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4124
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasEmailFile:Z

    if-eqz v3, :cond_3

    .line 4144
    :cond_0
    :goto_0
    return v1

    .line 4128
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4129
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    if-gtz v4, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4130
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4133
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4138
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4140
    :cond_3
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    if-gtz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 4134
    :catch_0
    move-exception v0

    .line 4135
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "UsimPhoneBookManager"

    const-string v5, "Interrupted Exception in getEmailCount"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4138
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 4142
    :cond_4
    const-string v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UsimPhoneBookManager getEmailCount done: N_EMAIL is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4144
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v3, v3, v1

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getPhonebookMemStorageExt()[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    .locals 22

    .prologue
    .line 4294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v9, 0x1

    .line 4295
    .local v9, "is3G":Z
    :goto_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getPhonebookMemStorageExt mCurrentApp.getType()  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4296
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getPhonebookMemStorageExt isUsim "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4297
    if-nez v9, :cond_3

    .line 4298
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPhonebookMemStorageExt2G()[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    move-result-object v16

    .line 4495
    :cond_1
    :goto_1
    return-object v16

    .line 4294
    .end local v9    # "is3G":Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 4300
    .restart local v9    # "is3G":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    .line 4301
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 4304
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    if-nez v19, :cond_5

    .line 4305
    const/16 v16, 0x0

    goto :goto_1

    .line 4307
    :cond_5
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getPhonebookMemStorageExt slice "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSliceCount:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSliceCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    move-object/from16 v16, v0

    .line 4309
    .local v16, "response":[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSliceCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_6

    .line 4310
    new-instance v19, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    invoke-direct/range {v19 .. v19}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;-><init>()V

    aput-object v19, v16, v7

    .line 4309
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 4313
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 4314
    const-string v19, "mPhoneBookRecords has not been loaded."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4317
    :cond_7
    const/16 v17, 0x0

    .line 4318
    .local v17, "size":[I
    const/16 v18, 0x0

    .line 4319
    .local v18, "used":I
    const/4 v4, 0x0

    .line 4321
    .local v4, "current_total":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAdnFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4322
    .local v15, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4323
    if-eqz v17, :cond_8

    .line 4324
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnLength(I)V

    .line 4325
    if-lez v4, :cond_d

    .line 4326
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x2

    aget v20, v17, v20

    add-int v20, v20, v4

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnTotal(I)V

    .line 4331
    :cond_8
    :goto_4
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnType(I)V

    .line 4332
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setSliceIndex(I)V

    .line 4334
    const/16 v18, 0x0

    .line 4335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 4336
    .local v13, "numAdnRecs":I
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v20, v0

    mul-int v12, v19, v20

    .line 4337
    .local v12, "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v19, v0

    add-int v11, v12, v19

    .line 4338
    .local v11, "nMax":I
    if-ge v13, v11, :cond_9

    move v11, v13

    .line 4339
    :cond_9
    const/4 v14, 0x0

    .line 4340
    .local v14, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    move v7, v12

    :goto_5
    if-ge v7, v11, :cond_e

    .line 4342
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v14, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4347
    :goto_6
    if-eqz v14, :cond_c

    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_a

    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-gtz v19, :cond_b

    :cond_a
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_c

    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_c

    .line 4348
    :cond_b
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Adn: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4349
    add-int/lit8 v18, v18, 0x1

    .line 4350
    const/4 v14, 0x0

    .line 4340
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 4328
    .end local v11    # "nMax":I
    .end local v12    # "nOffset":I
    .end local v13    # "numAdnRecs":I
    .end local v14    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_d
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x2

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnTotal(I)V

    goto/16 :goto_4

    .line 4343
    .restart local v11    # "nMax":I
    .restart local v12    # "nOffset":I
    .restart local v13    # "numAdnRecs":I
    .restart local v14    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v5

    .line 4344
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v19, "UsimPhoneBookManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getPhonebookMemStorageExt: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "index is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 4354
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_e
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "adn used "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4355
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnUsed(I)V

    goto/16 :goto_3

    .line 4359
    .end local v11    # "nMax":I
    .end local v12    # "nOffset":I
    .end local v13    # "numAdnRecs":I
    .end local v14    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v15    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4360
    .restart local v15    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4361
    if-eqz v17, :cond_10

    .line 4362
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAnrLength(I)V

    .line 4363
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x2

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAnrTotal(I)V

    .line 4365
    :cond_10
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAnrType(I)V

    .line 4366
    const/16 v18, 0x0

    .line 4367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 4368
    .restart local v13    # "numAdnRecs":I
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v20, v0

    mul-int v12, v19, v20

    .line 4369
    .restart local v12    # "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v19, v0

    add-int v11, v12, v19

    .line 4370
    .restart local v11    # "nMax":I
    if-ge v13, v11, :cond_11

    .line 4371
    move v11, v13

    .line 4373
    :cond_11
    const/4 v14, 0x0

    .line 4374
    .restart local v14    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    const/4 v2, 0x0

    .line 4375
    .local v2, "anrStr":Ljava/lang/String;
    move v7, v12

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int v19, v19, v12

    move/from16 v0, v19

    if-ge v7, v0, :cond_14

    .line 4377
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v14, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4382
    :goto_9
    if-nez v14, :cond_13

    .line 4383
    const-string v19, "null anr rec "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4375
    :cond_12
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 4378
    :catch_1
    move-exception v5

    .line 4379
    .restart local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v19, "UsimPhoneBookManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getPhonebookMemStorageExt: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "index is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 4386
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_13
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber()Ljava/lang/String;

    move-result-object v2

    .line 4387
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_12

    .line 4388
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "anrStr: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4389
    add-int/lit8 v18, v18, 0x1

    goto :goto_a

    .line 4392
    :cond_14
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "anr used: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4393
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAnrUsed(I)V

    goto/16 :goto_7

    .line 4396
    .end local v2    # "anrStr":Ljava/lang/String;
    .end local v11    # "nMax":I
    .end local v12    # "nOffset":I
    .end local v13    # "numAdnRecs":I
    .end local v14    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v15    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4397
    .restart local v15    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4398
    const-string v19, "UsimPhoneBookManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Email getPhonebookMemStorageExt:  size[0] "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    aget v21, v17, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "size[2]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x2

    aget v21, v17, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4399
    if-eqz v17, :cond_16

    .line 4400
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setEmailLength(I)V

    .line 4401
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x2

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setEmailTotal(I)V

    .line 4403
    :cond_16
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setEmailType(I)V

    .line 4404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 4405
    .restart local v13    # "numAdnRecs":I
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v20, v0

    mul-int v12, v19, v20

    .line 4406
    .restart local v12    # "nOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    move/from16 v19, v0

    add-int v11, v12, v19

    .line 4407
    .restart local v11    # "nMax":I
    if-ge v13, v11, :cond_17

    .line 4408
    move v11, v13

    .line 4410
    :cond_17
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "numAdnRecs:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4411
    const/16 v18, 0x0

    .line 4412
    move v7, v12

    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    move/from16 v19, v0

    add-int v19, v19, v12

    move/from16 v0, v19

    if-ge v7, v0, :cond_19

    .line 4414
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecTable:[I

    move-object/from16 v19, v0

    aget v19, v19, v7
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    if-lez v19, :cond_18

    .line 4415
    add-int/lit8 v18, v18, 0x1

    .line 4412
    :cond_18
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 4417
    :catch_2
    move-exception v5

    .line 4418
    .local v5, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "get mEmailRecTable error "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4422
    .end local v5    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_19
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "emailList used:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4423
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setEmailUsed(I)V

    goto/16 :goto_b

    .line 4426
    .end local v11    # "nMax":I
    .end local v12    # "nOffset":I
    .end local v13    # "numAdnRecs":I
    .end local v15    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mExt1Fileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4427
    .restart local v15    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4428
    if-eqz v17, :cond_1b

    .line 4429
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Length(I)V

    .line 4430
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x2

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Total(I)V

    .line 4432
    :cond_1b
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Type(I)V

    .line 4433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 4434
    :try_start_3
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readExt1FileAndWait(I)V

    .line 4435
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4436
    const/16 v18, 0x0

    .line 4437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1e

    .line 4438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 4439
    .local v6, "ext1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v6, :cond_1e

    .line 4440
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 4441
    .local v10, "len":I
    const/4 v7, 0x0

    :goto_e
    if-ge v7, v10, :cond_1e

    .line 4442
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 4443
    .local v3, "arr":[B
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ext1["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4444
    if-eqz v3, :cond_1d

    array-length v0, v3

    move/from16 v19, v0

    if-lez v19, :cond_1d

    .line 4445
    const/16 v19, 0x0

    aget-byte v19, v3, v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1c

    const/16 v19, 0x0

    aget-byte v19, v3, v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1d

    .line 4446
    :cond_1c
    add-int/lit8 v18, v18, 0x1

    .line 4441
    :cond_1d
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 4435
    .end local v3    # "arr":[B
    .end local v6    # "ext1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v10    # "len":I
    :catchall_0
    move-exception v19

    :try_start_4
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v19

    .line 4452
    :cond_1e
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Used(I)V

    goto/16 :goto_d

    .line 4455
    .end local v15    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mGasFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_21

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4456
    .restart local v15    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4457
    if-eqz v17, :cond_20

    .line 4458
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setGasLength(I)V

    .line 4459
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x2

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setGasTotal(I)V

    .line 4461
    :cond_20
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setGasType(I)V

    goto :goto_f

    .line 4464
    .end local v15    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAasFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_23

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4465
    .restart local v15    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4466
    if-eqz v17, :cond_22

    .line 4467
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAasLength(I)V

    .line 4468
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x2

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAasTotal(I)V

    .line 4470
    :cond_22
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAasType(I)V

    goto :goto_10

    .line 4474
    .end local v15    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSneFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_25

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4475
    .restart local v15    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4476
    if-eqz v17, :cond_24

    .line 4477
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setSneLength(I)V

    .line 4478
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setSneTotal(I)V

    .line 4480
    :cond_24
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setSneType(I)V

    goto :goto_11

    .line 4483
    .end local v15    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mCcpFileids:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_27

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4484
    .restart local v15    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v17

    .line 4485
    if-eqz v17, :cond_26

    .line 4486
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setCcpLength(I)V

    .line 4487
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    const/16 v20, 0x0

    aget v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setCcpTotal(I)V

    .line 4489
    :cond_26
    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    move/from16 v19, v0

    aget-object v19, v16, v19

    iget v0, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setCcpType(I)V

    goto :goto_12

    .line 4492
    .end local v15    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_27
    const/4 v7, 0x0

    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSliceCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_1

    .line 4493
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getPhonebookMemStorageExt["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v16, v7

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4492
    add-int/lit8 v7, v7, 0x1

    goto :goto_13
.end method

.method public getPhonebookMemStorageExt2G()[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    .locals 15

    .prologue
    const/16 v11, 0x6f4a

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 4499
    new-array v6, v13, [Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    .line 4500
    .local v6, "response":[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    new-instance v9, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    invoke-direct {v9}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;-><init>()V

    aput-object v9, v6, v12

    .line 4501
    const/4 v7, 0x0

    .line 4502
    .local v7, "size":[I
    const/16 v9, 0x6f3a

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v7

    .line 4503
    if-eqz v7, :cond_0

    .line 4504
    aget-object v9, v6, v12

    aget v10, v7, v12

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnLength(I)V

    .line 4505
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isAdnAccessible()Z

    move-result v9

    if-ne v9, v13, :cond_4

    .line 4506
    aget-object v9, v6, v12

    aget v10, v7, v14

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnTotal(I)V

    .line 4511
    :cond_0
    :goto_0
    aget-object v9, v6, v12

    const/16 v10, 0xa8

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnType(I)V

    .line 4512
    aget-object v9, v6, v12

    invoke-virtual {v9, v13}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setSliceIndex(I)V

    .line 4514
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v7

    .line 4515
    if-eqz v7, :cond_1

    .line 4516
    aget-object v9, v6, v12

    aget v10, v7, v12

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Length(I)V

    .line 4517
    aget-object v9, v6, v12

    aget v10, v7, v14

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Total(I)V

    .line 4519
    :cond_1
    aget-object v9, v6, v12

    const/16 v10, 0xaa

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Type(I)V

    .line 4520
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 4521
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v9, :cond_5

    .line 4522
    const/16 v9, 0x3e9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 4523
    .local v5, "msg":Landroid/os/Message;
    const/4 v9, 0x0

    iput v9, v5, Landroid/os/Message;->arg1:I

    .line 4524
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v11, 0x6f4a

    invoke-virtual {v9, v11, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4526
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4534
    :goto_1
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4535
    const/4 v8, 0x0

    .line 4536
    .local v8, "used":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    if-eqz v9, :cond_6

    .line 4537
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 4538
    .local v2, "ext1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v2, :cond_6

    .line 4539
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4540
    .local v4, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v4, :cond_6

    .line 4541
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 4542
    .local v0, "arr":[B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ext1["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4543
    if-eqz v0, :cond_3

    array-length v9, v0

    if-lez v9, :cond_3

    .line 4544
    aget-byte v9, v0, v12

    if-eq v9, v13, :cond_2

    aget-byte v9, v0, v12

    if-ne v9, v14, :cond_3

    .line 4545
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 4540
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4508
    .end local v0    # "arr":[B
    .end local v2    # "ext1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3    # "i":I
    .end local v4    # "len":I
    .end local v5    # "msg":Landroid/os/Message;
    .end local v8    # "used":I
    :cond_4
    aget-object v9, v6, v12

    invoke-virtual {v9, v12}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setAdnTotal(I)V

    goto/16 :goto_0

    .line 4527
    .restart local v5    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 4528
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v9, "UsimPhoneBookManager"

    const-string v11, "Interrupted Exception in readExt1FileAndWait"

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4534
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    .line 4531
    :cond_5
    :try_start_4
    const-string v9, "UsimPhoneBookManager"

    const-string v11, "readExt1FileAndWait-IccFileHandler is null"

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4532
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4553
    :goto_3
    return-object v6

    .line 4551
    .restart local v5    # "msg":Landroid/os/Message;
    .restart local v8    # "used":I
    :cond_6
    aget-object v9, v6, v12

    invoke-virtual {v9, v8}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->setExt1Used(I)V

    .line 4552
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPhonebookMemStorageExt2G:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v6, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public getSneRecordLen()I
    .locals 11

    .prologue
    const/16 v10, 0xc3

    const/4 v7, -0x1

    .line 4166
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasSne()Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v7

    .line 4195
    :goto_0
    return v6

    .line 4169
    :cond_0
    const-string v6, "UsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSneRecordLen: mSneRecordSize is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4170
    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    if-lez v6, :cond_1

    .line 4171
    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    goto :goto_0

    .line 4173
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 4174
    .local v2, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v2, :cond_2

    move v6, v7

    .line 4175
    goto :goto_0

    .line 4177
    :cond_2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4178
    .local v1, "efid":I
    const-string v6, "UsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSneRecordLen: EFSNE id is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4179
    const/16 v5, 0x16

    .line 4180
    .local v5, "what":I
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 4181
    .local v4, "result":Landroid/os/Message;
    iput v10, v4, Landroid/os/Message;->arg1:I

    .line 4182
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 4183
    .local v3, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v3, :cond_3

    .line 4184
    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 4188
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4190
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4194
    :goto_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4195
    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    goto :goto_0

    :cond_3
    move v6, v7

    .line 4186
    goto :goto_0

    .line 4191
    :catch_0
    move-exception v0

    .line 4192
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v6, "UsimPhoneBookManager"

    const-string v8, "Interrupted Exception in readType1Ef"

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4194
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method public getUsimAasById(II)Ljava/lang/String;
    .locals 6
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 3756
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUsimAasById by id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",pbrIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3757
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-nez v4, :cond_4

    .line 3758
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3759
    const-string v4, "UsimPhoneBookManager"

    const-string v5, "No PBR files"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3782
    :cond_0
    :goto_0
    return-object v3

    .line 3762
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3763
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 3764
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v5, :cond_2

    .line 3765
    monitor-exit v4

    goto :goto_0

    .line 3774
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3767
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 3769
    .local v2, "numRecs":I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    .line 3771
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 3772
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAASFileAndWait(I)V

    .line 3771
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3774
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3776
    .end local v0    # "i":I
    .end local v2    # "numRecs":I
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3777
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3778
    .local v1, "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 3779
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUsimAasList()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/internal/telephony/uicc/AlphaTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3713
    const-string v10, "getUsimAasList start"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3714
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportAas()Z

    move-result v10

    if-nez v10, :cond_1

    .line 3715
    const/4 v6, 0x0

    .line 3752
    :cond_0
    :goto_0
    return-object v6

    .line 3717
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3718
    .local v6, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/uicc/AlphaTag;>;"
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    if-nez v10, :cond_7

    .line 3719
    :cond_2
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_3

    .line 3720
    const-string v10, "UsimPhoneBookManager"

    const-string v11, "No PBR files"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3723
    :cond_3
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 3724
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 3725
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v10, :cond_4

    .line 3726
    monitor-exit v11

    goto :goto_0

    .line 3736
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 3728
    :cond_4
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v10, v10, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 3729
    .local v4, "numRecs":I
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-nez v10, :cond_5

    .line 3730
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    .line 3732
    :cond_5
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 3733
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_6

    .line 3734
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAASFileAndWait(I)V

    .line 3733
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3736
    :cond_6
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3739
    .end local v2    # "i":I
    .end local v4    # "numRecs":I
    :cond_7
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3740
    .local v1, "entrySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3741
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3742
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 3743
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3744
    .local v5, "pbrIndex":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3745
    .local v7, "size":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v7, :cond_8

    .line 3746
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3747
    .local v9, "value":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "aasIndex:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",pbrIndex:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",value:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3748
    new-instance v8, Lcom/mediatek/internal/telephony/uicc/AlphaTag;

    add-int/lit8 v10, v2, 0x1

    invoke-direct {v8, v10, v9, v5}, Lcom/mediatek/internal/telephony/uicc/AlphaTag;-><init>(ILjava/lang/String;I)V

    .line 3749
    .local v8, "tag":Lcom/mediatek/internal/telephony/uicc/AlphaTag;
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3745
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getUsimAasMaxCount()I
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 4059
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "UsimPhoneBookManager getUsimAasMaxCount begin"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4060
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4061
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v3, 0x3

    aget v1, v1, v3

    if-gtz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4062
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4064
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4069
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4071
    const-string v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UsimPhoneBookManager getUsimAasMaxCount done: N_AAS is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4073
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v1, v1, v4

    return v1

    .line 4065
    :catch_0
    move-exception v0

    .line 4066
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "UsimPhoneBookManager"

    const-string v3, "Interrupted Exception in getUsimAasMaxCount"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4069
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public getUsimAasMaxNameLen()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 4041
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "UsimPhoneBookManager getUsimAasMaxNameLen begin"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4042
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4043
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v3, 0x4

    aget v1, v1, v3

    if-gtz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4044
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4046
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4051
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4053
    const-string v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UsimPhoneBookManager getUsimAasMaxNameLen done: L_AAS is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4055
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v1, v1, v4

    return v1

    .line 4047
    :catch_0
    move-exception v0

    .line 4048
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "UsimPhoneBookManager"

    const-string v3, "Interrupted Exception in getUsimAasMaxNameLen"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4051
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public getUsimGroupById(I)Ljava/lang/String;
    .locals 5
    .param p1, "nGasId"    # I

    .prologue
    .line 1865
    const/4 v0, 0x0

    .line 1866
    .local v0, "grpName":Ljava/lang/String;
    const-string v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimPhoneBookManager getUsimGroupById nGasId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 1868
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/UsimGroup;

    .line 1869
    .local v1, "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    if-eqz v1, :cond_0

    .line 1870
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 1871
    const-string v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUsimGroupById index is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getRecordIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    .end local v1    # "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_0
    const-string v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimPhoneBookManager getUsimGroupById grpName is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    return-object v0
.end method

.method public getUsimGroups()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/internal/telephony/uicc/UsimGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1851
    const-string v0, "UsimPhoneBookManager"

    const-string v1, "UsimPhoneBookManager getUsimGroups "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1853
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    monitor-exit v1

    .line 1861
    :goto_0
    return-object v0

    .line 1856
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1858
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->queryUpbCapablityAndWait()V

    .line 1859
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readGasListAndWait()V

    .line 1861
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    goto :goto_0

    .line 1856
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getUsimGrpMaxCount()I
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 2428
    const/4 v2, -0x1

    .line 2430
    .local v2, "ret":I
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "UsimPhoneBookManager getUsimGrpMaxCount begin"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2432
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    .line 2433
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x0

    aput v5, v3, v1

    .line 2432
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2436
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2437
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2439
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2444
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2446
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v2, v3, v6

    .line 2447
    const-string v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UsimPhoneBookManager getUsimGrpMaxCount done: N_Gas is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    return v2

    .line 2440
    :catch_0
    move-exception v0

    .line 2441
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "UsimPhoneBookManager"

    const-string v5, "Interrupted Exception in getUsimGrpMaxCount"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2444
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getUsimGrpMaxNameLen()I
    .locals 7

    .prologue
    const/4 v6, 0x6

    .line 2403
    const/4 v2, -0x1

    .line 2405
    .local v2, "ret":I
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "UsimPhoneBookManager getUsimGrpMaxNameLen begin"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2407
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    .line 2408
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v5, 0x0

    aput v5, v3, v1

    .line 2407
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2411
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkIsPhbReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2412
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->queryUPBCapability(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2414
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2419
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2420
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v2, v3, v6

    .line 2421
    const-string v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UsimPhoneBookManager getUsimGrpMaxNameLen done: L_Gas is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    return v2

    .line 2415
    :catch_0
    move-exception v0

    .line 2416
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "UsimPhoneBookManager"

    const-string v5, "Interrupted Exception in getUsimGrpMaxNameLen"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2419
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 47
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1015
    const/16 v42, 0x0

    .line 1016
    .local v42, "userData":[I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    sparse-switch v43, :sswitch_data_0

    .line 1621
    :cond_0
    :goto_0
    return-void

    .line 1018
    :sswitch_0
    const-string v43, "UsimPhoneBookManager"

    const-string v44, "EVENT_QUERY_PHB_ADN_INFO"

    invoke-static/range {v43 .. v44}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1020
    .local v8, "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_1

    .line 1021
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, [I

    move-object/from16 v24, v43

    check-cast v24, [I

    .line 1022
    .local v24, "info":[I
    if-eqz v24, :cond_2

    .line 1023
    const/16 v43, 0x4

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const/16 v45, 0x0

    aget v45, v24, v45

    aput v45, v43, v44

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v43, v0

    const/16 v44, 0x1

    const/16 v45, 0x1

    aget v45, v24, v45

    aput v45, v43, v44

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v43, v0

    const/16 v44, 0x2

    const/16 v45, 0x2

    aget v45, v24, v45

    aput v45, v43, v44

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v43, v0

    const/16 v44, 0x3

    const/16 v45, 0x3

    aget v45, v24, v45

    aput v45, v43, v44

    .line 1028
    const-string v43, "UsimPhoneBookManager"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "recordSize[0]="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aget v45, v45, v46

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ",recordSize[1]="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v45, v0

    const/16 v46, 0x1

    aget v45, v45, v46

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "recordSize[2]="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v45, v0

    const/16 v46, 0x2

    aget v45, v45, v46

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ",recordSize[3]="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v45, v0

    const/16 v46, 0x3

    aget v45, v45, v46

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    .end local v24    # "info":[I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 1040
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1041
    monitor-exit v44

    goto/16 :goto_0

    :catchall_0
    move-exception v43

    monitor-exit v44
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v43

    .line 1032
    .restart local v24    # "info":[I
    :cond_2
    const/16 v43, 0x4

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const/16 v45, 0x0

    aput v45, v43, v44

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v43, v0

    const/16 v44, 0x1

    const/16 v45, 0x0

    aput v45, v43, v44

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v43, v0

    const/16 v44, 0x2

    const/16 v45, 0x0

    aput v45, v43, v44

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSize:[I

    move-object/from16 v43, v0

    const/16 v44, 0x3

    const/16 v45, 0x0

    aput v45, v43, v44

    goto :goto_1

    .line 1044
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v24    # "info":[I
    :sswitch_1
    const-string v43, "UsimPhoneBookManager"

    const-string v44, "UsimPhoneBookManager handleMessage: EVENT_PBR_LOAD_DONE"

    invoke-static/range {v43 .. v44}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1046
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_3

    .line 1047
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    move/from16 v43, v0

    if-eqz v43, :cond_3

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map;

    .line 1050
    .local v16, "fileIds0":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v43, v0

    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    .line 1051
    .local v17, "fileIds1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v16, :cond_3

    if-eqz v17, :cond_3

    .line 1052
    const-string v43, "UsimPhoneBookManager"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "new PbrFile fileIds0="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " fileIds1="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const/16 v43, 0xca

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v16

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_3

    const/16 v43, 0xca

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_3

    .line 1054
    const/16 v43, 0xca

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v16

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/Integer;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1055
    .local v11, "efid0":I
    const/16 v43, 0xca

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/Integer;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1056
    .local v12, "efid1":I
    const-string v43, "UsimPhoneBookManager"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "PbrFile efid0="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " efid1="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    if-ne v11, v12, :cond_3

    .line 1058
    const/16 v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsSameEmailEfid:Z

    .line 1059
    const-string v43, "UsimPhoneBookManager"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "PbrFiles mIsSameEmailEfid:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsSameEmailEfid:Z

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    .end local v11    # "efid0":I
    .end local v12    # "efid1":I
    .end local v16    # "fileIds0":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v17    # "fileIds1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 1066
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1067
    monitor-exit v44

    goto/16 :goto_0

    :catchall_1
    move-exception v43

    monitor-exit v44
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v43

    .line 1070
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    const-string v43, "Loading USIM ADN records done"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1071
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1072
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    if-eqz v43, :cond_6

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    move/from16 v43, v0

    if-eqz v43, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v43

    if-lez v43, :cond_4

    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    if-eqz v43, :cond_4

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v44

    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->changeAdnRecordNumber(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1076
    .local v7, "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1088
    .end local v7    # "adnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 1089
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1090
    monitor-exit v44

    goto/16 :goto_0

    :catchall_2
    move-exception v43

    monitor-exit v44
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v43

    .line 1078
    :cond_4
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    if-eqz v43, :cond_5

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/util/ArrayList;

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1080
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Loading USIM ADN records "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1082
    :cond_5
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Loading USIM ADN records ar.result:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1086
    :cond_6
    const-string v43, "Loading USIM ADN records fail."

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1093
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/os/AsyncResult;

    move-object/from16 v8, v43

    check-cast v8, Landroid/os/AsyncResult;

    .line 1094
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .line 1095
    .local v15, "fileId":I
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_9

    .line 1096
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, [I

    move-object/from16 v35, v43

    check-cast v35, [I

    .line 1102
    .local v35, "recordSize":[I
    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v43, v0

    const/16 v44, 0x3

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_8

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    move-object/from16 v43, v0

    if-nez v43, :cond_7

    .line 1104
    const-string v43, "mAnrFileSize is null !!!! recreat it !"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1105
    new-instance v43, Ljava/util/HashMap;

    invoke-direct/range {v43 .. v43}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    .line 1108
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    move-object/from16 v43, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    const/16 v45, 0x2

    aget v45, v35, v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "mAnrFileSize mEfTag: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " mAnrFileSize: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    move-object/from16 v44, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1114
    :goto_3
    const/16 v43, 0x0

    aget v43, v35, v43

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    .line 1115
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Loading USIM ANR records size done mAnrRecordSize:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1122
    .end local v35    # "recordSize":[I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 1123
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1124
    monitor-exit v44

    goto/16 :goto_0

    :catchall_3
    move-exception v43

    monitor-exit v44
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v43

    .line 1111
    .restart local v35    # "recordSize":[I
    :catch_0
    move-exception v9

    .line 1112
    .local v9, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v43, "mAnrFileSize Index out of bounds."

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1117
    .end local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_8
    const-string v43, "UsimPhoneBookManager"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "get wrong EF record size format"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1120
    .end local v35    # "recordSize":[I
    :cond_9
    const-string v43, "UsimPhoneBookManager"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "get EF record size failed"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1127
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "fileId":I
    :sswitch_4
    const-string v43, "Loading USIM ANR records done "

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1128
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1129
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_b

    .line 1130
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/util/ArrayList;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecords:Ljava/util/ArrayList;

    .line 1131
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 1132
    .local v33, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecords:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecord(Ljava/util/ArrayList;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    move-object/from16 v43, v0

    if-nez v43, :cond_a

    .line 1134
    const-string v43, "mAnrFileList is null !!!! recreat it !"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1135
    new-instance v43, Ljava/util/HashMap;

    invoke-direct/range {v43 .. v43}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    .line 1138
    :cond_a
    :try_start_5
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "mAnrFileList mEfTag: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileList:Ljava/util/HashMap;

    move-object/from16 v43, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecords:Ljava/util/ArrayList;

    move-object/from16 v45, v0

    invoke-virtual/range {v43 .. v45}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1145
    .end local v33    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 1146
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1147
    monitor-exit v44

    goto/16 :goto_0

    :catchall_4
    move-exception v43

    monitor-exit v44
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v43

    .line 1140
    .restart local v33    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :catch_1
    move-exception v9

    .line 1141
    .restart local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v43, "Index out of bounds."

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 1151
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v33    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :sswitch_5
    const-string v43, "Loading USIM ANR record done"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1152
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1153
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, [I

    move-object/from16 v42, v43

    check-cast v42, [I

    .line 1154
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1156
    .local v37, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    if-eqz v37, :cond_c

    .line 1157
    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v23

    .line 1159
    .local v23, "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v23, :cond_c

    .line 1160
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Loading USIM ANR record done result is "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1162
    const/16 v43, 0x0

    aget v43, v42, v43

    const/16 v44, 0x1

    aget v44, v42, v44

    const/16 v45, 0x2

    aget v45, v42, v45

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    move/from16 v3, v45

    move-object/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithAnrByIndex(III[B)V

    .line 1166
    .end local v23    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1167
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "haman, mReadingAnrNum when load done after minus: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ", mNeedNotify:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingAnrNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v43

    if-nez v43, :cond_d

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v43

    if-eqz v43, :cond_d

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 1172
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1173
    monitor-exit v44
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 1176
    :cond_d
    const-string v43, "Loading USIM ANR record done end"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1173
    :catchall_5
    move-exception v43

    :try_start_8
    monitor-exit v44
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v43

    .line 1179
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v37    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1180
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .line 1181
    .local v28, "pbrIndex":I
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Loading USIM IAP records done "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1182
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_f

    .line 1183
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/util/ArrayList;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    if-nez v43, :cond_e

    .line 1185
    const-string v43, "IapFileList is null !!!! recreat it !"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1186
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 1189
    :cond_e
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move/from16 v1, v28

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_2

    .line 1195
    :cond_f
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 1196
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1197
    monitor-exit v44

    goto/16 :goto_0

    :catchall_6
    move-exception v43

    monitor-exit v44
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw v43

    .line 1190
    :catch_2
    move-exception v9

    .line 1191
    .restart local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v43, "Index out of bounds."

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 1201
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v28    # "pbrIndex":I
    :sswitch_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 1202
    .local v27, "pbr":I
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Loading USIM Email records done "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1203
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1204
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_10

    .line 1205
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/util/ArrayList;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 1206
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 1207
    .restart local v33    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecord(Ljava/util/ArrayList;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 1209
    .end local v33    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    if-nez v43, :cond_11

    .line 1210
    const-string v43, "mEmailFileList is null !!!! recreat it !"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1211
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    .line 1214
    :cond_11
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move/from16 v1, v27

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_3

    .line 1218
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 1219
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1220
    monitor-exit v44

    goto/16 :goto_0

    :catchall_7
    move-exception v43

    monitor-exit v44
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    throw v43

    .line 1215
    :catch_3
    move-exception v9

    .line 1216
    .restart local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v43, "Index out of bounds."

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_7

    .line 1223
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v27    # "pbr":I
    :sswitch_8
    const-string v43, "Loading USIM Email length done"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1224
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/os/AsyncResult;

    move-object/from16 v8, v43

    check-cast v8, Landroid/os/AsyncResult;

    .line 1225
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_13

    .line 1226
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, [I

    move-object/from16 v35, v43

    check-cast v35, [I

    .line 1227
    .restart local v35    # "recordSize":[I
    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v43, v0

    const/16 v44, 0x3

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_12

    .line 1228
    const/16 v43, 0x2

    aget v43, v35, v43

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    .line 1229
    const/16 v43, 0x0

    aget v43, v35, v43

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    .line 1230
    const-string v43, "UsimPhoneBookManager"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "Email filesize="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileSize:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "recordSize="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    .end local v35    # "recordSize":[I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 1239
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1240
    monitor-exit v44

    goto/16 :goto_0

    :catchall_8
    move-exception v43

    monitor-exit v44
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    throw v43

    .line 1232
    .restart local v35    # "recordSize":[I
    :cond_12
    const-string v43, "UsimPhoneBookManager"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "get wrong EFEMAIL record size format"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1235
    .end local v35    # "recordSize":[I
    :cond_13
    const-string v43, "UsimPhoneBookManager"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "get EF record size failed"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1243
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1244
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, [I

    move-object/from16 v42, v43

    check-cast v42, [I

    .line 1245
    iget-object v13, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1246
    .local v13, "em":Lcom/android/internal/telephony/uicc/IccIoResult;
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Loading USIM email record done email index:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const/16 v44, 0x0

    aget v44, v42, v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ", adn i:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const/16 v44, 0x1

    aget v44, v42, v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1247
    if-eqz v13, :cond_14

    .line 1248
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v23

    .line 1250
    .restart local v23    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v23, :cond_14

    .line 1251
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Loading USIM Email record done result is "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget-object v0, v13, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1253
    const/16 v43, 0x0

    aget v43, v42, v43

    const/16 v44, 0x1

    aget v44, v42, v44

    iget-object v0, v13, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithEmailByIndex(II[B)V

    .line 1257
    .end local v23    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1258
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "haman, mReadingEmailNum when load done after minus: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ", mNeedNotify:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingEmailNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v43

    if-nez v43, :cond_15

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v43

    if-eqz v43, :cond_15

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 1263
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1264
    monitor-exit v44
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 1267
    :cond_15
    const-string v43, "Loading USIM Email record done end"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1264
    :catchall_9
    move-exception v43

    :try_start_f
    monitor-exit v44
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    throw v43

    .line 1270
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "em":Lcom/android/internal/telephony/uicc/IccIoResult;
    :sswitch_a
    const-string v43, "Updating USIM Email records done"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1271
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1272
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_0

    .line 1273
    const-string v43, "Updating USIM Email records successfully!"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1277
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_b
    const-string v43, "Updating USIM IAP records done"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1278
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1279
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_0

    .line 1280
    const-string v43, "Updating USIM IAP records successfully!"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1284
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_c
    const-string v43, "Updating USIM ANR records done"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1285
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1286
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1288
    .local v36, "res":Lcom/android/internal/telephony/uicc/IccIoResult;
    if-eqz v36, :cond_0

    .line 1289
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v14

    .line 1291
    .local v14, "exception":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v14, :cond_0

    .line 1292
    const-string v43, "Updating USIM ANR records successfully!"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1297
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "exception":Lcom/android/internal/telephony/uicc/IccException;
    .end local v36    # "res":Lcom/android/internal/telephony/uicc/IccIoResult;
    :sswitch_d
    const-string v43, "Load USIM GRP record done"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1298
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1299
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, [I

    move-object/from16 v42, v43

    check-cast v42, [I

    .line 1301
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    if-eqz v43, :cond_17

    .line 1302
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, [I

    move-object/from16 v20, v43

    check-cast v20, [I

    .line 1304
    .local v20, "grpIds":[I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v43, v0

    if-lez v43, :cond_17

    .line 1305
    const-string v43, "Load USIM GRP record done result is "

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1306
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_9
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v43, v0

    move/from16 v0, v21

    move/from16 v1, v43

    if-ge v0, v1, :cond_16

    .line 1307
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, " "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    aget v44, v20, v21

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ","

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1306
    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    .line 1309
    :cond_16
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Load USIM GRP record done result is "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1310
    const/16 v43, 0x0

    aget v43, v42, v43

    const/16 v44, 0x1

    aget v44, v42, v44

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 1314
    .end local v20    # "grpIds":[I
    .end local v21    # "i":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1315
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "haman, mReadingGrpNum when load done after minus: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ",mNeedNotify:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingGrpNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v43

    if-nez v43, :cond_18

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v43

    if-eqz v43, :cond_18

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 1320
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1321
    monitor-exit v44
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 1324
    :cond_18
    const-string v43, "Loading USIM Grp record done end"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1321
    :catchall_a
    move-exception v43

    :try_start_11
    monitor-exit v44
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    throw v43

    .line 1327
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_e
    const-string v43, "Query UPB capability done"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1328
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1329
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_19

    .line 1330
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, [I

    check-cast v43, [I

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    .line 1333
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 1334
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUPBCapabilityLock:Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1335
    monitor-exit v44

    goto/16 :goto_0

    :catchall_b
    move-exception v43

    monitor-exit v44
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    throw v43

    .line 1338
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_f
    const-string v43, "Load UPB GAS done"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1339
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1340
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_1a

    .line 1341
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, [Ljava/lang/String;

    move-object/from16 v19, v43

    check-cast v19, [Ljava/lang/String;

    .line 1342
    .local v19, "gasList":[Ljava/lang/String;
    if-eqz v19, :cond_1a

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v43, v0

    if-lez v43, :cond_1a

    .line 1343
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    .line 1344
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_a
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v43, v0

    move/from16 v0, v21

    move/from16 v1, v43

    if-ge v0, v1, :cond_1a

    .line 1346
    aget-object v43, v19, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->decodeGas(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1347
    .local v18, "gas":Ljava/lang/String;
    new-instance v41, Lcom/mediatek/internal/telephony/uicc/UsimGroup;

    add-int/lit8 v43, v21, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v43

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;-><init>(ILjava/lang/String;)V

    .line 1348
    .local v41, "uGasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1349
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Load UPB GAS done i is "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ", gas is "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1344
    add-int/lit8 v21, v21, 0x1

    goto :goto_a

    .line 1353
    .end local v18    # "gas":Ljava/lang/String;
    .end local v19    # "gasList":[Ljava/lang/String;
    .end local v21    # "i":I
    .end local v41    # "uGasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 1354
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1355
    monitor-exit v44

    goto/16 :goto_0

    :catchall_c
    move-exception v43

    monitor-exit v44
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    throw v43

    .line 1358
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_10
    const-string v43, "update UPB GAS done"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1359
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1360
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_1b

    .line 1361
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 1373
    :goto_b
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "update UPB GAS done mResult is "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 1375
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1376
    monitor-exit v44

    goto/16 :goto_0

    :catchall_d
    move-exception v43

    monitor-exit v44
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    throw v43

    .line 1363
    :cond_1b
    iget-object v9, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/android/internal/telephony/CommandException;

    .line 1365
    .local v9, "e":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v9}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v43

    sget-object v44, Lcom/android/internal/telephony/CommandException$Error;->TEXT_STRING_TOO_LONG:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    if-ne v0, v1, :cond_1c

    .line 1366
    const/16 v43, -0xa

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    goto :goto_b

    .line 1367
    :cond_1c
    invoke-virtual {v9}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v43

    sget-object v44, Lcom/android/internal/telephony/CommandException$Error;->SIM_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    if-ne v0, v1, :cond_1d

    .line 1368
    const/16 v43, -0x14

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    goto :goto_b

    .line 1370
    :cond_1d
    const/16 v43, -0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    goto :goto_b

    .line 1379
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "e":Lcom/android/internal/telephony/CommandException;
    :sswitch_11
    const-string v43, "update UPB GRP done"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1380
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1381
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_1e

    .line 1382
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 1386
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 1387
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1388
    monitor-exit v44

    goto/16 :goto_0

    :catchall_e
    move-exception v43

    monitor-exit v44
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    throw v43

    .line 1384
    :cond_1e
    const/16 v43, -0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    goto :goto_c

    .line 1391
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1392
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    .line 1393
    .local v29, "pbrIndexAAS":I
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "EVENT_AAS_LOAD_DONE done pbr "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1394
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_1f

    .line 1395
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/util/ArrayList;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasFileRecords:Ljava/util/ArrayList;

    .line 1397
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasFileRecords:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    if-eqz v43, :cond_22

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasFileRecords:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v38

    .line 1399
    .local v38, "size":I
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1400
    .local v25, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_d
    move/from16 v0, v21

    move/from16 v1, v38

    if-ge v0, v1, :cond_21

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasFileRecords:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 1402
    .local v5, "aas":[B
    if-nez v5, :cond_20

    .line 1403
    const/16 v43, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1400
    :goto_e
    add-int/lit8 v21, v21, 0x1

    goto :goto_d

    .line 1406
    :cond_20
    const/16 v43, 0x0

    array-length v0, v5

    move/from16 v44, v0

    move/from16 v0, v43

    move/from16 v1, v44

    invoke-static {v5, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v6

    .line 1407
    .local v6, "aasAlphaTag":Ljava/lang/String;
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "AAS["

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "]="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ",byte="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1409
    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1411
    .end local v5    # "aas":[B
    .end local v6    # "aasAlphaTag":Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    move-object/from16 v43, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    .end local v21    # "i":I
    .end local v25    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v38    # "size":I
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 1415
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1416
    monitor-exit v44

    goto/16 :goto_0

    :catchall_f
    move-exception v43

    monitor-exit v44
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_f

    throw v43

    .line 1419
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v29    # "pbrIndexAAS":I
    :sswitch_13
    const-string v43, "EVENT_AAS_UPDATE_DONE done."

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 1421
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1422
    monitor-exit v44

    goto/16 :goto_0

    :catchall_10
    move-exception v43

    monitor-exit v44
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_10

    throw v43

    .line 1425
    :sswitch_14
    const-string v43, "Loading record length done"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1426
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/os/AsyncResult;

    move-object/from16 v8, v43

    check-cast v8, Landroid/os/AsyncResult;

    .line 1427
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 1428
    .local v10, "efTag":I
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_25

    .line 1429
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, [I

    move-object/from16 v35, v43

    check-cast v35, [I

    .line 1430
    .restart local v35    # "recordSize":[I
    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v43, v0

    const/16 v44, 0x3

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_24

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v43, v0

    if-nez v43, :cond_23

    .line 1432
    new-instance v43, Ljava/util/HashMap;

    invoke-direct/range {v43 .. v43}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    .line 1434
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    move-object/from16 v43, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    .end local v35    # "recordSize":[I
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 1443
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1444
    monitor-exit v44
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_11

    .line 1445
    const-string v43, "EVENT_GET_RECORDS_SIZE_DON end mLock.notify"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1436
    .restart local v35    # "recordSize":[I
    :cond_24
    const-string v43, "UsimPhoneBookManager"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "get wrong record size format"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1439
    .end local v35    # "recordSize":[I
    :cond_25
    const-string v43, "UsimPhoneBookManager"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "get EF record size failed"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1444
    :catchall_11
    move-exception v43

    :try_start_19
    monitor-exit v44
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_11

    throw v43

    .line 1448
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "efTag":I
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1449
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 1450
    .local v30, "pbrIndexExt1":I
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "EVENT_EXT1_LOAD_DONE done pbr "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1451
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_27

    .line 1452
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/util/ArrayList;

    .line 1454
    .local v34, "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v34, :cond_27

    .line 1455
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "EVENT_EXT1_LOAD_DONE done size "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    move-object/from16 v43, v0

    if-nez v43, :cond_26

    .line 1457
    new-instance v43, Ljava/util/HashMap;

    invoke-direct/range {v43 .. v43}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    .line 1459
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1ForAnrRec:Ljava/util/HashMap;

    move-object/from16 v43, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    .end local v34    # "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 1463
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1464
    monitor-exit v44

    goto/16 :goto_0

    :catchall_12
    move-exception v43

    monitor-exit v44
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_12

    throw v43

    .line 1467
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v30    # "pbrIndexExt1":I
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/os/AsyncResult;

    move-object/from16 v8, v43

    check-cast v8, Landroid/os/AsyncResult;

    .line 1468
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v40, v0

    .line 1469
    .local v40, "tag":I
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_29

    .line 1470
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, [I

    move-object/from16 v35, v43

    check-cast v35, [I

    .line 1476
    .restart local v35    # "recordSize":[I
    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v43, v0

    const/16 v44, 0x3

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_28

    .line 1477
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Loading USIM records size done tag:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "file size "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const/16 v44, 0x2

    aget v44, v35, v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ", record size "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const/16 v44, 0x0

    aget v44, v35, v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1479
    packed-switch v40, :pswitch_data_0

    .line 1485
    const-string v43, "UsimPhoneBookManager"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "unsupported tag when loading record size "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    .end local v35    # "recordSize":[I
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 1499
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1500
    monitor-exit v44

    goto/16 :goto_0

    :catchall_13
    move-exception v43

    monitor-exit v44
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_13

    throw v43

    .line 1481
    .restart local v35    # "recordSize":[I
    :pswitch_0
    const/16 v43, 0x2

    aget v43, v35, v43

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileSize:I

    .line 1482
    const/16 v43, 0x0

    aget v43, v35, v43

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneRecordSize:I

    goto :goto_10

    .line 1490
    :cond_28
    const-string v43, "UsimPhoneBookManager"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "get wrong EF record size format tag:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ",exception"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1495
    .end local v35    # "recordSize":[I
    :cond_29
    const-string v43, "UsimPhoneBookManager"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "get EF record size failed"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1503
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v40    # "tag":I
    :sswitch_17
    const-string v43, "Loading USIM SNE record done"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1504
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1505
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, [I

    move-object/from16 v42, v43

    check-cast v42, [I

    .line 1506
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1508
    .local v31, "r":Lcom/android/internal/telephony/uicc/IccIoResult;
    if-eqz v31, :cond_2a

    .line 1509
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v23

    .line 1511
    .restart local v23    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v23, :cond_2a

    .line 1512
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Loading USIM SNE record done result is "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1514
    const/16 v43, 0x0

    aget v43, v42, v43

    const/16 v44, 0x1

    aget v44, v42, v44

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithSneByIndex(II[B)V

    .line 1518
    .end local v23    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1519
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "haman, mReadingSneNum when load done after minus: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ",mNeedNotify:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingSneNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v43

    if-nez v43, :cond_2b

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v43

    if-eqz v43, :cond_2b

    .line 1522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 1524
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1525
    monitor-exit v44
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_14

    .line 1528
    :cond_2b
    const-string v43, "Loading USIM SNE record done end"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1525
    :catchall_14
    move-exception v43

    :try_start_1d
    monitor-exit v44
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_14

    throw v43

    .line 1531
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v31    # "r":Lcom/android/internal/telephony/uicc/IccIoResult;
    :sswitch_18
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v39, v0

    .line 1532
    .local v39, "snePbr":I
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Loading USIM SNE records done "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1533
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1534
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    const/16 v26, 0x0

    .line 1535
    .local v26, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_2c

    .line 1536
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    .end local v26    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    check-cast v26, Ljava/util/ArrayList;

    .line 1537
    .restart local v26    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 1538
    .restart local v33    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecord(Ljava/util/ArrayList;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    .line 1540
    .end local v33    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    if-nez v43, :cond_2d

    .line 1541
    const-string v43, "mSneFileList is null !!!! recreat it !"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1542
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileList:Ljava/util/ArrayList;

    .line 1545
    :cond_2d
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSneFileList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v39

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_1e} :catch_4

    .line 1549
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 1550
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1551
    monitor-exit v44

    goto/16 :goto_0

    :catchall_15
    move-exception v43

    monitor-exit v44
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_15

    throw v43

    .line 1546
    :catch_4
    move-exception v9

    .line 1547
    .local v9, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v43, "Index out of bounds."

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_11

    .line 1554
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v26    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v39    # "snePbr":I
    :sswitch_19
    const-string v43, "update UPB SNE done"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1555
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1556
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-eqz v43, :cond_2e

    .line 1557
    const-string v43, "UsimPhoneBookManager"

    const-string v44, "EVENT_SNE_UPDATE_DONE exception"

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v45, v0

    invoke-static/range {v43 .. v45}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1559
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 1560
    :try_start_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1561
    monitor-exit v44

    goto/16 :goto_0

    :catchall_16
    move-exception v43

    monitor-exit v44
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_16

    throw v43

    .line 1567
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :sswitch_1a
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1568
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, [I

    move-object/from16 v42, v43

    check-cast v42, [I

    .line 1569
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1570
    .local v32, "re":Lcom/android/internal/telephony/uicc/IccIoResult;
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Loading USIM Iap record done pbr:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const/16 v44, 0x0

    aget v44, v42, v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ", i:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const/16 v44, 0x1

    aget v44, v42, v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1571
    if-eqz v32, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    if-eqz v43, :cond_2f

    .line 1572
    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v23

    .line 1574
    .restart local v23    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-nez v23, :cond_2f

    .line 1575
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Loading USIM Iap record done result is "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1581
    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aget v44, v42, v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    .line 1583
    .local v22, "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v43

    if-lez v43, :cond_31

    .line 1584
    const/16 v43, 0x1

    aget v43, v42, v43

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v44, v0

    move-object/from16 v0, v22

    move/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_21 .. :try_end_21} :catch_5

    .line 1594
    .end local v22    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v23    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_2f
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1595
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "haman, mReadingIapNum when load done after minus: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ",mNeedNotify "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mReadingIapNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v43

    if-nez v43, :cond_0

    .line 1597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v43

    if-eqz v43, :cond_30

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mNeedNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1599
    const-string v43, "EVENT_IAP_RECORD_LOAD_DONE before mLock.notify"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 1601
    :try_start_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1602
    monitor-exit v44
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_17

    .line 1604
    :cond_30
    const-string v43, "EVENT_IAP_RECORD_LOAD_DONE end mLock.notify"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1586
    .restart local v22    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v23    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :cond_31
    :try_start_23
    const-string v43, "UsimPhoneBookManager"

    const-string v44, "Warning: IAP size is 0"

    invoke-static/range {v43 .. v44}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_23 .. :try_end_23} :catch_5

    goto/16 :goto_12

    .line 1588
    .end local v22    # "iapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catch_5
    move-exception v9

    .line 1589
    .restart local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v43, "Index out of bounds."

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 1602
    .end local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v23    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    :catchall_17
    move-exception v43

    :try_start_24
    monitor-exit v44
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_17

    throw v43

    .line 1608
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v32    # "re":Lcom/android/internal/telephony/uicc/IccIoResult;
    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 1610
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    if-nez v43, :cond_32

    .line 1611
    iget-object v0, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/internal/telephony/EFResponseData;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->efData:Lcom/android/internal/telephony/EFResponseData;

    .line 1616
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44

    .line 1617
    :try_start_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->notify()V

    .line 1618
    monitor-exit v44

    goto/16 :goto_0

    :catchall_18
    move-exception v43

    monitor-exit v44
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_18

    throw v43

    .line 1613
    :cond_32
    const-string v43, "UsimPhoneBookManager"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "Select EF file fail"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-object v0, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 1016
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_6
        0x4 -> :sswitch_7
        0x5 -> :sswitch_4
        0x7 -> :sswitch_f
        0x8 -> :sswitch_12
        0x9 -> :sswitch_c
        0xa -> :sswitch_11
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_5
        0xe -> :sswitch_3
        0xf -> :sswitch_d
        0x10 -> :sswitch_e
        0x11 -> :sswitch_10
        0x12 -> :sswitch_8
        0x13 -> :sswitch_9
        0x15 -> :sswitch_13
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_0
        0x3e8 -> :sswitch_14
        0x3e9 -> :sswitch_15
    .end sparse-switch

    .line 1479
    :pswitch_data_0
    .packed-switch 0xc3
        :pswitch_0
    .end packed-switch
.end method

.method public hasExistGroup(Ljava/lang/String;)I
    .locals 7
    .param p1, "grpName"    # Ljava/lang/String;

    .prologue
    .line 2381
    const/4 v0, -0x1

    .line 2382
    .local v0, "grpId":I
    const-string v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UsimPhoneBookManager hasExistGroup grpName is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    if-nez p1, :cond_0

    move v1, v0

    .line 2399
    .end local v0    # "grpId":I
    .local v1, "grpId":I
    :goto_0
    return v1

    .line 2386
    .end local v1    # "grpId":I
    .restart local v0    # "grpId":I
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 2387
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 2388
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/uicc/UsimGroup;

    .line 2389
    .local v3, "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2390
    const-string v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUsimGroupById index is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getRecordIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getRecordIndex()I

    move-result v0

    .line 2398
    .end local v2    # "i":I
    .end local v3    # "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_1
    const-string v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UsimPhoneBookManager hasExistGroup grpId is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 2399
    .end local v0    # "grpId":I
    .restart local v1    # "grpId":I
    goto :goto_0

    .line 2387
    .end local v1    # "grpId":I
    .restart local v0    # "grpId":I
    .restart local v2    # "i":I
    .restart local v3    # "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public hasSne()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4148
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4149
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 4150
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 4151
    :cond_0
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "hasSne No PBR files"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4152
    monitor-exit v2

    .line 4161
    :goto_0
    return v1

    .line 4154
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4155
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 4156
    .local v0, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2

    const/16 v2, 0xc3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4157
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "hasSne:  true"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4158
    const/4 v1, 0x1

    goto :goto_0

    .line 4154
    .end local v0    # "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 4160
    .restart local v0    # "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "hasSne:  false"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insertUsimAas(Ljava/lang/String;)I
    .locals 25
    .param p1, "aasName"    # Ljava/lang/String;

    .prologue
    .line 3851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertUsimAas "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3852
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 3853
    :cond_0
    const/4 v5, 0x0

    .line 3923
    :goto_0
    return v5

    .line 3855
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasMaxNameLen()I

    move-result v17

    .line 3856
    .local v17, "limit":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    .line 3857
    .local v16, "len":I
    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 3858
    const/4 v5, 0x0

    goto :goto_0

    .line 3860
    :cond_2
    const/4 v15, -0x1

    .line 3861
    .local v15, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 3862
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-nez v2, :cond_5

    .line 3863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3864
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "insertUsimAas No PBR "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3865
    const/4 v5, -0x1

    monitor-exit v24

    goto :goto_0

    .line 3926
    :catchall_0
    move-exception v2

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3867
    :cond_3
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 3868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_4

    .line 3869
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "insertUsimAas No PBR files"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3870
    const/4 v5, -0x1

    monitor-exit v24

    goto :goto_0

    .line 3872
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v20

    .line 3873
    .local v20, "numRecs":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    .line 3874
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move/from16 v0, v20

    if-ge v14, v0, :cond_5

    .line 3875
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAASFileAndWait(I)V

    .line 3874
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 3879
    .end local v14    # "i":I
    .end local v20    # "numRecs":I
    :cond_5
    const/16 v21, -0x1

    .line 3880
    .local v21, "pbrIndex":I
    const/4 v5, 0x0

    .line 3881
    .local v5, "aasIndex":I
    const/4 v13, 0x0

    .line 3882
    .local v13, "found":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 3884
    .local v12, "entrySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :cond_6
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    if-nez v13, :cond_9

    .line 3885
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 3886
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 3887
    .local v19, "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 3889
    .local v22, "size":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_3
    move/from16 v0, v22

    if-ge v14, v0, :cond_6

    .line 3890
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 3891
    .local v23, "value":Ljava/lang/String;
    if-eqz v23, :cond_7

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    .line 3892
    :cond_7
    const/4 v13, 0x1

    .line 3893
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 3894
    add-int/lit8 v5, v14, 0x1

    .line 3895
    goto :goto_2

    .line 3889
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 3899
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v14    # "i":I
    .end local v19    # "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "size":I
    .end local v23    # "value":Ljava/lang/String;
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertUsimAas pbrIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",aasIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3900
    if-nez v13, :cond_a

    .line 3902
    const/4 v5, -0x2

    monitor-exit v24

    goto/16 :goto_0

    .line 3904
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3905
    .local v6, "temp":Ljava/lang/String;
    const/16 v2, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 3906
    .local v8, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3908
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3912
    :goto_4
    :try_start_3
    iget-object v9, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 3913
    .local v9, "ar":Landroid/os/AsyncResult;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertUsimAas UPB_EF_AAS: ar "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3914
    if-eqz v9, :cond_b

    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_d

    .line 3915
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 3916
    .local v18, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v18, :cond_c

    .line 3917
    add-int/lit8 v2, v5, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3918
    const-string v2, "insertUsimAas update mAasForAnrRec done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3920
    :cond_c
    monitor-exit v24

    goto/16 :goto_0

    .line 3909
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v10

    .line 3910
    .local v10, "e":Ljava/lang/InterruptedException;
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "Interrupted Exception in insertUsimAas"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3922
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    :cond_d
    const-string v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertUsimAas exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3923
    const/4 v5, -0x1

    monitor-exit v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized insertUsimGroup(Ljava/lang/String;)I
    .locals 11
    .param p1, "grpName"    # Ljava/lang/String;

    .prologue
    .line 1952
    monitor-enter p0

    const/4 v3, -0x1

    .line 1953
    .local v3, "index":I
    :try_start_0
    const-string v0, "UsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsimPhoneBookManager insertUsimGroup grpName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1955
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1956
    :cond_0
    const-string v0, "UsimPhoneBookManager"

    const-string v1, "UsimPhoneBookManager insertUsimGroup fail "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    :goto_0
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v3

    .line 1992
    :goto_1
    monitor-exit p0

    return v0

    .line 1958
    :cond_1
    const/4 v8, 0x0

    .line 1959
    .local v8, "gasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    const/4 v9, 0x0

    .line 1960
    .local v9, "i":I
    const/4 v9, 0x0

    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_2

    .line 1961
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "gasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    check-cast v8, Lcom/mediatek/internal/telephony/uicc/UsimGroup;

    .line 1962
    .restart local v8    # "gasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1963
    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getRecordIndex()I

    move-result v3

    .line 1964
    const-string v0, "UsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsimPhoneBookManager insertUsimGroup index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    :cond_2
    if-gez v3, :cond_4

    .line 1969
    const-string v0, "UsimPhoneBookManager"

    const-string v1, "UsimPhoneBookManager insertUsimGroup fail: gas file is full."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    const/16 v3, -0x14

    .line 1971
    monitor-exit v10

    move v0, v3

    goto :goto_1

    .line 1960
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1973
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1974
    .local v4, "temp":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x11

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1977
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1982
    :goto_3
    :try_start_4
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-gez v0, :cond_5

    .line 1983
    const-string v0, "UsimPhoneBookManager"

    const-string v1, "result is negative. insertUsimGroup"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    monitor-exit v10

    goto :goto_1

    .line 1991
    .end local v4    # "temp":Ljava/lang/String;
    .end local v8    # "gasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    .end local v9    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1952
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1978
    .restart local v4    # "temp":Ljava/lang/String;
    .restart local v8    # "gasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    .restart local v9    # "i":I
    :catch_0
    move-exception v7

    .line 1979
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_6
    const-string v0, "UsimPhoneBookManager"

    const-string v1, "Interrupted Exception in insertUsimGroup"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1986
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_5
    invoke-virtual {v8, p1}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->setAlphaTag(Ljava/lang/String;)V

    .line 1987
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0, v9, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 349
    return-void
.end method

.method public isAdnAccessible()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 4712
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v4, v5, :cond_0

    .line 4713
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4714
    const/16 v5, 0x1b

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4716
    .local v2, "response":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v6, 0x6f3a

    invoke-virtual {v5, v6, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->selectEFFile(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4719
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4723
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4725
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->efData:Lcom/android/internal/telephony/EFResponseData;

    if-eqz v4, :cond_0

    .line 4726
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->efData:Lcom/android/internal/telephony/EFResponseData;

    invoke-virtual {v4}, Lcom/android/internal/telephony/EFResponseData;->getFileStatus()I

    move-result v1

    .line 4735
    .local v1, "fs":I
    and-int/lit8 v4, v1, 0x5

    if-lez v4, :cond_1

    .line 4742
    .end local v1    # "fs":I
    .end local v2    # "response":Landroid/os/Message;
    :cond_0
    :goto_1
    return v3

    .line 4720
    .restart local v2    # "response":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 4721
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "Interrupted Exception in readType1Ef"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4723
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 4738
    .restart local v1    # "fs":I
    .restart local v2    # "response":Landroid/os/Message;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isAnrCapacityFree(Ljava/lang/String;II)Z
    .locals 8
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "anrIndex"    # I

    .prologue
    const/4 v5, 0x0

    .line 2460
    add-int/lit8 v4, p2, -0x1

    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v2, v4, v6

    .line 2461
    .local v2, "pbrRecNum":I
    add-int/lit8 v4, p2, -0x1

    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v0, v4, v6

    .line 2464
    .local v0, "anrRecNum":I
    if-eqz p1, :cond_2

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-lez p3, :cond_2

    .line 2466
    :try_start_0
    const-string v4, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAnrCapacityFree anr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2468
    :cond_0
    const-string v4, "UsimPhoneBookManager"

    const-string v6, "isAnrCapacityFree: mAnrFileSize is empty"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 2487
    :goto_0
    return v4

    .line 2472
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileSize:Ljava/util/HashMap;

    mul-int/lit8 v6, v2, 0x3

    add-int/2addr v6, p3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2473
    .local v3, "size":I
    const-string v4, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAnrCapacityFree size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    add-int/lit8 v4, v0, 0x1

    if-ge v3, v4, :cond_2

    .line 2476
    const-string v4, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAnrCapacityFree: anrRecNum out of size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move v4, v5

    .line 2477
    goto :goto_0

    .line 2479
    .end local v3    # "size":I
    :catch_0
    move-exception v1

    .line 2480
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "UsimPhoneBookManager"

    const-string v6, "isAnrCapacityFree Index out of bounds."

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 2481
    goto :goto_0

    .line 2482
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 2483
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v4, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAnrCapacityFree exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 2484
    goto :goto_0

    .line 2487
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public isSupportAas()Z
    .locals 5

    .prologue
    .line 4669
    const/4 v0, 0x0

    .line 4670
    .local v0, "isSupport":Z
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 4672
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_1

    .line 4673
    const-class v3, Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;

    .line 4675
    .local v1, "mUpbmExt":Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;
    if-eqz v1, :cond_0

    .line 4676
    invoke-interface {v1}, Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;->isSupportAas()Z

    move-result v0

    .line 4684
    .end local v1    # "mUpbmExt":Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportAas: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4686
    return v0

    .line 4678
    .restart local v1    # "mUpbmExt":Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;
    :cond_0
    const-string v3, "mUpbmExt is null."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4681
    .end local v1    # "mUpbmExt":Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;
    :cond_1
    const-string v3, "phone is null."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isSupportSne()Z
    .locals 5

    .prologue
    .line 4690
    const/4 v0, 0x0

    .line 4691
    .local v0, "isSupport":Z
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 4693
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_1

    .line 4694
    const-class v3, Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;

    .line 4696
    .local v1, "mUpbmExt":Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;
    if-eqz v1, :cond_0

    .line 4697
    invoke-interface {v1}, Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;->isSupportSne()Z

    move-result v0

    .line 4705
    .end local v1    # "mUpbmExt":Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportSne: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4707
    return v0

    .line 4699
    .restart local v1    # "mUpbmExt":Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;
    :cond_0
    const-string v3, "mUpbmExt is null."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4702
    .end local v1    # "mUpbmExt":Lcom/mediatek/common/telephony/IUsimPhoneBookManagerExt;
    :cond_1
    const-string v3, "phone is null."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isUsimPhbEfAndNeedReset(I)Z
    .locals 8
    .param p1, "fileId"    # I

    .prologue
    const/16 v7, 0xcb

    const/4 v5, 0x0

    .line 4750
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUsimPhbEfAndNeedReset, fileId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4752
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 4753
    :cond_0
    const-string v4, "isUsimPhbEfAndNeedReset, No PBR files"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v4, v5

    .line 4773
    :goto_0
    return v4

    .line 4757
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 4758
    .local v3, "numRecs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_6

    .line 4759
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 4760
    .local v0, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v2, 0xc0

    .local v2, "j":I
    :goto_2
    if-gt v2, v7, :cond_5

    .line 4761
    const/16 v4, 0xc5

    if-eq v2, v4, :cond_2

    const/16 v4, 0xc9

    if-eq v2, v4, :cond_2

    if-ne v2, v7, :cond_4

    .line 4763
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUsimPhbEfAndNeedReset, not reset EF: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4760
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4765
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p1, v4, :cond_3

    .line 4766
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUsimPhbEfAndNeedReset, return true with EF: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4767
    const/4 v4, 0x1

    goto :goto_0

    .line 4758
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4772
    .end local v0    # "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "j":I
    :cond_6
    const-string v4, "isUsimPhbEfAndNeedReset, return false."

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v4, v5

    .line 4773
    goto :goto_0
.end method

.method public loadEfFilesFromUsim()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 261
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 262
    const-string v4, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPhoneBookRecords.size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mRefreshCache "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    if-eqz v4, :cond_0

    .line 265
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 266
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->refreshCache()V

    .line 268
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v5

    .line 332
    :goto_0
    return-object v4

    .line 271
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 272
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 276
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_3

    .line 277
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait(Z)V

    .line 280
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_4

    .line 281
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait(Z)V

    .line 284
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_5

    .line 285
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 286
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    const/16 v6, 0x6f3a

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v4

    monitor-exit v5

    goto :goto_0

    .line 288
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const/16 v6, 0xca

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 289
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const/16 v6, 0xca

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readRecordSize(I)V

    .line 291
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const/16 v6, 0xc0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 292
    .local v0, "adnEf":I
    if-lez v0, :cond_7

    .line 293
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEFLinearRecordSize(I)[I

    move-result-object v3

    .line 294
    .local v3, "size":[I
    if-eqz v3, :cond_7

    array-length v4, v3

    const/4 v6, 0x3

    if-ne v4, v6, :cond_7

    .line 295
    const/4 v4, 0x2

    aget v4, v3, v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    .line 298
    .end local v3    # "size":[I
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrRecordSize()V

    .line 299
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 302
    .local v2, "numRecs":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v4, v4, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v4, :cond_8

    .line 304
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_9

    .line 305
    const-string v4, "UsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readAdnFileAndWaitForUicc: numRecs = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWaitForUICC(I)V

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 309
    .end local v1    # "i":I
    :cond_8
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 312
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 313
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v5

    goto/16 :goto_0

    .line 315
    :cond_a
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-nez v4, :cond_b

    .line 316
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    .line 318
    :cond_b
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 319
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v2, :cond_e

    .line 320
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportAas()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 321
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAASFileAndWait(I)V

    .line 323
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportSne()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 324
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readSneFileAndWait(I)V

    .line 326
    :cond_d
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrFileAndWait(I)V

    .line 327
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailFileAndWait(I)V

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 329
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readGrpIdsAndWait()V

    .line 331
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public loadPBRFiles()V
    .locals 2

    .prologue
    .line 4077
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4091
    :goto_0
    return-void

    .line 4080
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4083
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v0, :cond_1

    .line 4084
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait(Z)V

    .line 4087
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v0, :cond_2

    .line 4088
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait(Z)V

    .line 4090
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public moveContactFromGroupsToGroups(I[I[I)Z
    .locals 19
    .param p1, "adnIndex"    # I
    .param p2, "fromGrpIdList"    # [I
    .param p3, "toGrpIdList"    # [I

    .prologue
    .line 2214
    const/4 v14, 0x0

    .line 2216
    .local v14, "ret":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v15, :cond_0

    if-lez p1, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    move/from16 v0, p1

    if-le v0, v15, :cond_1

    .line 2217
    :cond_0
    const-string v15, "UsimPhoneBookManager"

    const-string v16, "moveContactFromGroupsToGroups no records or invalid index."

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    const/4 v15, 0x0

    .line 2313
    :goto_0
    return v15

    .line 2221
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 2222
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v17, p1, -0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 2223
    .local v13, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v13, :cond_12

    .line 2226
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v17, 0x7

    aget v5, v15, v17

    .line 2227
    .local v5, "grpCount":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v17, 0x7

    aget v15, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    move-object/from16 v17, v0

    const/16 v18, 0x5

    aget v17, v17, v18

    move/from16 v0, v17

    if-le v15, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v17, 0x5

    aget v9, v15, v17

    .line 2228
    .local v9, "grpMaxCount":I
    :goto_1
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v8

    .line 2230
    .local v8, "grpIds":Ljava/lang/String;
    const-string v17, "UsimPhoneBookManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " moveContactFromGroupsToGroups the adn index is "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, " original grpIds is "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, ", fromGrpIdList: "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    if-nez p2, :cond_3

    const-string v15, "null"

    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, ", toGrpIdList: "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    if-nez p3, :cond_4

    const-string v15, "null"

    :goto_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    new-array v6, v5, [I

    .line 2237
    .local v6, "grpIdIntArray":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    if-ge v10, v5, :cond_5

    .line 2238
    const/4 v15, 0x0

    aput v15, v6, v10

    .line 2237
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 2227
    .end local v6    # "grpIdIntArray":[I
    .end local v8    # "grpIds":Ljava/lang/String;
    .end local v9    # "grpMaxCount":I
    .end local v10    # "i":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/16 v17, 0x7

    aget v9, v15, v17

    goto :goto_1

    .restart local v8    # "grpIds":Ljava/lang/String;
    .restart local v9    # "grpMaxCount":I
    :cond_3
    move-object/from16 v15, p2

    .line 2230
    goto :goto_2

    :cond_4
    move-object/from16 v15, p3

    goto :goto_3

    .line 2242
    .restart local v6    # "grpIdIntArray":[I
    .restart local v10    # "i":I
    :cond_5
    if-eqz v8, :cond_6

    .line 2243
    const-string v15, ","

    invoke-virtual {v8, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2244
    .local v7, "grpIdStrArray":[Ljava/lang/String;
    const/4 v10, 0x0

    :goto_5
    if-ge v10, v9, :cond_6

    .line 2245
    aget-object v15, v7, v10

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    aput v15, v6, v10

    .line 2244
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 2250
    .end local v7    # "grpIdStrArray":[Ljava/lang/String;
    :cond_6
    if-eqz p2, :cond_9

    .line 2251
    const/4 v10, 0x0

    :goto_6
    move-object/from16 v0, p2

    array-length v15, v0

    if-ge v10, v15, :cond_9

    .line 2252
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_7
    if-ge v11, v9, :cond_8

    .line 2253
    aget v15, v6, v11

    aget v17, p2, v10

    move/from16 v0, v17

    if-ne v15, v0, :cond_7

    .line 2254
    const/4 v15, 0x0

    aput v15, v6, v11

    .line 2252
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 2251
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 2261
    .end local v11    # "j":I
    :cond_9
    if-eqz p3, :cond_11

    .line 2262
    const/4 v10, 0x0

    :goto_8
    move-object/from16 v0, p3

    array-length v15, v0

    if-ge v10, v15, :cond_11

    .line 2263
    const/4 v2, 0x0

    .line 2264
    .local v2, "bEmpty":Z
    const/4 v3, 0x0

    .line 2267
    .local v3, "bExist":Z
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_9
    if-ge v12, v9, :cond_a

    .line 2268
    aget v15, v6, v12

    aget v17, p3, v10

    move/from16 v0, v17

    if-ne v15, v0, :cond_c

    .line 2269
    const/4 v3, 0x1

    .line 2274
    :cond_a
    const/4 v15, 0x1

    if-ne v3, v15, :cond_d

    .line 2275
    const-string v15, "UsimPhoneBookManager"

    const-string v17, "moveContactFromGroupsToGroups the adn is already in the group."

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 2267
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 2280
    :cond_d
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_a
    if-ge v11, v9, :cond_f

    .line 2281
    aget v15, v6, v11

    if-eqz v15, :cond_e

    aget v15, v6, v11

    const/16 v17, 0xff

    move/from16 v0, v17

    if-ne v15, v0, :cond_10

    .line 2282
    :cond_e
    const/4 v2, 0x1

    .line 2283
    aget v15, p3, v10

    aput v15, v6, v11

    .line 2288
    :cond_f
    if-nez v2, :cond_b

    .line 2289
    const-string v15, "UsimPhoneBookManager"

    const-string v17, "moveContactFromGroupsToGroups no empty to add."

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    const/4 v15, 0x0

    monitor-exit v16

    goto/16 :goto_0

    .line 2311
    .end local v2    # "bEmpty":Z
    .end local v3    # "bExist":Z
    .end local v5    # "grpCount":I
    .end local v6    # "grpIdIntArray":[I
    .end local v8    # "grpIds":Ljava/lang/String;
    .end local v9    # "grpMaxCount":I
    .end local v10    # "i":I
    .end local v11    # "j":I
    .end local v12    # "k":I
    .end local v13    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 2280
    .restart local v2    # "bEmpty":Z
    .restart local v3    # "bExist":Z
    .restart local v5    # "grpCount":I
    .restart local v6    # "grpIdIntArray":[I
    .restart local v8    # "grpIds":Ljava/lang/String;
    .restart local v9    # "grpMaxCount":I
    .restart local v10    # "i":I
    .restart local v11    # "j":I
    .restart local v12    # "k":I
    .restart local v13    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 2295
    .end local v2    # "bEmpty":Z
    .end local v3    # "bExist":Z
    .end local v11    # "j":I
    .end local v12    # "k":I
    :cond_11
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v17, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    move/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v15, v0, v6, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2298
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2303
    :goto_b
    :try_start_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v15, :cond_12

    .line 2304
    const/4 v14, 0x1

    .line 2305
    add-int/lit8 v15, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v15, v1, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2306
    const-string v15, "UsimPhoneBookManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " updateContactToGroups the adn index is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 2311
    .end local v5    # "grpCount":I
    .end local v6    # "grpIdIntArray":[I
    .end local v8    # "grpIds":Ljava/lang/String;
    .end local v9    # "grpMaxCount":I
    .end local v10    # "i":I
    :cond_12
    monitor-exit v16

    move v15, v14

    .line 2313
    goto/16 :goto_0

    .line 2299
    .restart local v5    # "grpCount":I
    .restart local v6    # "grpIdIntArray":[I
    .restart local v8    # "grpIds":Ljava/lang/String;
    .restart local v9    # "grpMaxCount":I
    .restart local v10    # "i":I
    :catch_0
    move-exception v4

    .line 2300
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string v15, "UsimPhoneBookManager"

    const-string v17, "Interrupted Exception in updateContactToGroups"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_b
.end method

.method parseType1EmailFile(I)V
    .locals 9
    .param p1, "numRecs"    # I

    .prologue
    .line 903
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    .line 904
    const/4 v4, 0x0

    .line 906
    .local v4, "emailRec":[B
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v7, :cond_1

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 910
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, p1, :cond_0

    .line 912
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [B

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    aget-byte v1, v4, v7

    .line 919
    .local v1, "adnRecNum":I
    const/4 v7, -0x1

    if-ne v1, v7, :cond_3

    .line 910
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 913
    .end local v1    # "adnRecNum":I
    :catch_0
    move-exception v2

    .line 914
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "UsimPhoneBookManager"

    const-string v8, "Error: Improper ICC card: No email record for ADN, continuing"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 923
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "adnRecNum":I
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v3

    .line 925
    .local v3, "email":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 930
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v8, v1, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 931
    .local v6, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v6, :cond_4

    .line 932
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 934
    .restart local v6    # "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v8, v1, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public readEFLinearRecordSize(I)[I
    .locals 6
    .param p1, "fileId"    # I

    .prologue
    .line 4565
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readEFLinearRecordSize fileid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4566
    const/16 v3, 0x3e8

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4567
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 4568
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4569
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v3, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4571
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4575
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move-object v2, v3

    .line 4576
    .local v2, "recordSize":[I
    :goto_1
    if-eqz v2, :cond_0

    .line 4577
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readEFLinearRecordSize fileid"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",len:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",total:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    aget v5, v2, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",count:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x2

    aget v5, v2, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4581
    :cond_0
    monitor-exit v4

    return-object v2

    .line 4572
    .end local v2    # "recordSize":[I
    :catch_0
    move-exception v0

    .line 4573
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "UsimPhoneBookManager"

    const-string v5, "Interrupted Exception in readRecordSize"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4582
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 4575
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method readRecordSize(I)V
    .locals 4
    .param p1, "fileId"    # I

    .prologue
    .line 960
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 961
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x12

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 963
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 967
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 968
    return-void

    .line 964
    :catch_0
    move-exception v0

    .line 965
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "UsimPhoneBookManager"

    const-string v3, "Interrupted Exception in readRecordSize"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 967
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public declared-synchronized removeContactFromGroup(II)Z
    .locals 13
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    .prologue
    .line 2107
    monitor-enter p0

    const/4 v8, 0x0

    .line 2108
    .local v8, "ret":Z
    :try_start_0
    const-string v9, "UsimPhoneBookManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UsimPhoneBookManager removeContactFromGroup adnIndex is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to grp "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    if-lez p1, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le p1, v9, :cond_1

    .line 2111
    :cond_0
    const-string v9, "UsimPhoneBookManager"

    const-string v10, "UsimPhoneBookManager removeContactFromGroup no records or invalid index."

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2112
    const/4 v9, 0x0

    .line 2162
    :goto_0
    monitor-exit p0

    return v9

    .line 2114
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2117
    :try_start_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v11, p1, -0x1

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2124
    .local v7, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v7, :cond_5

    .line 2125
    :try_start_3
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v4

    .line 2126
    .local v4, "grpList":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 2127
    const-string v9, "UsimPhoneBookManager"

    const-string v11, " the adn is not in any group. "

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    const/4 v9, 0x0

    monitor-exit v10

    goto :goto_0

    .line 2161
    .end local v4    # "grpList":Ljava/lang/String;
    .end local v7    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2107
    :catchall_1
    move-exception v9

    monitor-exit p0

    throw v9

    .line 2118
    :catch_0
    move-exception v1

    .line 2119
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_5
    const-string v9, "UsimPhoneBookManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UsimPhoneBookManager removeContactFromGroup: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "index is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, p1, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    const/4 v9, 0x0

    monitor-exit v10

    goto :goto_0

    .line 2130
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v4    # "grpList":Ljava/lang/String;
    .restart local v7    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    const-string v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2131
    .local v3, "grpIds":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 2132
    .local v0, "bExist":Z
    const/4 v6, -0x1

    .line 2133
    .local v6, "nOrder":I
    array-length v9, v3

    new-array v2, v9, [I

    .line 2134
    .local v2, "grpIdArray":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v9, v3

    if-ge v5, v9, :cond_4

    .line 2135
    aget-object v9, v3, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v2, v5

    .line 2136
    aget v9, v2, v5

    if-ne p2, v9, :cond_3

    .line 2137
    const/4 v0, 0x1

    .line 2138
    move v6, v5

    .line 2139
    const-string v9, "UsimPhoneBookManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " removeContactFromGroup the adn is in the group. i is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2143
    :cond_4
    if-eqz v0, :cond_6

    if-ltz v6, :cond_6

    .line 2144
    const/4 v9, 0x0

    aput v9, v2, v6

    .line 2145
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0xa

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v9, p1, v2, v11}, Lcom/android/internal/telephony/CommandsInterface;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2148
    :try_start_6
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2152
    :goto_2
    :try_start_7
    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v9, :cond_5

    .line 2153
    const/4 v8, 0x1

    .line 2154
    add-int/lit8 v9, p1, -0x1

    invoke-direct {p0, v9, p1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2155
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 2161
    .end local v0    # "bExist":Z
    .end local v2    # "grpIdArray":[I
    .end local v3    # "grpIds":[Ljava/lang/String;
    .end local v4    # "grpList":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "nOrder":I
    :cond_5
    :goto_3
    monitor-exit v10

    move v9, v8

    .line 2162
    goto/16 :goto_0

    .line 2149
    .restart local v0    # "bExist":Z
    .restart local v2    # "grpIdArray":[I
    .restart local v3    # "grpIds":[Ljava/lang/String;
    .restart local v4    # "grpList":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v6    # "nOrder":I
    :catch_1
    move-exception v1

    .line 2150
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v9, "UsimPhoneBookManager"

    const-string v11, "Interrupted Exception in removeContactFromGroup"

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2158
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_6
    const-string v9, "UsimPhoneBookManager"

    const-string v11, " removeContactFromGroup the adn is not in the group. "

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3
.end method

.method public removeContactGroup(I)Z
    .locals 14
    .param p1, "adnIndex"    # I

    .prologue
    const/4 v9, 0x0

    .line 2322
    const/4 v7, 0x0

    .line 2323
    .local v7, "ret":Z
    const-string v10, "UsimPhoneBookManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UsimPhoneBookManager removeContactsGroup adnIndex is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    move v9, v7

    .line 2376
    :goto_0
    return v9

    .line 2327
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2330
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v12, p1, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2337
    .local v6, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-nez v6, :cond_2

    .line 2338
    :try_start_1
    monitor-exit v10

    move v9, v7

    goto :goto_0

    .line 2331
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v0

    .line 2332
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v11, "UsimPhoneBookManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UsimPhoneBookManager removeContactGroup: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "index is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, p1, -0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    monitor-exit v10

    goto :goto_0

    .line 2377
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 2340
    .restart local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    :try_start_2
    const-string v9, "UsimPhoneBookManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UsimPhoneBookManager removeContactsGroup rec is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v3

    .line 2342
    .local v3, "grpList":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 2343
    monitor-exit v10

    move v9, v7

    goto :goto_0

    .line 2345
    :cond_3
    const-string v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2346
    .local v2, "grpIds":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 2347
    .local v4, "hasGroup":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v9, v2

    if-ge v5, v9, :cond_4

    .line 2348
    aget-object v9, v2, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2349
    .local v8, "value":I
    if-lez v8, :cond_5

    const/16 v9, 0xff

    if-ge v8, v9, :cond_5

    .line 2350
    const/4 v4, 0x1

    .line 2354
    .end local v8    # "value":I
    :cond_4
    if-eqz v4, :cond_7

    .line 2355
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x0

    new-array v11, v11, [I

    const/16 v12, 0xa

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-interface {v9, p1, v11, v12}, Lcom/android/internal/telephony/CommandsInterface;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2359
    :try_start_3
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2364
    :goto_2
    :try_start_4
    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v9, :cond_7

    .line 2365
    const/4 v7, 0x1

    .line 2366
    array-length v9, v2

    new-array v1, v9, [I

    .line 2367
    .local v1, "grpIdArray":[I
    const/4 v5, 0x0

    :goto_3
    array-length v9, v2

    if-ge v5, v9, :cond_6

    .line 2368
    const/4 v9, 0x0

    aput v9, v1, v5

    .line 2367
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2347
    .end local v1    # "grpIdArray":[I
    .restart local v8    # "value":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2360
    .end local v8    # "value":I
    :catch_1
    move-exception v0

    .line 2361
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v9, "UsimPhoneBookManager"

    const-string v11, "Interrupted Exception in removeContactGroup"

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2370
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "grpIdArray":[I
    :cond_6
    add-int/lit8 v9, p1, -0x1

    invoke-direct {p0, v9, p1, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2371
    const-string v9, "UsimPhoneBookManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " removeContactGroup the adn index is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 2376
    .end local v1    # "grpIdArray":[I
    :cond_7
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v9, v7

    goto/16 :goto_0
.end method

.method public removeUsimAasById(II)Z
    .locals 16
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I

    .prologue
    .line 3786
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "removeUsimAasById by id "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, ",pbrIndex "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3787
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-nez v5, :cond_3

    .line 3788
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3789
    const-string v5, "UsimPhoneBookManager"

    const-string v14, "No PBR files"

    invoke-static {v5, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3790
    const/4 v5, 0x1

    .line 3846
    :goto_0
    return v5

    .line 3792
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 3793
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 3794
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v5, :cond_1

    .line 3795
    const/4 v5, 0x1

    monitor-exit v14

    goto :goto_0

    .line 3803
    :catchall_0
    move-exception v5

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 3797
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v13

    .line 3799
    .local v13, "numRecs":I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    .line 3800
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v13, :cond_2

    .line 3801
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAASFileAndWait(I)V

    .line 3800
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3803
    :cond_2
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3805
    .end local v10    # "i":I
    .end local v13    # "numRecs":I
    :cond_3
    move/from16 v3, p1

    .line 3806
    .local v3, "aasIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 3807
    .local v9, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v9, :cond_4

    const/16 v5, 0xc7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 3808
    :cond_4
    const-string v5, "UsimPhoneBookManager"

    const-string v14, "removeUsimAasById-PBR have no AAS EF record"

    invoke-static {v5, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3809
    const/4 v5, 0x0

    goto :goto_0

    .line 3811
    :cond_5
    const/16 v5, 0xc7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3812
    .local v2, "efid":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "removeUsimAasById result,efid:"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3814
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 3815
    .local v1, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v1, :cond_a

    .line 3817
    const/16 v5, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 3818
    .local v6, "msg":Landroid/os/Message;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasMaxNameLen()I

    move-result v11

    .line 3819
    .local v11, "len":I
    new-array v4, v11, [B

    .line 3820
    .local v4, "aasString":[B
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_2
    if-ge v10, v11, :cond_6

    .line 3821
    const/4 v5, -0x1

    aput-byte v5, v4, v10

    .line 3820
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 3823
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 3824
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3827
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3831
    :goto_3
    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3832
    iget-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 3833
    .local v7, "ar":Landroid/os/AsyncResult;
    if-eqz v7, :cond_7

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_9

    .line 3834
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 3835
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v12, :cond_8

    .line 3836
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "remove aas done "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3837
    add-int/lit8 v5, v3, -0x1

    const/4 v14, 0x0

    invoke-virtual {v12, v5, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3839
    :cond_8
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 3828
    .end local v7    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    .line 3829
    .local v8, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v5, "UsimPhoneBookManager"

    const-string v15, "Interrupted Exception in removesimAasById"

    invoke-static {v5, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3831
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v5

    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5

    .line 3841
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    :cond_9
    const-string v5, "UsimPhoneBookManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "removeUsimAasById exception "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3842
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 3845
    .end local v4    # "aasString":[B
    .end local v6    # "msg":Landroid/os/Message;
    .end local v7    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "i":I
    .end local v11    # "len":I
    :cond_a
    const-string v5, "UsimPhoneBookManager"

    const-string v14, "removeUsimAasById-IccFileHandler is null"

    invoke-static {v5, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3846
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public declared-synchronized removeUsimGroupById(I)Z
    .locals 8
    .param p1, "nGasId"    # I

    .prologue
    .line 1880
    monitor-enter p0

    const/4 v1, 0x0

    .line 1881
    .local v1, "ret":Z
    :try_start_0
    const-string v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UsimPhoneBookManager removeUsimGroupById nGasId is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1884
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le p1, v3, :cond_2

    .line 1885
    :cond_0
    const-string v3, "UsimPhoneBookManager"

    const-string v5, "UsimPhoneBookManager removeUsimGroupById fail "

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    :cond_1
    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1908
    :try_start_2
    const-string v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UsimPhoneBookManager removeUsimGroupById result is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1909
    monitor-exit p0

    return v1

    .line 1887
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/uicc/UsimGroup;

    .line 1888
    .local v2, "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    const-string v3, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " removeUsimGroupById index is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getRecordIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1890
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x11

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v3, v5, v6, p1, v7}, Lcom/android/internal/telephony/CommandsInterface;->deleteUPBEntry(IIILandroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1893
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1901
    :goto_1
    :try_start_5
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v3, :cond_1

    .line 1902
    const/4 v1, 0x1

    .line 1903
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->setAlphaTag(Ljava/lang/String;)V

    .line 1904
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v3, v5, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1907
    .end local v2    # "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1880
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1894
    .restart local v2    # "uGas":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :catch_0
    move-exception v0

    .line 1895
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_7
    const-string v3, "UsimPhoneBookManager"

    const-string v5, "Interrupted Exception in removeUsimGroupById"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1898
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    const-string v3, "UsimPhoneBookManager"

    const-string v5, "UsimPhoneBookManager removeUsimGroupById fail: this gas doesn\'t exist "

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 248
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecords:Ljava/util/ArrayList;

    .line 249
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    .line 250
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 251
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 252
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 254
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFileRecords:Ljava/util/ArrayList;

    .line 255
    const-string v0, "UsimPhoneBookManager"

    const-string v1, "UsimPhoneBookManager reset finished. "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method

.method public updateAdnAas(II)Z
    .locals 9
    .param p1, "adnIndex"    # I
    .param p2, "aasIndex"    # I

    .prologue
    .line 4018
    add-int/lit8 v6, p1, -0x1

    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v4, v6, v7

    .line 4019
    .local v4, "pbrRecNum":I
    add-int/lit8 v6, p1, -0x1

    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v3, v6, v7

    .line 4023
    .local v3, "index":I
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4030
    .local v5, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v5, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAasIndex(I)V

    .line 4032
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v6, 0x3

    if-ge v2, v6, :cond_0

    .line 4033
    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 4034
    .local v0, "anr":Ljava/lang/String;
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAnrByAdnIndex(Ljava/lang/String;II)V

    .line 4032
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4024
    .end local v0    # "anr":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v5    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v1

    .line 4025
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UsimPhoneBookManager updateADNAAS: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "index is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, p1, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4027
    const/4 v6, 0x0

    .line 4037
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_1
    return v6

    .restart local v2    # "i":I
    .restart local v5    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_0
    const/4 v6, 0x1

    goto :goto_1
.end method

.method public updateAnrByAdnIndex(Ljava/lang/String;II)V
    .locals 18
    .param p1, "anr"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I
    .param p3, "anrIndex"    # I

    .prologue
    .line 2493
    add-int/lit8 v3, p2, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v15, v3, v5

    .line 2494
    .local v15, "pbrRecNum":I
    add-int/lit8 v3, p2, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v10, v3, v5

    .line 2495
    .local v10, "anrRecNum":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_1

    .line 2552
    :cond_0
    :goto_0
    return-void

    .line 2498
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileIds:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 2500
    .local v13, "fileIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2501
    :cond_2
    const-string v3, "UsimPhoneBookManager"

    const-string v5, "UsimPhoneBookManager updateAnrByAdnIndex: No anr tag in pbr record 0"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2504
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2505
    :cond_4
    const-string v3, "UsimPhoneBookManager"

    const-string v5, "UsimPhoneBookManager updateAnrByAdnIndex: mPhoneBookRecords is empty"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2508
    :cond_5
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, p3

    if-gt v3, v0, :cond_6

    .line 2509
    const-string v3, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAnrByAdnIndex anr file size: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2513
    :cond_6
    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2514
    .local v4, "efid":I
    const-string v3, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UsimPhoneBookManager updateAnrByAdnIndex recNum: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " EFANR id is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    const/4 v12, 0x0

    .line 2517
    .local v12, "efrecord":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 2518
    .local v17, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    if-ne v3, v4, :cond_7

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-ne v3, v15, :cond_7

    .line 2519
    move-object/from16 v12, v17

    .line 2520
    move/from16 v0, p3

    iput v0, v12, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mAnrIndex:I

    .line 2521
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAnrByAdnIndex anrIndex:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v12, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mAnrIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2526
    .end local v17    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_8
    if-nez v12, :cond_9

    .line 2527
    const-string v3, "updateAnrByAdnIndex no efrecord "

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2531
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAnrByAdnIndex efrecord "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2532
    iget v3, v12, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    const/16 v5, 0xa9

    if-ne v3, v5, :cond_a

    .line 2533
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateType2Anr(Ljava/lang/String;ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;)V

    goto/16 :goto_0

    .line 2539
    :cond_a
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2546
    .local v16, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAasIndex()I

    move-result v9

    .line 2547
    .local v9, "aas":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildAnrRecord(Ljava/lang/String;II)[B

    move-result-object v6

    .line 2548
    .local v6, "data":[B
    if-eqz v6, :cond_0

    .line 2549
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    add-int/lit8 v5, v10, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2540
    .end local v6    # "data":[B
    .end local v9    # "aas":I
    .end local v16    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v11

    .line 2541
    .local v11, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UsimPhoneBookManager updateAnrByAdnIndex: mPhoneBookRecords IndexOutOfBoundsException mPhoneBookRecords.size() is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "index is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, p2, -0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public updateContactToGroups(I[I)Z
    .locals 11
    .param p1, "adnIndex"    # I
    .param p2, "grpIdList"    # [I

    .prologue
    const/4 v6, 0x0

    .line 2166
    const/4 v5, 0x0

    .line 2168
    .local v5, "ret":Z
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    if-lez p1, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt p1, v7, :cond_0

    if-nez p2, :cond_1

    .line 2169
    :cond_0
    const-string v7, "UsimPhoneBookManager"

    const-string v8, "UsimPhoneBookManager updateContactToGroups no records or invalid index."

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    :goto_0
    return v6

    .line 2173
    :cond_1
    const-string v7, "UsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UsimPhoneBookManager updateContactToGroups grpIdList is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to grp list count "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2177
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 2178
    .local v4, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v4, :cond_5

    .line 2179
    const-string v7, "UsimPhoneBookManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " addContactToGroup the adn index is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " old grpList is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpbCap:[I

    const/4 v9, 0x7

    aget v1, v7, v9

    .line 2182
    .local v1, "grpCount":I
    array-length v7, p2

    if-le v7, v1, :cond_2

    .line 2183
    const-string v7, "UsimPhoneBookManager"

    const-string v9, "updateContactToGroups length of grpIdList > grpCount."

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    monitor-exit v8

    goto :goto_0

    .line 2208
    .end local v1    # "grpCount":I
    .end local v4    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 2187
    .restart local v1    # "grpCount":I
    .restart local v4    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    :try_start_1
    new-array v2, v1, [I

    .line 2188
    .local v2, "grpIdArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 2189
    array-length v7, p2

    if-ge v3, v7, :cond_3

    aget v7, p2, v3

    :goto_2
    aput v7, v2, v3

    .line 2190
    const-string v7, "UsimPhoneBookManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateContactToGroups i:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", grpIdArray["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v2, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v7, v6

    .line 2189
    goto :goto_2

    .line 2193
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0xa

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, p1, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->writeUPBGrpEntry(I[ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2196
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2200
    :goto_3
    :try_start_3
    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v6, :cond_5

    .line 2201
    const/4 v5, 0x1

    .line 2202
    add-int/lit8 v6, p1, -0x1

    invoke-direct {p0, v6, p1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrpByIndex(II[I)V

    .line 2203
    const-string v6, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " updateContactToGroups the adn index is "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 2208
    .end local v1    # "grpCount":I
    .end local v2    # "grpIdArray":[I
    .end local v3    # "i":I
    :cond_5
    monitor-exit v8

    move v6, v5

    .line 2209
    goto/16 :goto_0

    .line 2197
    .restart local v1    # "grpCount":I
    .restart local v2    # "grpIdArray":[I
    .restart local v3    # "i":I
    :catch_0
    move-exception v0

    .line 2198
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v6, "UsimPhoneBookManager"

    const-string v7, "Interrupted Exception in updateContactToGroups"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method public updateEmailsByAdnIndex([Ljava/lang/String;I)I
    .locals 28
    .param p1, "emails"    # [Ljava/lang/String;
    .param p2, "adnIndex"    # I

    .prologue
    .line 2747
    add-int/lit8 v3, p2, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v5, v3, v4

    .line 2748
    .local v5, "pbrRecNum":I
    add-int/lit8 v3, p2, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v25, v3, v4

    .line 2750
    .local v25, "nIapRecNum":I
    const/16 v26, -0x3

    .line 2751
    .local v26, "recNum":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_0

    .line 2752
    const/4 v3, 0x0

    .line 2879
    :goto_0
    return v3

    .line 2754
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map;

    .line 2755
    .local v22, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v22, :cond_1

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2756
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 2758
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2759
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 2761
    :cond_4
    const/16 v3, 0xca

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2762
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "UsimPhoneBookManager updateEmailsByAdnIndex: No email tag in pbr record 0"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    const/4 v3, 0x0

    goto :goto_0

    .line 2767
    :cond_5
    const/16 v3, 0xca

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2768
    .local v9, "efid":I
    const-string v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UsimPhoneBookManager updateEmailsByAdnIndex: pbrrecNum is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " EFEMAIL id is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2771
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    if-eqz v3, :cond_d

    .line 2788
    const/4 v7, 0x0

    .line 2790
    .local v7, "iapRec":[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/ArrayList;

    .line 2791
    .local v24, "iapFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 2792
    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "iapRec":[B
    check-cast v7, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2801
    .restart local v7    # "iapRec":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v3, v3, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsSameEmailEfid:Z

    if-eqz v3, :cond_7

    .line 2802
    add-int/lit8 v6, v25, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getRecNumForSameEmailEfid([Ljava/lang/String;II[BI)I

    move-result v26

    .line 2806
    :goto_1
    const-string v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UsimPhoneBookManager updateEmailsByAdnIndex: Email recNum is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    const/4 v3, -0x2

    move/from16 v0, v26

    if-ne v3, v0, :cond_8

    .line 2808
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 2794
    :cond_6
    :try_start_1
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "Warning: IAP size is 0"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2795
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2797
    .end local v7    # "iapRec":[B
    .end local v24    # "iapFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catch_0
    move-exception v18

    .line 2798
    .local v18, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "Index out of bounds."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2799
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2804
    .end local v18    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v7    # "iapRec":[B
    .restart local v24    # "iapFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_7
    add-int/lit8 v6, v25, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getRecNum([Ljava/lang/String;II[BI)I

    move-result v26

    goto :goto_1

    .line 2811
    :cond_8
    const-string v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateEmailsByAdnIndex: found Email recNum is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    move/from16 v0, v26

    int-to-byte v4, v0

    aput-byte v4, v7, v3

    .line 2814
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2815
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2822
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    add-int/lit8 v10, v25, 0x1

    const/4 v12, 0x0

    const/16 v3, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    move-object v11, v7

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 2826
    const/16 v3, 0xff

    move/from16 v0, v26

    if-eq v0, v3, :cond_c

    const/4 v3, -0x1

    move/from16 v0, v26

    if-eq v0, v3, :cond_c

    .line 2827
    const/16 v19, 0x0

    .line 2828
    .local v19, "eMailAd":Ljava/lang/String;
    if-eqz p1, :cond_c

    .line 2830
    const/4 v3, 0x0

    :try_start_2
    aget-object v19, p1, v3
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2834
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    if-gtz v3, :cond_a

    .line 2835
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2818
    .end local v19    # "eMailAd":Ljava/lang/String;
    :cond_9
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "updateEmailsByAdnIndex Error: No IAP file!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2819
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2831
    .restart local v19    # "eMailAd":Ljava/lang/String;
    :catch_1
    move-exception v18

    .line 2832
    .restart local v18    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "Error: updateEmailsByAdnIndex no email address, continuing"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2837
    .end local v18    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildEmailRecord(Ljava/lang/String;II)[B

    move-result-object v11

    .line 2839
    .local v11, "eMailRecData":[B
    if-nez v11, :cond_b

    .line 2840
    const/4 v3, -0x2

    goto/16 :goto_0

    .line 2844
    :cond_b
    const/16 v3, 0xca

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2845
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v12, 0x0

    const/16 v3, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    move/from16 v10, v26

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 2879
    .end local v7    # "iapRec":[B
    .end local v11    # "eMailRecData":[B
    .end local v19    # "eMailAd":Ljava/lang/String;
    .end local v24    # "iapFile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_c
    :goto_3
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2851
    :cond_d
    const/16 v20, 0x0

    .line 2852
    .local v20, "efrecord":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 2853
    .local v27, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, v27

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    if-ne v3, v9, :cond_e

    move-object/from16 v0, v27

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-ne v3, v5, :cond_e

    .line 2854
    move-object/from16 v20, v27

    .line 2858
    .end local v27    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateEmailsByAdnIndex record: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2859
    if-nez v20, :cond_10

    .line 2860
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2862
    :cond_10
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    const/16 v4, 0xa9

    if-ne v3, v4, :cond_11

    .line 2863
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2867
    :cond_11
    if-eqz p1, :cond_12

    move-object/from16 v0, p1

    array-length v3, v0

    if-gtz v3, :cond_13

    :cond_12
    const/16 v21, 0x0

    .line 2868
    .local v21, "email":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    if-gtz v3, :cond_14

    .line 2869
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2867
    .end local v21    # "email":Ljava/lang/String;
    :cond_13
    const/4 v3, 0x0

    aget-object v21, p1, v3

    goto :goto_4

    .line 2871
    .restart local v21    # "email":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildEmailRecord(Ljava/lang/String;II)[B

    move-result-object v15

    .line 2872
    .local v15, "data":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateEmailsByAdnIndex build type1 email record:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v15}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2874
    if-eqz v15, :cond_c

    .line 2875
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    add-int/lit8 v14, v25, 0x1

    const/16 v16, 0x0

    const/16 v3, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    move v13, v9

    invoke-virtual/range {v12 .. v17}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_3
.end method

.method public updateSneByAdnIndex(Ljava/lang/String;I)V
    .locals 17
    .param p1, "sne"    # Ljava/lang/String;
    .param p2, "adnIndex"    # I

    .prologue
    .line 4222
    const-string v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimPhoneBookManager updateSneByAdnIndex sne is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",adnIndex "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4224
    add-int/lit8 v1, p2, -0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    div-int v13, v1, v2

    .line 4225
    .local v13, "pbrRecNum":I
    add-int/lit8 v1, p2, -0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnFileSize:I

    rem-int v12, v1, v2

    .line 4226
    .local v12, "nIapRecNum":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 4273
    :cond_0
    :goto_0
    return-void

    .line 4229
    :cond_1
    const/16 v1, 0x19

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 4231
    .local v7, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 4232
    .local v10, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v10, :cond_2

    const/16 v1, 0xc3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4233
    :cond_2
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "updateSneByAdnIndex: No SNE tag in pbr record 0"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4236
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4239
    const/16 v1, 0xc3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 4240
    .local v9, "efid":I
    const-string v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSneByAdnIndex: EFSNE id is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4241
    const/4 v3, 0x0

    .line 4242
    .local v3, "efIndex":I
    const/4 v15, 0x0

    .line 4243
    .local v15, "sneEf":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mSneFileids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;

    .line 4244
    .local v14, "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    iget v1, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mPbrRecord:I

    if-ne v1, v13, :cond_4

    .line 4245
    add-int/lit8 v3, v3, 0x1

    .line 4246
    iget v1, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mEfTag:I

    if-ne v1, v9, :cond_4

    .line 4247
    move-object v15, v14

    .line 4252
    .end local v14    # "record":Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;
    :cond_5
    const-string v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSneByAdnIndex: efIndex is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 4254
    if-eqz p1, :cond_6

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    .line 4256
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    move/from16 v0, p2

    invoke-interface {v1, v2, v3, v0, v7}, Lcom/android/internal/telephony/CommandsInterface;->deleteUPBEntry(IIILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4263
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4267
    :goto_2
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSneByAdnIndex update IAP? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4268
    if-eqz v15, :cond_7

    iget v1, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfRecord;->mType:I

    const/16 v2, 0xa9

    if-ne v1, v2, :cond_7

    .line 4269
    const/16 v1, 0xc1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(IIZ)V

    .line 4271
    :cond_7
    monitor-exit v16

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 4258
    :cond_8
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4260
    .local v5, "temp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    const/4 v6, 0x0

    move/from16 v4, p2

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 4264
    .end local v5    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 4265
    .local v8, "e":Ljava/lang/InterruptedException;
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "Interrupted Exception in updateSneByAdnIndex"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public updateUsimAas(IILjava/lang/String;)Z
    .locals 20
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I
    .param p3, "aasName"    # Ljava/lang/String;

    .prologue
    .line 3930
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimAas index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",pbrIndex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",aasName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3931
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    if-nez v2, :cond_3

    .line 3932
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3933
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "updateUsimAas No PBR "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3934
    const/4 v2, 0x0

    .line 4006
    :goto_0
    return v2

    .line 3936
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3937
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadPBRFiles()V

    .line 3938
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 3939
    const-string v2, "UsimPhoneBookManager"

    const-string v4, "updateUsimAas No PBR files"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3940
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 3947
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3942
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v17

    .line 3943
    .local v17, "numRecs":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    .line 3944
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v12, v0, :cond_2

    .line 3945
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAASFileAndWait(I)V

    .line 3944
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 3947
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3949
    .end local v12    # "i":I
    .end local v17    # "numRecs":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3950
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimAas not found pbr index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3951
    const/4 v2, 0x0

    goto :goto_0

    .line 3953
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 3954
    .local v16, "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v16, :cond_5

    .line 3955
    const-string v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no aas for pbr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3956
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3958
    :cond_5
    if-lez p1, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p1

    if-le v0, v2, :cond_7

    .line 3959
    :cond_6
    const-string v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUsimAas not found aas index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3960
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3962
    :cond_7
    add-int/lit8 v2, p1, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3963
    .local v9, "aas":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimAas old aas "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3967
    if-eqz p3, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    .line 3969
    :cond_8
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->removeUsimAasById(II)Z

    move-result v2

    goto/16 :goto_0

    .line 3972
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasMaxNameLen()I

    move-result v14

    .line 3973
    .local v14, "limit":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v13

    .line 3974
    .local v13, "len":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimAas aas limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3975
    if-le v13, v14, :cond_a

    .line 3976
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3978
    :cond_a
    const/16 v18, 0x0

    .line 3979
    .local v18, "offset":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_2
    move/from16 v0, p2

    if-ge v12, v0, :cond_c

    .line 3980
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 3981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int v18, v18, v2

    .line 3979
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 3984
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimAas offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 3985
    add-int v5, p1, v18

    .line 3986
    .local v5, "aasIndex":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3987
    .local v6, "temp":Ljava/lang/String;
    const/16 v2, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 3988
    .local v8, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3989
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3991
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3995
    :goto_3
    :try_start_4
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3996
    iget-object v10, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 3997
    .local v10, "ar":Landroid/os/AsyncResult;
    if-eqz v10, :cond_d

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_f

    .line 3998
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAasForAnrRec:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 3999
    .local v15, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v15, :cond_e

    .line 4000
    add-int/lit8 v2, p1, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4001
    const-string v2, "updateUsimAas update mAasForAnrRec done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 4003
    :cond_e
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 3992
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v11

    .line 3993
    .local v11, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "Interrupted Exception in updateUsimAas"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3995
    .end local v11    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v2

    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .line 4005
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    :cond_f
    const-string v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUsimAas exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4006
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public declared-synchronized updateUsimGroup(ILjava/lang/String;)I
    .locals 11
    .param p1, "nGasId"    # I
    .param p2, "grpName"    # Ljava/lang/String;

    .prologue
    .line 1996
    monitor-enter p0

    const/4 v8, -0x1

    .line 1997
    .local v8, "ret":I
    :try_start_0
    const-string v0, "UsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsimPhoneBookManager updateUsimGroup nGasId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2000
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    .line 2002
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 2003
    :cond_0
    const-string v0, "UsimPhoneBookManager"

    const-string v1, "UsimPhoneBookManager updateUsimGroup fail "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I

    if-nez v0, :cond_4

    .line 2015
    move v8, p1

    .line 2016
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasForGrp:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/internal/telephony/uicc/UsimGroup;

    .line 2017
    .local v9, "uGasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    if-eqz v9, :cond_3

    .line 2018
    const-string v0, "UsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUsimGroup index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->getRecordIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    invoke-virtual {v9, p2}, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->setAlphaTag(Ljava/lang/String;)V

    .line 2026
    .end local v9    # "uGasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :goto_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2027
    monitor-exit p0

    return v8

    .line 2004
    :cond_2
    if-eqz p2, :cond_1

    .line 2005
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->encodeToUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2006
    .local v4, "temp":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move v3, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2009
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2010
    :catch_0
    move-exception v7

    .line 2011
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v0, "UsimPhoneBookManager"

    const-string v1, "Interrupted Exception in updateUsimGroup"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2026
    .end local v4    # "temp":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1996
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2021
    .restart local v9    # "uGasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_3
    :try_start_6
    const-string v0, "UsimPhoneBookManager"

    const-string v1, "updateUsimGroup the entry doesn\'t exist "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2024
    .end local v9    # "uGasEntry":Lcom/mediatek/internal/telephony/uicc/UsimGroup;
    :cond_4
    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mResult:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public updateUsimPhonebookRecordsList(ILcom/android/internal/telephony/uicc/AdnRecord;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;

    .prologue
    .line 2952
    const-string v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimPhonebookRecordsList update the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "th record."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 2954
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 2955
    .local v0, "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2956
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->setGrpIds(Ljava/lang/String;)V

    .line 2958
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2960
    .end local v0    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_1
    return-void
.end method
