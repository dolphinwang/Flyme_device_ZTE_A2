.class public Lcom/android/fingerprint/FingerprintDelegate;
.super Ljava/lang/Object;
.source "FingerprintDelegate.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "goodix_fingerprint_service"

.field private static final TAG:Ljava/lang/String; = "FingerprintDelegate"

.field private static mFingerprintDelegate:Lcom/android/fingerprint/FingerprintDelegate;


# instance fields
.field private mFingerprintInterface:Lcom/android/fingerprint/FingerprintInterface;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tThe import com.alipay cannot be resolved\n\tThe import com.alipay cannot be resolved\n\tIdentifyListener cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized getFingerprintDelegate()Lcom/android/fingerprint/FingerprintDelegate;
    .locals 3

    .prologue
    .line 88
    const-class v1, Lcom/android/fingerprint/FingerprintDelegate;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/Error;

    const-string v2, "Unresolved compilation problem: \n"

    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initFingerprintInterface()Lcom/android/fingerprint/FingerprintInterface;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancelEnrol()V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancelIdentify()V
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteFingerData(I)I
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIdName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIds()[I
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public runCheckerboardTest()I
    .locals 2

    .prologue
    .line 190
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public runSelfTest()I
    .locals 2

    .prologue
    .line 180
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCaptureCallback(Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;)V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFingerprintUnlock(Z)V
    .locals 2

    .prologue
    .line 239
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIdName(ILjava/lang/String;)Z
    .locals 2

    .prologue
    .line 226
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startEnrol(Lcom/android/fingerprint/FingerprintInterface$EnrolCallback;I)I
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startIdentify(Lcom/android/fingerprint/FingerprintInterface$IdentifyCallback;[I)I
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startIdentify(LIdentifyListener;I[II)V
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tIdentifyListener cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateTA(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
