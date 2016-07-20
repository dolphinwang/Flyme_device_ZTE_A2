.class public Lcom/android/fingerprint/GoodixFingerPrintManager;
.super Ljava/lang/Object;
.source "GoodixFingerPrintManager.java"

# interfaces
.implements Lcom/android/fingerprint/FingerprintInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fingerprint/GoodixFingerPrintManager$EventType;
    }
.end annotation


# static fields
.field private static final FINGER_PRINT_UNLOCK_VALUE:Ljava/lang/String; = "keyguard"

.field private static final MSG_DOWN:I = 0x64

.field private static final MSG_ENROLL_FAILED:I = 0x98

.field private static final MSG_ENROLL_FINISHED:I = 0x97

.field private static final MSG_ENROLL_PROGRESS:I = 0x96

.field private static final MSG_IMAGE:I = 0x65

.field private static final MSG_IMAGE_ERROR:I = 0x67

.field private static final MSG_VERIFY_CANCEL:I = 0xcb

.field private static final MSG_VERIFY_FAILED:I = 0xc9

.field private static final MSG_VERIFY_SUCCESS:I = 0xc8

.field private static final MSG_VERIFY_TIMEOUT:I = 0xca

.field private static final MSG_WAIT_DOWN:I = 0x66

.field private static final STATE_ENROLL:I = 0x1

.field private static final STATE_VERIFY:I = 0x2

.field public static final TAG:Ljava/lang/String; = "GoodixFingerPrintManager"

.field private static mUserData:I


# instance fields
.field private mAlipayTimer:Ljava/util/Timer;

.field private mCaptureCallback:Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;

.field private mEnrollCallback:Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;

.field private mFpId:I

.field mHandler:Landroid/os/Handler;

.field private mIdentifyCallback:Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;

.field private mIdentifyListener:LIdentifyListener;

.field private mIsSaveEnroll:Z

.field private mIsSetServiceReceiver:Z

.field private mService:Lcom/android/fingerprint/IGoodixFingerPrintService;

.field private mServiceReceiver:Lcom/android/fingerprint/IGoodixFingerPrintServiceReceiver;

.field private mState:I

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/fingerprint/IGoodixFingerPrintService;)V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tThe import com.alipay cannot be resolved\n\tThe import com.alipay cannot be resolved\n\tThe type GoodixFingerPrintManager must implement the inherited abstract method FingerprintInterface.startIdentify2(IdentifyListener, int, int[], int)\n\tIdentifyListener cannot be resolved to a type\n\tIdentifyListener cannot be resolved to a type\n\tIdentifyListener cannot be resolved to a type\n\tAbstractFingerprint cannot be resolved to a variable\n\tIdentifyListener cannot be resolved to a type\n\tIdentifyListener cannot be resolved to a type\n\tAbstractFingerprint cannot be resolved to a variable\n\tIdentifyListener cannot be resolved to a type\n\tIdentifyListener cannot be resolved to a type\n\tAbstractFingerprint cannot be resolved to a variable\n\tIdentifyListener cannot be resolved to a type\n\tIdentifyListener cannot be resolved to a type\n\tAbstractFingerprint cannot be resolved to a variable\n\tIdentifyListener cannot be resolved to a type\n\tIdentifyListener cannot be resolved to a type\n\tAbstractFingerprint cannot be resolved to a variable\n\tIdentifyListener cannot be resolved to a type\n\tIdentifyListener cannot be resolved to a type\n\tAbstractFingerprint cannot be resolved to a variable\n\tIdentifyListener cannot be resolved to a type\n\tIdentifyListener cannot be resolved to a type\n\tAbstractFingerprint cannot be resolved to a variable\n\tIdentifyListener cannot be resolved to a type\n\tIdentifyListener cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private convertEvent(I)I
    .locals 2

    .prologue
    .line 610
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private removeCommonMessage()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private removeEnrollMessage()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private removeVerifyMessage()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private saveEnroll()I
    .locals 2

    .prologue
    .line 600
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private startAliayTimer(JI)V
    .locals 2

    .prologue
    .line 518
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancelEnrol()V
    .locals 2

    .prologue
    .line 441
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancelIdentify()V
    .locals 2

    .prologue
    .line 544
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteFingerData(I)I
    .locals 2

    .prologue
    .line 556
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIds()[I
    .locals 2

    .prologue
    .line 453
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNameById(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 857
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public runCheckerboardTest()I
    .locals 2

    .prologue
    .line 589
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public runSelfTest()I
    .locals 2

    .prologue
    .line 578
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCaptureCallback(Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;)V
    .locals 2

    .prologue
    .line 568
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFingerprintUnlock(Z)V
    .locals 2

    .prologue
    .line 879
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIdName(ILjava/lang/String;)Z
    .locals 2

    .prologue
    .line 868
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startEnrol(Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;I)I
    .locals 2

    .prologue
    .line 418
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startIdentify(Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;[I)I
    .locals 2

    .prologue
    .line 463
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startIdentify2(LIdentifyListener;I[II)I
    .locals 2

    .prologue
    .line 486
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tIdentifyListener cannot be resolved to a type\n\tIdentifyListener cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateTA(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 846
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
