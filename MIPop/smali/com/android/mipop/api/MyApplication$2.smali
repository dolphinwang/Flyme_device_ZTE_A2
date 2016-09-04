.class Lcom/android/mipop/api/MyApplication$2;
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
    .line 123
    iput-object p1, p0, Lcom/android/mipop/api/MyApplication$2;->this$0:Lcom/android/mipop/api/MyApplication;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 131
    iget-object v3, p0, Lcom/android/mipop/api/MyApplication$2;->this$0:Lcom/android/mipop/api/MyApplication;

    invoke-virtual {v3}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "MIPOP"

    iget-object v5, p0, Lcom/android/mipop/api/MyApplication$2;->this$0:Lcom/android/mipop/api/MyApplication;

    invoke-virtual {v5}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 135
    .local v0, "popshow":I
    iget-object v3, p0, Lcom/android/mipop/api/MyApplication$2;->this$0:Lcom/android/mipop/api/MyApplication;

    iget-object v4, p0, Lcom/android/mipop/api/MyApplication$2;->this$0:Lcom/android/mipop/api/MyApplication;

    invoke-virtual {v4}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "IsFullScreen"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :cond_0
    # invokes: Lcom/android/mipop/api/MyApplication;->fullScreenHideMipop(Z)V
    invoke-static {v3, v1}, Lcom/android/mipop/api/MyApplication;->access$300(Lcom/android/mipop/api/MyApplication;Z)V

    .line 137
    if-ne v2, v0, :cond_1

    .line 138
    iget-object v1, p0, Lcom/android/mipop/api/MyApplication$2;->this$0:Lcom/android/mipop/api/MyApplication;

    # invokes: Lcom/android/mipop/api/MyApplication;->fullScreenRemindDialog()V
    invoke-static {v1}, Lcom/android/mipop/api/MyApplication;->access$400(Lcom/android/mipop/api/MyApplication;)V

    .line 140
    :cond_1
    return-void
.end method
