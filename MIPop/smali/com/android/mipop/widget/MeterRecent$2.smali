.class Lcom/android/mipop/widget/MeterRecent$2;
.super Ljava/lang/Object;
.source "MeterRecent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/widget/MeterRecent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/widget/MeterRecent;


# direct methods
.method constructor <init>(Lcom/android/mipop/widget/MeterRecent;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/mipop/widget/MeterRecent$2;->this$0:Lcom/android/mipop/widget/MeterRecent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/android/mipop/cropimage/TakePhoto;

    sget-object v1, Lcom/android/mipop/widget/MeterBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/mipop/cropimage/TakePhoto;-><init>(Landroid/content/Context;)V

    .line 70
    .local v0, "tp":Lcom/android/mipop/cropimage/TakePhoto;
    invoke-virtual {v0}, Lcom/android/mipop/cropimage/TakePhoto;->start()V

    .line 71
    invoke-static {}, Lcom/android/mipop/api/MyApplication;->getInstance()Lcom/android/mipop/api/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mipop/api/MyApplication;->showMipopForce()V

    .line 72
    new-instance v1, Lcom/android/mipop/widget/MeterRecent$2$1;

    invoke-direct {v1, p0}, Lcom/android/mipop/widget/MeterRecent$2$1;-><init>(Lcom/android/mipop/widget/MeterRecent$2;)V

    invoke-virtual {v1}, Lcom/android/mipop/widget/MeterRecent$2$1;->start()V

    .line 77
    return-void
.end method
