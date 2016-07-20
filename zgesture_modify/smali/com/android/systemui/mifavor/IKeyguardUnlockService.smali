.class public interface abstract Lcom/android/systemui/mifavor/IKeyguardUnlockService;
.super Ljava/lang/Object;
.source "IKeyguardUnlockService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/mifavor/IKeyguardUnlockService$Stub;
    }
.end annotation


# virtual methods
.method public abstract goToUnlockScreen(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCallback(Lcom/android/systemui/mifavor/IKeyguardUnlockServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
