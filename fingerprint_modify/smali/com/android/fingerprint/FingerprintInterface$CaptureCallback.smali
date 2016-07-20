.class public interface abstract Lcom/android/fingerprint/FingerprintInterface$CaptureCallback;
.super Ljava/lang/Object;
.source "FingerprintInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fingerprint/FingerprintInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureCallback"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tThe import com.alipay cannot be resolved\n\tIdentifyListener cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract onCaptureCompleted()V
.end method

.method public abstract onCaptureFailed(I)V
.end method

.method public abstract onInput()V
.end method

.method public abstract onWaitingForInput()V
.end method
