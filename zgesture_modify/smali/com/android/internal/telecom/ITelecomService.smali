.class public interface abstract Lcom/android/internal/telecom/ITelecomService;
.super Ljava/lang/Object;
.source "ITelecomService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ITelecomService$Stub;
    }
.end annotation


# virtual methods
.method public abstract acceptRingingCall()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
