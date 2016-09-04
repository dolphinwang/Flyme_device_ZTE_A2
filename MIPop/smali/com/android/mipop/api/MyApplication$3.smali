.class Lcom/android/mipop/api/MyApplication$3;
.super Landroid/database/ContentObserver;
.source "MyApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/api/MyApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/api/MyApplication;


# direct methods
.method constructor <init>(Lcom/android/mipop/api/MyApplication;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/mipop/api/MyApplication$3;->this$0:Lcom/android/mipop/api/MyApplication;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/mipop/api/MyApplication$3;->this$0:Lcom/android/mipop/api/MyApplication;

    const-string v2, "wxl homefirst change"

    # invokes: Lcom/android/mipop/api/MyApplication;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/mipop/api/MyApplication;->access$000(Lcom/android/mipop/api/MyApplication;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/android/mipop/api/MyApplication$3;->this$0:Lcom/android/mipop/api/MyApplication;

    invoke-virtual {v1}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "MIPOP"

    iget-object v3, p0, Lcom/android/mipop/api/MyApplication$3;->this$0:Lcom/android/mipop/api/MyApplication;

    invoke-virtual {v3}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 154
    .local v0, "mipopContent":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/mipop/api/MyApplication$3;->this$0:Lcom/android/mipop/api/MyApplication;

    invoke-virtual {v1}, Lcom/android/mipop/api/MyApplication;->showMipopLocal()V

    .line 157
    :cond_0
    return-void
.end method
